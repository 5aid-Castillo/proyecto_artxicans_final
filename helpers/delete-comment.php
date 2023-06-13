<?php 
    include('../global/conexion.php');
    session_start();
    if(isset($_GET['id_com'])){
        $comment = $_GET['id_com'];
        $query = mysqli_query($conn,"SELECT * FROM products INNER JOIN stars ON products.id_product = stars.id_product ");
        $data = mysqli_fetch_array($query);
        $res = $data['id_product']; 
        mysqli_query($conn,"DELETE FROM stars WHERE id_star = $comment");
        $query2 = mysqli_query($conn,"SELECT * FROM products WHERE id_product = $res");
        $data2= mysqli_fetch_array($query2);
        $res2 = $data2['id_product'];
        echo("<script>location.href = '../product.php?id_product=".$res2."';</script>");  
    }else{
        echo("<script>location.href = '../index.php';</script>");  
    }  
?>