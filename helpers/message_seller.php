<?php 
    include('../global/conexion.php');
    session_start();
    $user = base64_decode($_GET['chat']); //7
    if($_POST['sendMessage']){
        $id_user = $_SESSION['id']; // 5
        $message = $_POST['message'];
        
            mysqli_query($conn,"INSERT INTO chats VALUES(NULL,'$message','$id_user','$user','Seller')");
            
           echo("<script>location.href = '../toChat-s.php?id_chat=".base64_encode($user)."#answer';</script>");         
        
    }
?>