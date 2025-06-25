<?php
    header("Content-Type: application/json");

    if($_SERVER['REQUEST_METHOD'] !== 'DELETE'){
        http_response_code(405);
        echo json_encode(['error' => 'Solo metodo DELETE es permitido']);
    }

    require 'conexion.php';

    $input = json_decode(file_get_contents('php://input'), true);   
    $id = intval($input["id"]);

    $query = "DELETE FROM juegos_pc WHERE id =?";

    $st = $conn->prepare($query);
    
    if(!$st){
        http_response_code(500);
        echo json_encode(["error" => "Error en la consulta" - $conn->error]);
        exit();
    }
    
    $st->bind_param("i", $id);
    $st->execute();

    if($st->affected_rows > 0){
        echo json_encode(["message" => "Juego eliminado correctamente"]);
    }else{
        http_response_code(404);
        echo json_encode(["error" => "No se encontro el Juego con id: $id"]);
    }
    $st->close();
?>