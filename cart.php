<?php 
    include('./global/conexion.php');
    include('./templates/cabecera.php');
?>

    <section class="cart">
        <div class="table-responsive-lg">
            <table class="table table-striped mt-5 p-2">
                <thead class="table-dark">
                    <tr>
                        <th scope="col"></th>
                        <th scope="col">Producto</th>
                        <th scope="col">Cantidad</th>
                        <th scope="col">Subtotal</th>
                        <th scope="col">Eliminar</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td scope="row"><img src="" alt="" style="width:35px;height:35px"></td>
                        <td scope="row"></td>
                        <td scope="row"></td>
                        <td scope="row"></td>
                        <td scope="row">X</td>
                    </tr>
                </tbody>
            </table>
        </div>
        
        <button class="back" onclick="location.href='#'">Regresar</button>
        <button class="go-buy" onclick="location.href='#'">Realizar compra</button>


    </section>

<?php 
    include('./templates/pie.php');
?>