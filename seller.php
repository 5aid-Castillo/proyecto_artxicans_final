<?php 
  include('global/conexion.php');
  include('templates/cabecera.php');
  if(@!$_SESSION['roll']){
    echo("<script>location.href = './index.php';</script>");
  } 
?>

<section class="seller_true">
    <h2>Bienvenido, estas listo para vender?</h2>
    <div class="t-p-seller"> 
        <style>.t-p-seller{
  margin: 2rem auto;
} </style>
    <table class="table">
  <thead>
    <tr>
      <th scope="col"></th>
      <th scope="col">Productos</th>
      <th scope="col">Editar</th>
      <th scope="col">Eliminar</th>
    </tr>
  </thead>
  <tbody>
    <!-- Si tiene productos mostrar esto -->
    <tr>
      <th scope="row"><img src="./assets/products/alebrije1.jpg" alt="product" style="width:30px;heigth:30px"></th>
      <td>Dragon grande alebrije</td>
      <td class="edit-button"><a href="#" ><i class='bx bxs-edit-alt bx-sm'></i></a></td>
      <td class="delete-button"><a href="#"><i class='bx bxs-x-circle bx-sm'></i></a></td>
    </tr>
    
    <!-- Else {} -->
    <div class="alert alert-warning" role="alert">
  Aun no tienes un producto activo presiona <a href="#" class="alert-link">Agregar producto</a> para registrar alguno de tus productos.
</div>
    
  </tbody>
</table>
</div>
</section>


<?php 
  include('templates/pie.php');
?>