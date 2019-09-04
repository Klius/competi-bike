<?php
error_reporting(E_ALL);
ini_set('display_errors', 'on');
require_once 'vendor/autoload.php';
require_once ("lib/sql-connect.php");	
$id = 0;
if(isset($_GET["id"])){
	$id = $_GET["id"];
}
render();

 function render(){
    $loader = new \Twig\Loader\FilesystemLoader('templates');
	$twig = new \Twig\Environment($loader);
	global $id;//aida
	$total = getTotalKms($id);
	$stats = getStats($id);
	echo $twig->render('stats.tpl',["total"=>$total,"id"=>$id,"stats"=>$stats]);
 }
 function getTotalKms($id){
	global $con;
	$res = $con->query("SELECT SUM(km) FROM stats where id=".$id);
	return $res->fetch_array(MYSQLI_NUM)[0];
}
function getStats($id){
	global $con;
	$res = $con->query("SELECT SUM(km),fecha FROM stats where id=".$id." GROUP BY fecha");
	$stats = formatStats($res->fetch_array(MYSQLI_ASSOC));
	return json_encode($stats);
}
function formatStats($data){
	$rrd['cols'] = array(
		array('label' => 'Fecha', 'type' => 'string'),
		array('label' => 'Kilometros', 'type' => 'number')
	);
	
	$rows = array();
	foreach($data as $r) {
		$temp = array();
		$temp[] = array('v' => $r['fecha']); 
		$temp[] = array('v' => (float) $r['km']);
		$rows[] = array('c' => $temp);
	}
	$rrd['rows'] = $rows;
	return $rrd;
}