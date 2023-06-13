<?php 
/* 
    if(isset($_POST['accept-seller'])){

        echo("<script>location.href = '../index.php';</script>");
    } */
    if(isset($_POST['reject-seller'])){
        
        mysqli_query($conn,"DELETE FROM reg_sellers WHERE IDregseller = $id_v");
        
    }
?>