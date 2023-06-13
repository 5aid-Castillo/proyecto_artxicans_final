<?php 
    include('./templates/cabecera.php');
    include('./global/conexion.php');  
    $id_user = $_SESSION['id'];
    $query = mysqli_query($conn,"SELECT * FROM products WHERE ID = $id_user");
     
?>
<div class="t-p-seller"> 
 
<?php 
    if($query->num_rows > 0){

?>
<div class="d-grid gap-2 col-10 mx-auto">
  <button class="btn btn-info" type="button">Agregar nuevo producto</button>
  
</div>
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
  <?php 
    while($row = mysqli_fetch_array($query)){
  ?>
    <tr>
      <th scope="row"><img src="./assets/products/<?php echo $row['image']?>" alt="product" style="width:30px;heigth:30px"></th>
      <td><?php echo $row['product']?></td>
      <td class="edit-button"><a href="#" ><i class='bx bxs-edit-alt bx-sm'></i></a></td>
      <td class="delete-button"><a href="#"><i class='bx bxs-x-circle bx-sm'></i></a></td>
    </tr>
    <?php }?>
    
  </tbody>
</table>

<?php }else{?>


<div class="alert alert-warning" role="alert">
  Aun no tienes un producto activo presiona <a href="#" class="alert-link">Agregar producto</a> para registrar alguno de tus productos.
</div>
<?php }?>
   
</div>

<?php 
    include('./templates/pie.php');
?>