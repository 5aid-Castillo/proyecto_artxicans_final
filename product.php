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
    <!-- <section class="product container">
        <div class="detailsContainer">
            <img src="assets/products/<?php echo $row[2];?>" alt="<?php echo $row[1];?>" class="col prodImage">
            <div class="col prodDetails">
                <p class="firsItem"><strong style="font-size:1.5rem; align-text:center;"><?php echo $row[1];?></strong></p>
                <p><strong>Descripcion:</strong> &nbsp;<?php echo $row[4];?></p>
                <p class="price"><strong>Precio:</strong> &nbsp;$<?php echo $row[3];?></p>
                <p><strong>Categoria:</strong> &nbsp;<?php echo $row[5];?></p>
                <p><strong>Vendido por:</strong> &nbsp; <a href="">Said</a></p>
               
                

                <div class="choose">
                    <button class="button-cart" onclick="location.href=''">Agregar &nbsp;<img src="./assets/utilities/cart.png" class="icon2"alt=""></button>
                    <button class="button-buy" onclick="location.href='checkout.php'">Comprar</button>
                </div> 
            </div>
        </div>
        
    </section> -->
    <div class="card mb-3 mx-auto card-product" style="width: 85vw;margin-top:2rem">
  <div class="row g-0">
    <div class="col-md-4">
    <div id="carouselExampleIndicators" class="carousel slide">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="./assets/products/<?php echo $row[2]?>" class="d-block w-100 object-fit-cover " style="height:70vh" alt="...">
    </div>
    <div class="carousel-item">
      <img src="./assets/products/<?php echo $row[7]?>" class="d-block w-100 object-fit-cover" style="height:70vh" alt="...">
    </div>
    <div class="carousel-item">
      <img src="./assets/products/<?php echo $row[8]?>" class="d-block w-100 object-fit-cover " style="height:70vh" alt="...">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h3 class="card-title"><?php echo $row[1]?></h3>
        <p class=" card-text price">$<?php echo $row[3];?></p>
        <p class="card-text"><small class="text-body-secondary">Vendido por:&nbsp;<strong>Said</strong></small></p>
        <p class="card-text"><?php echo $row[4]?></p>
        <p class="card-text stars-pointer">Calificación: 
          <i class="bx bxs-star bx-1"></i>
          <i class="bx bxs-star"></i>
          <i class="bx bxs-star"></i>
          <i class="bx bxs-star"></i>
          <i class="bx bxs-star"></i>
          (200)
        </p>
        <style>.stars-pointer .bx-1{color:orange;}</style>
        <div class="choose">
        <button type="button" class="btn btn-info" onclick="location.href=''">Agregar <i class="bx bxs-cart"></i></button>
        <button type="button" class="btn btn-success" onclick="location.href=''">Comprar ahora</button>
       
        </div>
      </div>
    </div>
  </div>
</div>


   <form class="form-stars">
  <p class="clasificacion">
    <input id="radio1" type="radio" name="estrellas" value="5"><!--
    --><label for="radio1">★</label><!--
    --><input id="radio2" type="radio" name="estrellas" value="4"><!--
    --><label for="radio2">★</label><!--
    --><input id="radio3" type="radio" name="estrellas" value="3"><!--
    --><label for="radio3">★</label><!--
    --><input id="radio4" type="radio" name="estrellas" value="2"><!--
    --><label for="radio4">★</label><!--
    --><input id="radio5" type="radio" name="estrellas" value="1"><!--
    --><label for="radio5">★</label>
  </p>
</form>
 


<?php 
    include('templates/pie.php');
?>