<?php
    header("Content-Type: application/json");
    header("Acess-Control-Allow-Origin: *");

    $usuarios=[
        ["id" => 1, "nombre" => "Paolo Valdez", "correo" => "paolo@gmail.com"],
        ["id" => 1, "nombre" => "Gibran Loaiza", "correo" => "gibran@gmail.com"],
        ["id" => 1, "nombre" => "Bayron Estrada", "correo" => "bayron@gmail.com"],
    ];

    echo json_encode($usuarios);

?>