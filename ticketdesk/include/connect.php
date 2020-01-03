<?php
include_once 'psl-config.php';   
function dbConnect() {
	$mysqli = new mysqli('localhost', 'root','', 'thesis_tmsticket');
	return $mysqli;
}
?>