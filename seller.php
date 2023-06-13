<?php 
  include('global/conexion.php');
  include('templates/cabecera.php');
  if(@!$_SESSION['roll']){
    echo("<script>location.href = './index.php';</script>");
  } 
?>

<section class="seller_true">
    <h2>Bienvenido a la sección de vender</h2>
    <div class="seller-buttons container-buttons-seller">
    
    <button type="button" class="btn btn-info choose-btn" onclick="location.href='./productList.php'">Mis productos</button>
    <button type="button" class="btn btn-info choose-btn" onclick="location.href=''">Mis pedidos</button>
    <button type="button" class="btn btn-primary choose-btn" onclick="location.href='./profile-seller.php'">Mi perfil</button>
    <button type="button" class="btn btn-success choose-btn" onclick="location.href=''">Mi cuenta de pagos</button>

    </div>
   
</section>


<?php 
  include('templates/pie.php');
?>