<?php 
    include('./global/conexion.php');
    include('./templates/cabecera.php');
    if(@!$_SESSION['roll']){
        echo("<script>location.href = './index.php';</script>");
    } 
    $id_user = $_SESSION['id'];
?>

    <section class="payaccount">
        <h2>Mi cuenta de pago</h2>
        <h5>Ingresa tu Token de pago PayPal, para que puedas recibir los pagos de tus pedidos, ingresar este dato es requisito para poder subir tus productos.</h5>
        <form class="form-account">
          <div class="mb-3">
            <label for="exampleInputEmail1" class="form-label">Ingresa tu Token de PayPal</label>
            <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
            <div id="emailHelp" class="form-text">Para saber cual es tu Token de pago, observa este tutorial: .</div>
          </div>
   <div class="btns-save">
  <a class="btn btn-secondary" href='./seller.php'>Regresar</a>
  <button type="submit" class="btn btn-success">Guardar</button>
    <div>
</form>
    
    </section>

<?php 
    include('./templates/pie.php');
?>