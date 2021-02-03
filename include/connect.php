<?php
include_once 'psl-config.php';   
function dbConnect() {
	$mysqli = new mysqli(&HOST, &USER, &PASSWORD, &DATABASE);
	// $mysqli = new mysqli('localhost', 'root', '', 'ticket32145');
	return $mysqli;
}
?>