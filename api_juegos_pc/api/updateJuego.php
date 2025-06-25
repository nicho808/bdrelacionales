<?php
    header("Content-Type: application/json");

    if ($_SERVER['REQUEST_METHOD'] !== 'PUT'){
        http_response_code( 405);
        echo json_encode(['error' => 'Solo metodo PUT es permitido']);
    }

    require 'conexion.php';

    $input = json_decode(file_get_contents('php://input'), true);
    $id = intval($input["id"]);
    $nombre = $conn ->real_escape_string($input["nombre"]);
    $genero = $conn ->real_escape_string($input['genero']);
    $descripcion = $conn ->real_escape_string($input["descripcion"]);
    $desarollador = $conn ->real_escape_string($input['desarollador']);
    

    $query = "UPDATE juegos_pc SET nombre = ?,  genero = ?, descripcion = ?,  desarollador = ?, id = ?";

    $st = $conn -> prepare($query);

    if (!$st) {
        http_response_code(500);
        echo json_encode(["error"=> "Error en la consulta" . $conn->error]);
        exit();
    }

    $st->bind_param("ssssi", $nombre, $genero, $descripcion, $desarollador, $id); 

    if ($st->execute()) {
        if ($st->affected_rows > 0) {
            echo json_encode(["message" => "Juego actualizada correctamente"]);
        }else{
            http_response_code(404);
            echo json_encode(["error"=> "No se encontro el juego con id: . $id"]);
        }
    }else{
        http_response_code(500);
        echo json_encode(["error"=> "Error al ejecutar" . $st->error]);
    }
    $st->close();
    $conn->close();

?>