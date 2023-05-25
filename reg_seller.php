<?php  
  include 'global/conexion.php';
  include 'templates/cabecera.php';
  if(@!$_SESSION['user']){
    echo("<script>location.href = 'index.php';</script>");
  }
?>
  
<section class="reg_seller">
  <form action="" method="post" class="form-reg" enctype="multipart/form-data">

      <h1 class="text-center">Registro de vendedor</h1>
  
         <?php
          include('./global/regseller.php');
         ?>
  

      <!-- ProgressBar -->
      
      <div class="progressbar">
        <div class="progress" id="progress"></div>
        
        <div
          class="progress-step progress-step-active"
          data-title="Personal"
        ></div>
        <div class="progress-step" data-title="Contacto"></div>
        <div class="progress-step" data-title="Ubicacion"></div>
        
      </div>


      <!-- Step 1 -->
      <div class="form-step form-step-active">
        <div class="input-group">
         <label for="nombre">Nombre:</label>
         <input type="text" name="nombre" id="nombre">
      </div>
      <div class="input-group">
        <label for="apellidos">Apellidos:</label>
        <input type="text" name="apellidos" id="apellidos">
      </div>
      <div class="input-group">
        <label for="nickname">Identificador:</label>
        <input type="text" name="nickname" id="nickname" >
        <small>*Introduce un nombre con el que quieras que te identifiquen los compradores.</small>
      </div>
      <div>
        <a href="#" class="btn-rgs btn-next width-50 ml-auto">Siguiente</a>
      </div>
    </div>

      <!-- Step 2 -->
      <div class="form-step">
        <div class="input-group">
          <label for="telefono">Lada</label>
          <input type="text" name="lada" id="telefono" />
        </div>
        <div class="input-group">
          <label for="telefono">Número de teléfono</label>
          <input type="text" name="telefono" id="telefono" />
        </div>
        <div class="input-group">
          <label for="telefono2">Número de teléfono de referencia</label>
          <input type="text" name="telefono2" id="telefono2" />
        </div>
        <div class="btns-group">
          <a href="#" class="btn-rgs btn-prev">Regresar</a>
          <a href="#" class="btn-rgs btn-next">Siguiente</a>
        </div>
      </div>

      <!-- Step 3 -->
      <div class="form-step">
      <div class="input-group">
        <label for="domicilio">Domicilio:</label>
        <input type="text" name="domicilio" id="domicilio">
      </div>
      <div class="input-group">
         <label for="postal">Código postal:</label>
         <input type="text" name="postal" id="postal">
      </div>
      <div class="input-group">
        <label for="identificador">Identificación oficial:</label>
        <input style="color:red" type="file" name="file" >
        <small>*Adjuntar imagen escaneada de tu identificación oficial (ejemplo: INE, pasaporte)</small>
      </div>
      
      <div class="btns-group">
        <a href="#" class="btn-rgs btn-prev ">Regresar</a>
        <input type="submit" value="Enviar" name="send-reg" class="btn-send btn-rgs"/>
      </div>
    </div>
  </form>
</section>    
 
<?php
  include('templates/pie.php');
?> 