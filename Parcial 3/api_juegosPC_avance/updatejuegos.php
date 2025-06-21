<?php
    header("Content-Type: application/json");

    if ($_SERVER['REQUEST_METHOD'] !== 'PUT'){
        http_response_code( 405);
        echo json_encode(['error' => 'Solo metodo PUT es permitido']);
    }

    //conectar a la BD sakila
    require 'juegos.php';

    $data = json_decode(file_get_contents('php://input'), true);
    $juegos_id = intval($input["juegos_id"]);
    $titulo = $conn ->real_escape_string($input["titulo"]);
    $descripcion = $conn ->real_escape_string($input["descripcion"]);

    $query = "UPDATE juegos SET titulo = ?, descripcion = ?, last_update = NOW() WHERE juegos_id = ?";

    $st = $conn -> prepare($query);

    if (!$st) {
        http_response_code(500);
        echo json_encode(["error"=> "Error en la consulta" . $conn->error]);
        exit();
    }

    $st->bind_param("ssi", $titulo, $descripcion, $juegos_id); 

    if ($st->execute()) {
        if ($st->affected_rows > 0) {
            echo json_encode(["message" => "juegos actualizado correctamente"]);
        }else{
            http_response_code(404);
            echo json_encode(["error"=> "No se encontro el juegos con id: . $juegos_id"]);
        }
    }else{
        http_response_code(500);
        echo json_encode(["error"=> "Error al ejecutar" . $st->error]);
    }
    $st->close();
    $conn->close();

?>