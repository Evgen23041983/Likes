<?php

require_once('db2.php');

  $id = $_POST['url']; 
  $ip = $_SERVER['REMOTE_ADDR']; 
  $title =  $_POST['title']; 
  $d =  $_POST['data']; 
  $login = $_POST['login']; 
  
  if($id)
  {

    $current_ip =  $pdo->prepare("SELECT id FROM ips WHERE ip=:ip");
    $current_ip->execute(array(':ip'=>$ip));

    if ($current_ip->rowCount() == 0) {
	
        $query=$pdo->prepare("INSERT INTO ips   VALUE (NULL, :ip, :url, :title, :data, :login) ");
        $query->execute(array('ip' => $ip, 'url' => $id, 'title' => $title, 'data' => $d, 'login' => $login));
      
      }
	  
	
        
      $query =  $pdo->prepare("SELECT * FROM ips WHERE login = :login");
      $query->execute(array('login'=>$login));
      $con = $query->rowCount();
      echo $con;

  }


 

?>