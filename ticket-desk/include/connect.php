<?php
include_once 'psl-config.php';   
function dbConnect() {
	$mysqli = new mysqli('localhost', 'root', '', 'ticket32145');
	return $mysqli;
}
?>