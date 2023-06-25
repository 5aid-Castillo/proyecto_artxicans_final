<?php 
    include('../global/conexion.php');
    session_start();

    if(isset($_POST['send-comment'])){
        $seller = $_GET['id_seller'];
        $id_user = $_SESSION['id'];
        $stars = $_POST['estrellas'];
        $comment = $_POST['comment'];

        mysqli_query($conn,"INSERT INTO profile_comments VALUES(NULL,'$stars','$comment','$seller','$id_user')");
        echo("<script>location.href = '../profile-seller.php?seller_data=".$seller."';</script>");
    
    }

?>