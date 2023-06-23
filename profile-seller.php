<?php 
    include('./templates/cabecera.php');
    include('./global/conexion.php');
    # Obtenemos el id del vendedor
    $user = $_GET['seller_data'];
    # Hacemos consulta para obtener los datos que se encuentran en la tabla reg_sellers
    $query = mysqli_query($conn,"SELECT * FROM reg_sellers WHERE ID = $user");
    $data = mysqli_fetch_array($query);
    
?>

    <section class="profile-data">
        
        <div class="profile-seller">
        <div class="overlay-seller"></div>
        <img src="./assets/material/mexican.jpg" alt="Mexican image">
        <div class="profileContent container">
            <div class="profileText">
                <h1 class="title-profile">Perfil de <strong><?php echo $data['nickname']?></strong></h1>
            </div>
        </div>
    </div>
    <!-- Datos del vendedor -->
    <div class="inf0-seller">
        <p><strong>Vendedor:</strong>&nbsp;<?php echo $data['nickname']?></p>        
        <p><strong>Ubicación:</strong></p>        
        <p><strong>Número de teléfono:</strong>+<?php echo $data['lada'];?>&nbsp;<?php echo $data['telefono']?></p>        
         
    </div>
    <!-- Boton de chat  -->
    <div class="chat">
            <p><strong>Contactar:</strong>&nbsp;&nbsp;<button type="button" class="btn btn-info position-relative">
        Abrir chat
        <span class="position-absolute top-0 start-100 translate-middle p-2 bg-danger border border-light rounded-circle">
            <span class="visually-hidden">New alerts</span>
        </span>
        </button></p>   
    </div>
    
        <h2>Acerca de vendedor </h2>
        <h2>Informacion de sus artesanias </h2>
        
    <div class="products-seller">
        <h2 align="center">Productos del vendedor</h2>
        <div class='mainContent grid' id="mainContent">
       <?php
        # Consulta para obtener todos los productos del vendedor;
        $query3 = mysqli_query($conn,"SELECT * FROM products WHERE ID = $user");
        while($data3 = mysqli_fetch_array($query3)){
       ?>  
       
       <div class="single-product">
        <a href="product.php?id_product=<?php echo $data3['id_product'];?>" class='referencia'>
             <div class='imgDiv'>
                <img src="assets/products/<?php echo $data3['image1'];?>"  alt="<?php echo $data3['product']?>">
            </div>
            <div class="card-info">
                <span class="product-title"><?php echo $data3['product'];?></span>
                <span class="price">$<?php echo $data3['price'];?></span>
           
               
            </div>
           </a>
        </div>
    <?php }?>
        </div>
    </div><!-- end products-seller -->
        <h2>Puntuacion</h2>
        
        
    </section>
    



<?php 
    include('./templates/pie.php');
?>