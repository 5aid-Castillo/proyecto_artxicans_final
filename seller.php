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
    
    <button type="button" class="btn btn-info choose-btn" onclick="location.href='./productList.php'">Mis productos&nbsp;<i class='bx bx-package'></i></button>
    <button type="button" class="btn btn-info choose-btn" onclick="location.href=''">Mis pedidos&nbsp;<i class='bx bx-shopping-bag'></i></button>
    <button type="button" class="btn btn-primary choose-btn" onclick="location.href='./profile-seller.php'">Mi perfil&nbsp;<i class='bx bx-user'></i></button>
    <button type="button" class="btn btn-success choose-btn" onclick="location.href=''">Mi cuenta de pagos&nbsp;<i class='bx bxs-credit-card'></i></button>

    </div>
   
</section>


<?php 
  include('templates/pie.php');
?>