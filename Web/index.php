<?php
$conn = include "conexion/conexion.php";

if (isset($_GET['fecha'])) {
  $fecha_consultar = $_GET['fecha'];
} else {
  date_default_timezone_set('US/Central');
  $fecha_consultar = date("Y-m-d");
}

$nahual = include 'backend/buscar/conseguir_nahual_nombre.php';
$energia = include 'backend/buscar/conseguir_energia_numero.php';
$haab = include 'backend/buscar/conseguir_uinal_nombre.php';
$cuenta_larga = include 'backend/buscar/conseguir_fecha_cuenta_larga.php';
$partes = explode('.', $cuenta_larga);
$baktuns = $partes[0];
$katuns = $partes[1];
$tuns = $partes[2];
$uinals = $partes[3];
$kins = $partes[4];
$mostrar_cuenta_larga = "Baktún " . $baktuns . " Katún " . $katuns . " Tun "
  . $tuns . " Uinal " . $uinals . " Kin " . $kins;
$cholquij = $nahual . " " . strval($energia);
$nombre_nahual = $nahual;
$numero_energia = strval($energia);
$fecha_haab = $haab[0];
$nombre_uinal = $haab[1];
$numero_uinal = $haab[2];

?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>Tiempo Maya</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <?php include "blocks/bloquesCss.html" ?>
  <link rel="stylesheet" href="css/estilo.css?v=<?php echo (rand()); ?>" />
  <link rel="stylesheet" href="css/estiloAdmin.css?v=<?php echo (rand()); ?>" />
  <link rel="stylesheet" href="css/index.css?v=<?php echo (rand()); ?>" />
</head>

<body>

  <?php include "NavBar.php" ?>
  <div>
    <section id="inicio">
      <video src="./img/background.mp4" autoplay="true" muted="true" loop="true"></video>
      <div id="inicioContainer" class="inicio-container">
        <h1><br><br><br>Tiempo Maya</h1><br><br>
        <img alt="" src="./img/logonew2.png" width="185" height="160">
        <a href='<?php echo "models/paginaModeloElemento.php?elemento=uinal#" . $nombre_uinal; ?>'>
          <img width='50' height='50' src="img/uinal/<?php echo $nombre_uinal; ?>.png"
            alt="Error al intentar mostrar al uinal <?php echo $nombre_uinal; ?>" class='imagen-elemento'>
          <img width='50' height='50' src="img/numero/<?php echo $numero_uinal; ?>.png"
            alt="Error al intentar mostrar el numero del uinal <?php echo $numero_uinal; ?>" class='imagen-elemento'>
        </a>
        <h5 style="color: whitesmoke;font-size: 18px;">Calendario Haab :
          <?php echo isset($fecha_haab) ? $fecha_haab : ''; ?>
        </h5>
        <a href='<?php echo "models/paginaModeloElemento.php?elemento=nahual#" . $nombre_nahual; ?>'>
          <img width='50' height='50' src="img/nahual/<?php echo $nombre_nahual; ?>.png"
            alt="Error al intentar mostrar al nahual <?php echo $nombre_nahual; ?>" class='imagen-elemento'>
          <img width='50' height='50' src="img/numero/<?php echo $numero_energia; ?>.png"
            alt="Error al intentar mostrar el numero del nahual <?php echo $numero_energia; ?>" class='imagen-elemento'>
        </a>
        <h5 style="color: whitesmoke;font-size: 18px;">Calendario Cholquij :
          <?php echo isset($cholquij) ? $cholquij : ''; ?>
        </h5>

        <a href='<?php echo "models/paginaModelo.php?pagina=Cuenta Larga"; ?>'>
          <img width='50' height='50' src="img/cuenta_larga/Baktún.png" alt="Error al intentar mostrar el Baktún"
            class='imagen-elemento'>
          <img width='50' height='50' src="img/numero/<?php echo $baktuns; ?>.png"
            alt="Error al intentar mostrar el numero del baktun <?php echo $baktuns; ?>" class='imagen-elemento'>
          <img width='50' height='50' src="img/cuenta_larga/Katún.png" alt="Error al intentar mostrar el Katún"
            class='imagen-elemento'>
          <img width='50' height='50' src="img/numero/<?php echo $katuns; ?>.png"
            alt="Error al intentar mostrar el numero del baktun <?php echo $katuns; ?>" class='imagen-elemento'>
          <img width='50' height='50' src="img/cuenta_larga/Tun.png" alt="Error al intentar mostrar el Tun"
            class='imagen-elemento'>
          <img width='50' height='50' src="img/numero/<?php echo $tuns; ?>.png"
            alt="Error al intentar mostrar el numero del baktun <?php echo $tuns; ?>" class='imagen-elemento'>
          <img width='50' height='50' src="img/cuenta_larga/Uinal.png" alt="Error al intentar mostrar Uinal"
            class='imagen-elemento'>
          <img width='50' height='50' src="img/numero/<?php echo $uinals; ?>.png"
            alt="Error al intentar mostrar el numero del baktun <?php echo $uinals; ?>">
          <img width='50' height='50' src="img/cuenta_larga/Kin.png" alt="Error al intentar mostrar el Kin"
            class='imagen-elemento'>
          <img width='50' height='50' src="img/numero/<?php echo $kins; ?>.png"
            alt="Error al intentar mostrar el numero del baktun <?php echo $kins; ?>" class='imagen-elemento'>
        </a>
        <h5 style="color: whitesmoke;font-size: 18px;">Cuenta Larga :
          <?php echo isset($mostrar_cuenta_larga) ? $mostrar_cuenta_larga : ''; ?>
        </h5>
        <label style="color: whitesmoke;"><?php echo isset($fecha_consultar) ? $fecha_consultar : ''; ?></label>
      </div>
    </section>
    <br><br><br><br>
    <section id="information">
      <div class="container">
        <div class="row about-container">
          <div class="section-header">
            <h3 class="section-title">Acerca de</h3><br>
            <p>La cultura maya se refiere a una civilización mesoamericana que destacó a lo largo de más de dos
              milenios en numerosos aspectos socioculturales como su escritura jeroglífica, uno de los pocos
              sistemas de escritura plenamente desarrollados del continente americano precolombino, su arte, la
              arquitectura, su mitología y sus notables sistemas de numeración, así como en astronomía y
              matemáticas. Se desarrolló en el sureste de México (en los estados de Yucatán, Campeche,
              Quintana Roo, Chiapas y Tabasco), prácticamente toda Guatemala y también en Belice, la parte
              occidental de Honduras y en El Salvador, abarcando más de 300,000 km. Esta aplicación permite
              difundir algunos de los conocimientos de la cultura Maya, como por ejemplo: los diferentes calendarios
              Mayas, el conteo del tiempo, los Nahuales y energías. </p>
            <p>Este proyecto tiene como fin despertar el
              interés acerca de la cultura maya y las herramientas que nos brindan nos ayudan a tener una mejor
              interacción con el usuario, así como puede llegar hacer un canal de comunicación y construcción del
              conocimiento con otros interesados. </p>
            <div style="text-align: center;">
              <img alt="" src="./img/logonew3.png" width="185" height="160">
              <a
                href="https://srlabs.a2hosted.com/rs-humhub/index.php?r=wiki%2Fpage%2Fview&title=Proyecto+Tiempo+Maya&cguid=03ab5d70-702f-4844-a654-5f47fd6a1f61">
                <img alt="" src="./img/srlabs.png" width="400" height="160">
              </a>
              <img alt="" src="./img/logonew3.png" width="185" height="160">
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>

  <?php include "blocks/bloquesJs1.html" ?>

</body>

</html>