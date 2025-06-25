<?php
    header("Content-Type: application/json");

    if($_SERVER['REQUEST_METHOD'] !== 'POST'){
        http_response_code(405);
        echo json_encode(['error' => 'Solo metodo POST es permitido']);
    }

    require 'conexion.php';

    $data = json_decode(file_get_contents('php://input'), true);
    $nombre = $data['nombre']; 
    $genero = $data['genero']; 
    $descripcion = $data['descripcion']; 
    $desarollador = $data['desarollador'];


    $query = $conn->prepare("INSERT INTO juegos_pc (nombre, genero, descripcion, desarollador) VALUES (?, ?, ?, ?)");

    if(!$query){
        http_response_code(500);
        echo json_encode(["error" => "Ocurrio un error"]);
        exit;
    }

    $query->bind_param("ssss", $nombre, $genero, $descripcion, $desarollador);

    if($query->execute()){
        echo json_encode(["mensaje" => "Juego insertado correctamente", "id" => $query->insert_id]);
    } else{
        http_response_code(500);
        echo json_encode(["error" => "Fallo la insercion" . $query->error]);
    }
    $query->close();
    $conn->close();

?>