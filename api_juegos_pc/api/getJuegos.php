<?php
    header("Content-Type: application/json");


    require 'conexion.php';

    $sql = "SELECT * FROM juegos_pc";
    $result = $conn->query($sql);

    $juegos_pc = [];

    if($result && $result->num_rows > 0){
        while($row = $result->fetch_assoc()){
            $juegos_pc[] = $row;
        }
    }

    $conn->close();

    header("Content-Type: application/json");
    echo json_encode($juegos_pc);
?>