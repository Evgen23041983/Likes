<?php
$host = 'localhost';
$database = 'user';
$user = 'root';
$password = '';


$pdo = new PDO('mysql:host='. $host .';dbname='.$database.';charset=utf8', $user, $password);
$pdo->exec("SET NAMES utf8");



if ($_SESSION['logged_user']->login == 'admin') {
    $query1 = $pdo->prepare('SELECT * FROM ips ');
    $query1->execute();
    $count1 = $query1->fetchAll(PDO::FETCH_ASSOC);

} else {
    $query1 = $pdo->prepare('SELECT * FROM ips WHERE login = :login ');
    $query1->execute(array('login'=>$_SESSION['logged_user']->login));
    $count1 = $query1->fetchAll(PDO::FETCH_ASSOC);
}
