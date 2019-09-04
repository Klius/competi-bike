<?php
// datos para la conexion a mysql
define('DB_SERVER','localhost');//canviar por localhost
define('DB_NAME','competi');
define('DB_USER','phpmyadmin'/*''*/);
define('DB_PASS','123456aA'/*''*/);

/**************Conexión Buena ponerla en la migración***************/
$con = mysqli_connect(DB_SERVER,DB_USER,DB_PASS,DB_NAME);
mysqli_query($con,"SET NAMES 'UTF8'");
/******************************************************************
$con = mysql_connect(DB_SERVER,DB_USER,DB_PASS);
mysql_query("SET NAMES 'UTF8'");
*********************************************************************/

if ($con) {//NO HA HABIDO ERROR AL CONECTARSE AL SERVIDOR
//BD (base de datos, servidor)
	//mysql_select_db(DB_NAME, $con) or die();
	mysqli_select_db( $con, DB_NAME) or die();
} else {//HA HABIDO ERROR AL CONECTARSE AL SERVIDOR
    echo mysqli_connect_error();
	die();
}
?>