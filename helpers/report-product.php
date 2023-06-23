<?php 
    include('../global/conexion.php');
    session_start();
    if(@!$_SESSION['user']){
        echo("<script>location.href = '../index.php';</script>");
    } 
    $id_user = $_SESSION['id'];
    $product = $_GET['id_p'];
    $answer = $_POST['answer'];
    mysqli_query($conn,"INSERT INTO reports VALUES(NULL,'$answer','Producto','$id_user','$product',NULL)");
    echo("<script>location.href = '../product.php?id_product=".$product."';</script>");


?>