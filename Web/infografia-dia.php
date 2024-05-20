<?php session_start(); ?>
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
$numero_energia = strval($energia);
$nombre_nahual = calcularNahual($fecha_consultar, $conn);
$nombre_nahual = str_replace("'", "\\'", $nombre_nahual);
$result_energia = $conn->query("SELECT nombre, significado FROM tiempo_maya.energia WHERE id = "
    . $numero_energia . ";");
$result_nahual = $conn->query("SELECT significado FROM tiempo_maya.nahual WHERE nombre = '"
    . $nombre_nahual . "';");
$row_energia = $result_energia->fetch_assoc();
$nombre_energia = str_replace("'", "\\'", strval($row_energia['nombre']));
$significado_energia = strval($row_energia['significado']);
$row_nahual = $result_nahual->fetch_assoc();
$significado_nahual = strval($row_nahual['significado']);


?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
	<link rel="icon" href="img/piramide-maya.png">
    <title>Tiempo Maya - Infografía del día</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <?php include "blocks/bloquesCss.html" ?>
    <link rel="stylesheet" href="css/estilo.css?v=<?php echo (rand()); ?>" />
    <link rel="stylesheet" href="css/sabiduriaMaya.css?v=<?php echo (rand()); ?>" />
    <script src="js/generar_infografia.js"></script>
</head>

<body>

    <?php include "NavBar.php"; ?>
    <div>
        <section id="inicio">
            <video src="./img/background.mp4" autoplay="true" muted="true" loop="true"></video>
            <div id="inicioContainer" class="inicio-container">
                <div id='formulario'>
                    <h1>Infografia del dia</h1>
                    <form action="#" method="GET">
                        <div class="mb-1">
                            <label for="fecha" class="form-label">Fecha a buscar</label>
                            <input type="date" class="form-control" name="fecha" id="fecha"
                                value="<?php echo isset($fecha_consultar) ? $fecha_consultar : ''; ?>">
                        </div>
                        <button id="btnGenerarInfografia" type="submit" class="btn btn-get-started"><i
                                class="far fa-clock"></i>Generar</button>
                    </form>
                    <canvas id="canvas"></canvas>
                    <script>
                        document.getElementById('btnGenerarInfografia').addEventListener('click', function () {
                            generarInfografia('<?php echo $nombre_energia; ?>', '<?php echo $significado_energia; ?>',
                                '<?php echo $nombre_nahual; ?>', '<?php echo $significado_nahual; ?>');
                        });
                    </script>
                    <script>
                        generarInfografia('<?php echo $nombre_energia; ?>', '<?php echo $significado_energia; ?>',
                            '<?php echo $nombre_nahual; ?>', '<?php echo $significado_nahual; ?>');
                    </script>
                </div>
            </div>
    </div>
    </section>
    <br><br>
    </div>
    <?php include "blocks/bloquesJs1.html" ?>

</body>

</html>