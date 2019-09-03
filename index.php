<?php
error_reporting(E_ALL);
ini_set('display_errors', 'on');
session_start();
require_once 'vendor/autoload.php';
 if(isset($_POST["formachou"])){

 }
render();

 function render(){
    $loader = new \Twig\Loader\FilesystemLoader('templates');
	$twig = new \Twig\Environment($loader);
	echo $twig->render('main.tpl');
 }