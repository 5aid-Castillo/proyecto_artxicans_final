<!DOCTYPE html>
<?php 
    include('../global/conexion.php');
    session_start();
    $id_user = $_SESSION['id']; 
?>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <meta name="robots" content="index.follow" />
    <meta name="keyword" content="artesanias, handicraft, mexican, mexico," />
    <meta name="description" content="Artesanias Mexicanas" />
    <!-- Styles -->
    <link
      rel="stylesheet"
      type="text/css"
      href="node_modules/swiper/swiper-bundle.css"
    />
    <link rel="stylesheet" href="../styles/bootstrap-5.2.3-dist/css/bootstrap.min.css">  
    <link rel="stylesheet" href="../styles/footer/footer.css?v=2" />
    <link rel="stylesheet" href="../styles/pages/profile.css?v=2"/>
    <link rel="stylesheet" href="../styles/header/header.css?v=2" />
    <link rel="stylesheet" href="../index.css?v=2" />
    <!-- GoogleIcons -->
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0"
    />
    <title>Perfil de Usuario</title>
</head>
<body>
<header class="header">
      <nav class="navigation">
        <div class="logo">
          <a href="index.html"><!-- <img src="./assets/imgimg.jpg" /> -->Artxicans</a>
        </div>
        <button class="burger-btn">
          <svg
            xmlns="http://www.w3.org/2000/svg"
            width="30"
            height="30"
            viewBox="0 0 24 24"
          >
            <path d="M4 6H20V8H4zM4 11H20V13H4zM4 16H20V18H4z" />
          </svg>
          <svg
            class="none"
            xmlns="http://www.w3.org/2000/svg"
            width="30"
            height="30"
            viewBox="0 0 24 24"
          >
            <path
              d="M16.192 6.344L11.949 10.586 7.707 6.344 6.293 7.758 10.535 12 6.293 16.242 7.707 17.656 11.949 13.414 16.192 17.656 17.606 16.242 13.364 12 17.606 7.758z"
            />
          </svg>
        </button>
        <div class="navbar" id="navbar">
          <ul class="navList">
            <li class="navItem"><a href="../index.php">Inicio</a></li>
            <li class="navItem dropdown">
              <a
                class="dropdown-toggle"
                data-bs-toggle="dropdown"
                aria-expanded="false"
                href=""
                >Categorias</a
              >
              <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="#">Alebrijes</a></li>
                <li><a class="dropdown-item" href="#">Arte Huichol</a></li>
                <li><a class="dropdown-item" href="#">Juguetes</a></li>
                <li><a class="dropdown-item" href="#">Joyeria</a></li>
                <li><a class="dropdown-item" href="#">Ropa</a></li>
                <li><a class="dropdown-item" href="#">Rebozos</a></li>
                <li><a class="dropdown-item" href="#">Sombreros</a></li>
                <li><a class="dropdown-item" href="#">Zapatos</a></li>
                <li><a class="dropdown-item" href="#">Otros...</a></li>
                
              </ul>
            </li>
            <li class="navItem"><a href="">Mis Compras</a></li>
            <li class="navItem"><a href="../helpers/validate-seller.php">Vender</a></li>
            <li class="navItem"><a href="/help.php">Ayuda</a></li>
            <?php if(@!$_SESSION['user']){?>
            <div class="headerBtn">
              <!-- <a href="#login"> -->
              <button class="loginBtn" onclick="location.href='login.php'">
                <a>Ingresa</a>
              </button>
              <!-- </a> -->
              <button class="btn-header2 signBtn" onclick="location.href='signup.php'">
                <a>Regístrate</a>
              </button>
            </div>
            <?php }else{?>
             <div class="profile">
              <a href="user/profile.php" class="cuenta">
              <svg xmlns="http://www.w3.org/2000/svg" width="40" height="30" fill="#ffff" style="cursor:pointer;"  class="bi bi-person-fill" viewBox="0 0 16 16">
                  <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3Zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6Z"/>
              </svg>
              </a>
            </div>
              <style>.cuenta{color:black; font-size:0.9rem; background:var(--second-alpha-color); padding:0 0.4rem; border-radius:10px}</style>
              <?php }?>
          </ul>
        </div>
      </nav>
    </header>
    
    <section>
      <div class="usuario">
        
        <h3>Cuenta:&nbsp;</h3>
        <h3 class="usuario-bold"><?php echo $_SESSION['user'];?></h3>&nbsp;&nbsp;
        <div class="img-profile">
        <img src="../assets/utilities/usuario.png" alt="user" style="width:40px;heigth:50px">
        </div>
      </div>
        
        <div class="d-grid gap-2 col-6 mx-auto">
      <?php 
        $query = mysqli_query($conn,"SELECT * FROM registro WHERE ID = '$id_user'");
        $res = mysqli_fetch_array($query);
              
        if($res['estatus'] == '1'){
      ?>
   <button class="btn btn-outline-success" type="button">Notificaciones</button>    
      <?php }?>   
   <!--  <button class="btn btn-outline-success" type="button">Editar perfil</button> --> 
  <button class="btn btn-danger" type="button" onclick="location.href='../global/logout.php'">Cerrar Sesion</button>
          
</div>
    </section>



    <section class="footer">
  <div class="footer-img">
    <img src="../assets/material/tablas.jpg" alt="footer">
  </div>

  <div class="fooContent">
    <div class="contactsDiv flex">
      <div class="footer-text">
        <small>Artxicans</small>
      </div>
    </div>

  <div class="footerCard flex">
    <div class="footerIntro flex">
      <div class="footer-logo">
        <a href="#" class="footer-logo-sub">
          <img src="../assets/logo/a.png" alt="logo" class="icon">
        </a>
      </div>
      <div class="footerParagraph">
      Esta aplicacion tiene como objetivo impulsar las artesanias mexicanas en la sociedad
      y ayudar economicamente a las personas que se dedican a este arte.
      </div>   
    </div>

    <div class="footerLinks grid">
      <div class="linkGroup">
        <span class="groupTitle">
          Servicios
        </span>
        <li class="footerList flex">Vender</li>
        <li class="footerList flex">Ayuda</li>
        <li class="footerList flex">Preguntas frecuentes</li>
        
      </div>
      <div class="linkGroup">
        <span class="groupTitle">
          Informacion
        </span>
        <li class="footerList flex">Accesibilidad</li>
        <li class="footerList flex">Privacidad</li>
        <li class="footerList flex">Terminos</li>
        <li class="footerList flex">Metodos de pago</li>
        

      </div>  
      </div>
      <div class="footer-end flex">
        <small>Desarrollada por:  Cristian Nahuatlato y Said Castillo</small>
      </div>
    </div>
  </div>
</section>

















    <script src="../js/Burgerbtn.js"></script>
    <script src="../styles/bootstrap-5.2.3-dist/js/bootstrap.min.js"></script>

    
   
  </body>
</html>