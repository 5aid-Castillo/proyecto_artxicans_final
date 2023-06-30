<?php 
include('./global/conexion.php');
include('./templates/cabecera.php');
if(!@$_SESSION['user']){ 
    echo("<script>location.href = '../index.php';</script>");  
}
$seller = base64_decode($_GET['seller_data']);
$id_user = $_SESSION['id'];
$query = mysqli_query($conn, "SELECT * FROM reg_sellers WHERE ID_registro = $seller");
$data = mysqli_fetch_array($query);
?>
    <div class="header-chat" align="center">
             <?php echo $data['nickname']?>
         </div>
<section class="toChat" style="color:grey">
         <div class="body-chat mt-3">
                <?php 
                    $message_query = mysqli_query($conn,"SELECT * FROM chats WHERE ID_registro = '$id_user' AND seller = '$seller'");
                    while($data_message = mysqli_fetch_array($message_query)){
                      $data_m = $data_message['sent'];
                      
                      if($data_m == 'Seller'){
                ?>
                 <div class="seller-answer">
                   <div class="alert alert-dark width-seller" role="alert">
                       <?php echo $data_message['chat']?>
                    </div>
                 </div>
                <?php 
             } 
                if($data_m =='User'){
                
                ?>
                <div class="user-answer">
                    <div class="alert alert-primary width-user" role="alert">
                       <?php echo $data_message['chat']?>
                    </div>
                </div> 
        </div> 
        <?php }}?>
        
        
    </section>
    <div class="footer-chat mt-5">
    <form method="POST" action="./helpers/message.php?seller_data=<?php echo base64_encode($seller)?>">
    <div class="mb-3 w-75 mx-auto">
                    
        <textarea class="form-control" name="message" id="message" style="resize:none" rows="3" placeholder="Escribe tu mensaje"></textarea>
                  
    </div>
    <center class="container-btn-chat" style="padding:1rem">
        <!-- <button class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button> -->
        <input type="hidden" name="<?php echo $seller;?>" id="<?php echo $seller;?>" >
        <input type="submit" class="btn btn-success sendMessage" href="javascript:;" name="sendMessage" id="sendMessage" value="Enviar">
    </center>
    </form>
    </div> 
<?php 
include('./templates/pie.php');
?>