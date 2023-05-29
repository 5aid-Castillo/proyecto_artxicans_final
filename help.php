<?php
    include('./global/conexion.php');
    include('./templates/cabecera.php');
?>

<section class="help">
    <h2>¿En que podemos ayudarte? </h2>
    
    <p class="title-help">Compras</p>
    <ul class="compras-help">
    
        <li>Reportar vendedor o producto <i class='bx bxs-chevron-right'> </i></li>
        <li>Administrar y cancelar compras <i class='bx bxs-chevron-right'> </i></li>
        <li>Preguntas frecuentes sobre compras <i class='bx bxs-chevron-right'> </i></li>   
    </ul>

    <!-- esto vendra si es vendedor -->
    <p class="title-help">Ventas</p>
    <ul class="compras-help">
        <li>Reportar comprador <i class='bx bxs-chevron-right'> </i></li>
        <li>Administrar publicaciones <i class='bx bxs-chevron-right'> </i></li>
        <li>Preguntas frecuentes sobre ventas <i class='bx bxs-chevron-right'> </i></li>
    </ul>

    <p class="title-help">Ayuda sobre tu cuenta</p>
    <ul class="compras-help">
        <li>Configuracion de mi cuenta</li>
        <li>Seguridad</li>
    </ul>
</section>


<?php 
    include('./templates/pie.php');
?>