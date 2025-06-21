<?php
    header("Content-Type: application/json");

    if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
        http_response_code(405);
        echo json_encode(['error' => 'Solo metodo POST es permitido']);
        }

        //conectar a la BD sakila

        require 'juegos_pc.php';

        $data = json_decode(file_get_contents('php://input'), true);
        $titulo = $data['titulo'];
        $descripcion = $data['descripcion'];

        $query = $conn->prepare("INSERT INTO juegos(titulo, descripcion) VALUES (?, ?)");

        if (!$query){
            http_response_code(500);
            echo json_encode(["error" => "Ocurrio un error"]);
            exit;
        }

        $query->bind_param("ss", $titulo, $descripcion);

        if ($query->execute()){
            echo json_encode(["mensaje" => "juegos insertado correctamente", "juegos_id" => $query->insert_id]);
        }else{
            http_response_code(500);
            echo json_encode(["error" => "Fallo la inserción", $query->error]);
        }

        $query->close();
        $conn->close();
?>