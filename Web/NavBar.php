<?php

$conn = include 'conexion/conexion.php';
include ("backend/buscar/conseguir_nombre_imagen_menu.php");
$kinesNav = $conn->query("SELECT nombre FROM tiempo_maya.kin order by nombre;");
$uinalesNav = $conn->query("SELECT nombre FROM tiempo_maya.uinal order by nombre;");
$nahualesNav = $conn->query("SELECT nombre FROM tiempo_maya.nahual order by nombre;");
$energiasNav = $conn->query("SELECT nombre FROM tiempo_maya.energia order by id;");
#$periodosNav = $conn->query("SELECT nombre FROM tiempo_maya.periodo order by orden ;");

?>
<?php include "mensaje.php"; ?>
<div style="position:fixed;z-index:991; top:5px; left:20px;">
  <a href="index.php">
    <img alt="" src="./img/logonew.gif" width=160" height="160">
  </a>
</div>
<header id="header" style="padding-left: 600px;">
  <div class="container">
    <nav class="navbar navbar-expand-lg" id="nav-menu-container">
      <div class="container-fluid">
        <button class="navbar-toggler" type="button" onclick="rellenar()" data-toggle="collapse"
          data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false"
          aria-label="Toggle navigation">
          <span><i style="color: white;" class="fas fa-bars"></i></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
          <ul class="navbar-nav nav-menu">
            <li>
              <a class="nav-link" href="models/paginaModelo.php?pagina=Calendario Haab"
                style="color: white;font-size: 17px;">Calendario Haab &nbsp;&nbsp;&nbsp;&nbsp; </a>
              <button type="button" style="opacity: 0; height: 0;" class="nav-link" id="dropdownMenuButton"
                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Calendario Haab
              </button>

              <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                <li>
                  <button type="button" style="opacity: 0; height: 0;" class="nav-link" id="dropdownMenuButton"
                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Kin
                  </button>
                  <a class="nav-link" href="models/paginaModeloElemento.php?elemento=kin" style="font-size: 13px;">Kines
                  </a>
                  <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                    <div div style="width: 200px; height: 400px; overflow-y: scroll;">
                      <?php
                      if (is_array($kinesNav) || is_object($kinesNav)) {
                        foreach ($kinesNav as $kin) {
                          echo getLi($kin, "img/kin", "png", "models/paginaModeloElemento.php?elemento=kin#" . $kin['nombre']);
                        }
                      }
                      ?>
                  </ul>
                </li>
                <li>
                  <button type="button" style="opacity: 0; height: 0;" class="nav-link" id="dropdownMenuButton"
                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Uinal
                  </button>
                  <a class="nav-link" href="models/paginaModeloElemento.php?elemento=uinal"
                    style="font-size: 13px;">Uinales </a>
                  <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                    <div div style="width: 200px; height: 400px; overflow-y: scroll;">
                      <?php if (is_array($uinalesNav) || is_object($uinalesNav)) {
                        foreach ($uinalesNav as $uinal) {
                          echo getLi($uinal, "img/uinal", "png", "models/paginaModeloElemento.php?elemento=uinal#" . $uinal['nombre']);
                        }
                      }
                      ?>
                  </ul>
                </li>
              </ul>
            </li>
            <li>
              <a class="nav-link" href="models/paginaModelo.php?pagina=Calendario Cholquij"
                style="color: white;font-size: 17px;">Calendario Cholq'ij &nbsp;&nbsp;&nbsp;&nbsp; </a>
              <button type="button" style="opacity: 0; height: 0;" class="nav-link" id="dropdownMenuButton"
                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Calendario Cholquij
              </button>

              <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                <li>
                  <button type="button" style="opacity: 0; height: 0;" class="nav-link" id="dropdownMenuButton"
                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Nahual
                  </button>
                  <a class="nav-link" href="models/paginaModeloElemento.php?elemento=nahual"
                    style="font-size: 13px;">Nahuales </a>
                  <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                    <div div style="width: 200px; height: 400px; overflow-y: scroll;">
                      <?php if (is_array($nahualesNav) || is_object($nahualesNav)) {
                        foreach ($nahualesNav as $nahual) {
                          echo getLi($nahual, "img/nahual", "png", "models/paginaModeloElemento.php?elemento=nahual#" . $nahual['nombre']);
                        }
                      }
                      ?>
                    </div>
                  </ul>
                </li>
                <li>
                  <button type="button" style="opacity: 0; height: 0;" class="nav-link" id="dropdownMenuButton"
                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Energia
                  </button>
                  <a class="nav-link" href="models/paginaModeloElemento.php?elemento=energia" style="font-size: 13px;"
                    style="color: white;font-size: 17px;">Energias
                  </a>
                  <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                    <div div style="width: 200px; height:400px; overflow-y: scroll;">
                      <?php if (is_array($energiasNav) || is_object($energiasNav)) {
                        foreach ($energiasNav as $energia) {
                          echo getLi($energia, "img/energia", "png", "models/paginaModeloElemento.php?elemento=energia#" . $energia['nombre']);
                        }
                      }
                      ?>
                    </div>
                  </ul>
                </li>
              </ul>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="models/paginaModelo.php?pagina=Cuenta Larga"
                style="color: white;font-size: 17px;">Cuenta Larga</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="models/paginaModelo.php?pagina=Rueda Calendarica"
                style="color: white;font-size: 17px;">Rueda Calendarica</a>
            </li>
            <li>
              <a class="nav-link" href="models/paginaModelo.php?pagina=Calculadoras"
                style="color: white;font-size: 17px;">Calculadoras &nbsp;&nbsp;&nbsp;&nbsp; </a>
              <button type="button" style="opacity: 0; height: 0;" class="nav-link" id="dropdownMenuButton"
                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Calculadoras
              </button>
              <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                <li class="nav-item"><a class="nav-link" href="calculadora-calendario-gregoriano.php">
                    Calendario Gregoriano</a></li>
                <li class="nav-item"><a class="nav-link" href="calculadora-cuenta-larga.php">
                    Cuenta Larga</a>
                </li>
              </ul>
            </li>
            <li>
              <a class="nav-link" href="models/paginaModelo.php?pagina=Sabiduría Maya"
                style="color: white;font-size: 17px;">Sabiduría Maya &nbsp;&nbsp;&nbsp;&nbsp; </a>
              <button type="button" style="opacity: 0; height: 0;" class="nav-link" id="dropdownMenuButton"
                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Sabiduría Maya
              </button>
              <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                <li class="nav-item"><a class="nav-link" href="infografia-dia.php">
                    Infografía del día</a></li>
                <li class="nav-item"><a class="nav-link" href="cruz-maya.php">
                    Cruz Maya</a></li>
              </ul>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  </div>
</header>


<script type="text/javascript">
  var relleno = false;

  function rellenar() {
    if (!relleno) {
      $('#header').addClass('header-fixed1');
      $('#inicioContainer').addClass('iniciofixed');
      relleno = true
    } else {
      relleno = false
      $('#header').removeClass('header-fixed1');
      $('#inicioContainer').removeClass('iniciofixed');
    }
  }
</script>