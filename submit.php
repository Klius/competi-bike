<?php
if(isset($_POST["formacho"])){
    require_once('lib/sql-connect.php');
    $con->query("INSERT INTO stats(id,fecha,km) VALUES (".$_POST['id'].",'".$_POST['date']."',".$_POST['km'].")");
    mysqli_close ( $con );
    header("Location: stats.php");
}