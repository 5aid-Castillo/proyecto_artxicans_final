<?php 
    include('../global/conexion.php');
    session_start();
    if(@!$_SESSION['roll']){
        echo("<script>location.href = '../index.php';</script>");
      } 
      
   
      
      $id_product = $_GET['id'];
      
       mysqli_query($conn,"DELETE FROM products WHERE id_product = '$id_product'");
      mysqli_query($conn,"DELETE FROM stars WHERE id_product = $id_product"); 
      echo("<script>location.href = '../productList.php';</script>");  
      
?> 