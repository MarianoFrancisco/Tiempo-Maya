<?php session_start(); ?>
<?php

$conn = include '../conexion/conexion.php';
$pagina = $_GET['pagina'];
$tabla = strtolower(str_replace(' ', '_', $pagina));
$informacion = $conn->query("SELECT htmlCodigo,seccion,nombre FROM tiempo_maya.pagina WHERE categoria='" . $pagina . "' order by orden;");
$secciones = $conn->query("SELECT seccion FROM tiempo_maya.pagina WHERE categoria='" . $pagina . "' group by seccion  order by orden;");
$elementos = $conn->query("SELECT nombre FROM tiempo_maya.pagina WHERE categoria='" . $pagina . "' AND nombre!='Informacion' AND seccion!='Informacion' order by orden;");
$datos = $conn->query("SELECT nombre, duracion, htmlCodigo FROM tiempo_maya.cuenta_larga;");

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Tiempo Maya - <?php echo $pagina ?></title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <?php include "../blocks/bloquesCss.html" ?>
    <link rel="stylesheet" href="../css/estilo.css?v=<?php echo (rand()); ?>" />
    <link rel="stylesheet" href="../css/paginaModelo.css?v=<?php echo (rand()); ?>" />


</head>
<?php include "../NavBar2.php" ?>

<body>
    <section id="inicio">
        <video src="../img/background.mp4" autoplay="true" muted="true" loop="true"></video>
        <div id="inicioContainer" class="inicio-container">

            <?php echo "<h1>" . $pagina . " </h1>";
            ?>
            <img class="imagenElemento3" alt="" src="../img/logonew3.png">
            <img class="imagenElemento2" alt="" src="../img/flecha.png">
        </div>
    </section>
    <br><br><br><br>
    <?php


    foreach ($secciones as $seccion) {
        $stringPrint = "<section id='" . $seccion['seccion'] . "'> <div class='container'> <div class='section-header'><h3 class='section-title'>" . $seccion['seccion'] . " </h3> </div>";
        foreach ($informacion as $info) {
            if ($seccion['seccion'] == $info['seccion']) {
                if ($info['seccion'] != "Informacion") {

                    $stringPrint .= "<h2><a href='paginaModeloElemento.php?elemento=" . $info['nombre'] . "'/>" . $info['nombre'] . " </a></h2>";
                }
                $stringPrint .= "<hr>";
                $stringPrint .= $info['htmlCodigo'];
                foreach ($elementos as $elemento) {
                    if ($elemento['nombre'] != 'Uayeb' && $elemento['nombre'] == $info['nombre']) {
                        $tabla = strtolower($elemento['nombre']);
                        $elementosEl = $conn->query("SELECT nombre FROM tiempo_maya." . $tabla . ";");
                        $stringPrint .= "<ul>";
                        foreach ($elementosEl as $el) {
                            if ($el['nombre'] == "Informacion") {
                                $stringPrint .= "<li> <a href='#'>" . $el['nombre'] . " </a> </li>";
                            } else {
                                $stringPrint .= "<li> <a href='paginaModeloElemento.php?elemento=" . $info['nombre'] . "#" . $el['nombre'] . "'>" . $el['nombre'] . " </a> </li>";
                            }
                        }
                        $stringPrint .= "</ul>";
                    }
                }
            }
        }
        $stringPrint .= "</div> </section> <hr>";
        echo $stringPrint;
    }

    ?>
    <?php if ($datos->num_rows > 0) {
        $stringPrint = "<section id='elementos'>";
        $stringPrint .= "<div class='container'>";
        $stringPrint .= " <div class='row about-container'>";
        $stringPrint .= "<div class='section-header'>";
        $stringPrint .= "<h3 class='section-title'>Elementos</h3></div>";
        foreach ($datos as $dato) {
            $stringPrint .= "<h4 id='" . $dato['nombre'] . "'>" . $dato['nombre'] . "</h4>";
            $stringPrint .= "<h5>Duración</h5> <p>" . $dato['duracion'] . "</p>";
            $stringPrint .= "<div style='text-align: center;'>"; // Abre un div para centrar la imagen
            $stringPrint .= "<img src=\"../img/" . $tabla . "/" . $dato['nombre'] . ".png\" class=\"imagenElemento\" >";
            $stringPrint .= "</div>"; // Cierra el div de centrado
            $stringPrint .= "<p>" . $dato['htmlCodigo'] . "</p> <hr>";
        }
        $stringPrint .= "</div>";
        $stringPrint .= "</div>";
        $stringPrint .= "</section>";
        echo $stringPrint;
    }
    ?>

    <?php include "../blocks/bloquesJs.html" ?>

</body>

</html>