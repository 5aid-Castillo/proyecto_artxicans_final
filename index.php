<?php
  
  include 'global/conexion.php';
  include 'templates/cabecera.php';
?>

    
    <!-- Modal user-mobile -->
    <div class="modal fade" id="staticBackdrop3" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
          <div class="modal-header">
            <h1 class="modal-title fs-5" id="staticBackdropLabel">Mi Cuenta</h1>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
           <div class="mobs">
            <button class="btn-mob-1" onclick="location.href='login.php'">Inicio de sesion</button>
            <button class="btn-mob-2" onclick="location.href='signup.php'">Regístrate</button>
          </div>
          </div>
          
        </div>
      </div>
    </div>
    <!-- Aqui empieza el body -->

    <!-- SearchBox -->
    <form action="search.php" class="searchContainer" method="GET" >
      <div class="searchBox">
        <input type="search" name="fetch" class="searchInput mb-btn" placeholder="Buscar" />
        <!-- <button class="material-symbols-outlined searchButton">search</button>-->
          <button class="searchButton"><svg xmlns="http://www.w3.org/2000/svg" width="36" height="18" fill="#6669c5" style="font-size:bold;" class="bi bi-search" viewBox="0 0 16 16">
  <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
</svg> </button>
      </div>
      <div class="user">
        <a data-bs-toggle="modal" data-bs-target="#staticBackdrop3">
          <img src="./assets/utilities/usuario.png" alt="icon" class="icon" />
        </a>
      </div>
    </form>

<!-- Choose -->
<div class="d-grid gap-2 d-md-flex justify-content-start cat">
  <button class="btn btn-secondary me-md-2 mb-2 mt-5 categories-btn" type="button" onclick="location.href='categories.php'"><img src="./assets/utilities/categorias.png" class="categories-icon" alt="categories-icon"> Ir a categorias</button>
  
</div>

   <!-- LIST OF PRODUCTS -->


   <section class='container-products'>
  
   <div class='mainContent grid'>    
   <?php 
        $result = $conn ->query("SELECT * FROM products ORDER BY rand() LIMIT 12") or die ($conn->error);
        while($row = mysqli_fetch_array($result)){
  ?>    

    
        <div class="single-product">
        <a href="product.php?id_product=<?php echo $row['id_product'];?>" class='referencia'>
             <div class='imgDiv'>
                <img src="assets/products/<?php echo $row['image'];?>"  alt="<?php echo $row['product']?>">
            </div>
            <div class="card-info">
                <span class="product-title"><?php echo $row['product'];?></span>
                <span class="price">$<?php echo $row['price'];?></span>
                <span class="shipping">Más envio de importación</span>
                <!--  <div className="">
                            <span>Estrellas</span>
                            <span>120</span>
                        </div>
                        <span className="">Vendido por:</span><span className="">Said Castillo</span> 
            </div> -->
            </div>
           </a>
        </div>
        <?php }?>
      </div>
    </section>
    
<!--  -->

   
<?php 
  include('templates/pie.php');
?>