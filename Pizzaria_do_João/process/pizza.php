<?php

    include_once("conn.php");
    
    $method = $_SERVER["REQUEST_METHOD"];
    
    // Resgate dos dados, montagem do pedido
    if($method === "GET"){

       $bordasQuery = $conn->query("SELECT * FROM bordas;");

       $bordas = $bordasQuery->fetchAll();

       $massasQuery = $conn->query("SELECT * FROM massas;");

       $massas = $massasQuery->fetchAll();

       $saboresQuery = $conn->query("SELECT * FROM sabores;");

       $sabores = $saboresQuery->fetchAll();
    
    // Criação do pedido   
    }else if($method === "POST"){

    }
?>