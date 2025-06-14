<?php
    $host = '192.168.1.12';
    $user = 'sakila_user?';
    $pass = 'sakila';
    $dbname = 'sakila';
    
    //crear conexion
    $conn = new mysqli($host, $user, $pass, $dbname);

    //verificarconexion
    if($conn->connect_error){
        http_response_code(500);
        echo json_encode(['error' => 'Error de conexion: ' . $conn->connect_error]);
    }