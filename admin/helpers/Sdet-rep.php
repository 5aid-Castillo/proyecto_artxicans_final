<?php
    $id_reporte = $_GET['report'];
    
?>

<div class="table-data">
				<div class="order">
					<div class="head">
						<h3>Reporte</h3>
						
					</div>
                <div class="solicitud-vend">

				<?php 
                    # Obtener el reporte que se selecciono en la pagina previa.
					$query = mysqli_query($conn,"SELECT * FROM reports WHERE id_report = $id_reporte");
					$data = mysqli_fetch_array($query);
                    $usuario = $data['ID_registro'];
                    $tipo = $data['type'];
                    # Obtener la informacion de la tabla registro si coincide con el ID de quien hizo el reporte
                    $query2 = mysqli_query($conn,"SELECT * FROM registro WHERE ID = $usuario");
                    $data2 = mysqli_fetch_array($query2);
                    
                    #Obtener informacion de los comentarios
                    $star=$data['id_star'];
                    $getStars = mysqli_query($conn,"SELECT * FROM stars WHERE id_star = $star");
                    $data_star = mysqli_fetch_array($getStars);
				?>
                    <h2 class="title-report">Tipo de reporte:&nbsp;<strong><?php echo $tipo?></strong></h2>
                    <p class="data-report">El usuario&nbsp;<strong ><?php echo $data2['Nombre']?></strong> hizo un reporte.</p>
                    
                    <p>El usuario &nbsp;reporta 
                        <?php 
                            switch($tipo){
                            case 'Comentario': 
                                    echo "<strong style='color:#d9534f'>Un comentario</strong>&nbsp;";
                                    echo "y su información del comentario reportado:<br><center><strong>Comentario:</strong>&nbsp;".$data_star['comment']."</center>";
                            break;
                            case 'Producto': echo "<strong style='color:#d9534f'>Un producto</strong>";
                            break;  
                            case 'Comentario Perfil': echo "<strong style='color:#d9534f'>Un Comentario de un perfil de vendedor</strong>";
                            break;
                            case 'Vendedor': echo "<strong style='color:#d9534f'>Un vendedor</strong>";
                            break;
                            case 'Comprador': echo "<strong style='color:#d9534f'>Un comprador</stron>";
                            }

                            
                         ?> 

                 
                    </p>
                    <?php if(!empty($data['report'])){?>
                    <p>
                    Descripción de usuario del motivo de su reporte:
                        <?php echo $data['report']?>
                    </p>
                    <?php }?>
                    <p class="note-report">-Al rechazar<p>
                    <p class="note-report">-Al Aceptar el reporte, se eliminara todo comentario reportado y en caso de los vendedores, compradores y productos reportados podras eliminarlos <p>
                    <form method="POST">
                    <div class="report-buttons">
                        <input class="btn-choose decline" type="submit" name="Rechazar" value="Rechazar">
					    <input class="btn-choose accept" type="submit" name="Aceptar" value="Aceptar">
                    </div>
                    </form>
				
                </div>
				</div>