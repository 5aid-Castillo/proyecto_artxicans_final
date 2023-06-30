<?php 
    include('./global/conexion.php');
    include('./templates/cabecera.php');
    
    
    $idu = $_SESSION['id'];
    ?>
    <section class="chats">
        <h2 align="center">Lista de Chats</h2>
        <div class="chats-container">
        <?php 
/*         $query = mysqli_query($conn,"SELECT * FROM chats INNER JOIN registro ON chats.seller = registro.ID WHERE seller = '$user' GROUP BY chats.ID_registro ");
*/
    if(isset($_GET['chat'])){
        $user = base64_decode($_GET['chat']);
        $query = mysqli_query($conn,"SELECT * FROM chats WHERE seller = '$user' GROUP BY ID_registro ");
        while($data = mysqli_fetch_array($query)){
        $get = $data['ID_registro'];
        $query2 = mysqli_query($conn,"SELECT * FROM registro WHERE ID = $get");
        $data2 = mysqli_fetch_array($query2);
        $number = $data2['ID']; 
        ?>
            <div>
                <button type="button" class="btn btn-primary" onclick="location.href='./toChat-s.php?id_chat=<?php echo base64_encode($number)?>#chat-id'">
                    <?php
                    
                    $check = mysqli_query($conn,"SELECT COUNT(*) total FROM chats WHERE ID_registro  = $number");
                    $counter = mysqli_fetch_array($check);
                    ?>
                    <?php echo $data2['Nombre']?>&nbsp;<span class="badge text-bg-secondary"><?php echo $counter['total']?></span>
                </button>
            </div>
        <?php }}else{ 

            
        $query = mysqli_query($conn,"SELECT * FROM chats WHERE ID_registro = '$idu' GROUP BY seller ");
        while($data = mysqli_fetch_array($query)){
        $get = $data['seller'];
        $query2 = mysqli_query($conn,"SELECT * FROM reg_sellers WHERE ID_registro = $get");
        $data2 = mysqli_fetch_array($query2);
        $number = $data2['ID_registro']; 
        ?>
            <div>
                <button type="button" class="btn btn-primary" onclick="location.href='./toChat.php?seller_data=<?php echo base64_encode($number)?>#chat-id'">
                    <?php
                    
                    $check = mysqli_query($conn,"SELECT COUNT(*) total FROM chats WHERE ID_registro  = $number");
                    $counter = mysqli_fetch_array($check);
                    ?>
                    <?php echo $data2['nickname']?>&nbsp;<span class="badge text-bg-secondary"><?php echo $counter['total']?></span>
                </button>
            </div>


       <?php  }} 
        ?>
        </div>
    </section>

<?php 
    include('./templates/pie.php');
?>