<?php
error_reporting(E_ALL);
ini_set('display_errors', 'on');
require_once 'vendor/autoload.php';
$id = 0;
if(isset($_GET["id"])){
	$id = $_GET["id"];
}
if(isset($_POST["formachou"])){

}

render();

 function render(){
    $loader = new \Twig\Loader\FilesystemLoader('templates');
	$twig = new \Twig\Environment($loader);
	global $id;//aida
		
	$img = getImage($id);
	echo $twig->render('main.tpl',["img"=>$img,"id"=>$id]);
 }

 function getImage($id){
	 $name=["aida","victor"];
	 return "assets/img/".$name[$id]."-".rand(1,4).".jpg";
 }