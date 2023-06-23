<?php 

include('../global/conexion.php');
session_start();
if(@!$_SESSION['roll']){
    echo("<script>location.href = '../index.php';</script>");
  } 
        $id_product = $_GET['id_product'];
        $producto = $_POST['producto'];
        $precio = $_POST['precio'];
        $descripcion = $_POST['descripcion'];
        $cantidad = $_POST['cantidad'];
        $categoria = $_POST['categoria'];
    

        mysqli_query($conn,"UPDATE products SET
            product = '$producto',
            price = '$precio',
            description = '$descripcion',
            category = '$categoria',
            stock = '$cantidad' 
            WHERE id_product = $id_product");

        
        if(empty($_FILES['imagen1']['name'])){
           
        }else{
            $imagen1 = $_FILES['imagen1']['name'];
            $sql = "UPDATE products SET
            image1 = '$imagen1' WHERE id_product = $id_product";
       
            move_uploaded_file($_FILES['imagen1']['tmp_name'], "../assets/products/".$imagen1."");
            mysqli_query($conn, $sql);
        }
        if(empty($_FILES['imagen2']['name'])){
                
        }else{
            $imagen2 = $_FILES['imagen2']['name'];
            $sql2 = "UPDATE products SET
            image2 = '$imagen2' WHERE id_product = $id_product";
       
            move_uploaded_file($_FILES['imagen2']['tmp_name'], "../assets/products/".$imagen2."");
            mysqli_query($conn, $sql2);
        }
        if(empty($_FILES['imagen3']['name'])){
           
        }else{
            $imagen3 = $_FILES['imagen3']['name'];
            $sql3 = "UPDATE products SET
            image3 = '$imagen3' WHERE id_product = $id_product";
            
            move_uploaded_file($_FILES['imagen3']['tmp_name'], "../assets/products/".$imagen3."");
            mysqli_query($conn, $sql3);
        }  
         echo("<script>location.href = '../productList.php';</script>"); 
    
     
?>