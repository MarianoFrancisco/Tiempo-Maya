<?php
function getLi($object, $folder, $format, $href)
{
	$name = htmlspecialchars($object['nombre'], ENT_QUOTES, 'UTF-8');
	$html = "<li class='nav-item elements'>";
	$html .= "<a class='nav-link d-flex justify-content-between align-items-center' href='$href'>";
	$html .= "<span>" . $object['nombre'] . "</span>";
	$html .= "<img src='$folder/$name.$format' width='50' height='50'/>";
	$html .= "</a>";
	$html .= "<li>";
	return $html;
}