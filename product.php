<?php 
    include('global/conexion.php');
    include('templates/cabecera.php');
?>

<?php
    if(isset($_GET['id_product'])){
        $query = $conn ->query("SELECT * FROM products WHERE id_product = ".$_GET['id_product']) or die($conn->error);

        if(mysqli_num_rows($query) > 0){
            $row = mysqli_fetch_row($query);
        }else{
            echo("<script>location.href = 'index.php';</script>");
        }

    }else{
        echo("<script>location.href = 'index.php';</script>");
    }
?>
    <section class="product container">
        <div class="detailsContainer">
            <img src="assets/products/<?php echo $row[2];?>" alt="<?php echo $row[1];?>" class="col prodImage">
            <div class="col prodDetails">
                <p class="firsItem"><strong style="font-size:1.5rem; align-text:center;"><?php echo $row[1];?></strong></p>
                <p><strong>Descripcion:</strong> &nbsp;<?php echo $row[4];?></p>
                <p class="price"><strong>Precio:</strong> &nbsp;$<?php echo $row[3];?></p>
                <p><strong>Categoria:</strong> &nbsp;<?php echo $row[5];?></p>
                <p><strong>Vendido por:</strong> &nbsp; <a href="">Said</a></p>
               <!--  <p><strong>Vendido por:</strong> &nbsp;<a href="">Said<a></p> -->
                

                <div class="choose">
                    <button class="button-cart" onclick="location.href=''">Agregar &nbsp;<img src="./assets/utilities/cart.png" class="icon2"alt=""></button>
                    <button class="button-buy" onclick="location.href='checkout.php'">Comprar</button>
                </div> 
            </div>
        </div>
        
    </section>

 


<?php 
    include('templates/pie.php');
?>