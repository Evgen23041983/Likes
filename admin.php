<?php
require_once('db2.php');
?>


<!DOCTYPE html >

<html lang="en">
	<head>
	<meta charset="utf-8">
    
    
	
	
	
	</head>
	<body>
               <div id = "content" >
                
                <div class="table col-12 mt-3 pt-2">
                    <div class="row table-light">
                        <div class="col-1 font-weight-bold text-center ">#
                        </div>
                        <div class="col-2 font-weight-bold text-center">ip
                        </div>
                        <div class="col-2 font-weight-bold text-center ">url
                        </div>
                        <div class="col-2 font-weight-bold text-center ">title
                        </div>
                        <div class="col-2 font-weight-bold text-center ">data
                        </div>
                        <div class="col-3 font-weight-bold text-center ">login
                        </div>
                    </div>
                    <?php foreach ($count1 AS $c): ?> 
                    <div class="row table-dark d-flex flex-row justify-content-around py-2">
                        <div class="col-1 text-center"><?=$c['id']?></div>

                        <div class="col-2 text-center"><?=$c['ip']?></div>

                        <div class="col-2 text-center"><?=$c['url']?></div>

                        <div class="col-2 text-center"><?=$c['title']?></div>

                        <div class="col-2 text-center"><?=$c['data']?></div>

                        <div class="col-3 text-center"><?=$c['login']?></div>
                    </div>
                    <?php endforeach; ?>    

                    
            </div>
			
		
</html>
