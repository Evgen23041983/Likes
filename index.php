<?php 
	require_once 'db.php';
	require_once 'db2.php';
?>
<!DOCTYPE html>
<html lang="ru">
<head>
<?php
require_once "blocks/head.php";
?>
</head>
<body>
<?php require_once "blocks/header.php"?>
<?php if ( isset ($_SESSION['logged_user']) ) : ?>
	<h3>Код для вставки на сайт</h3>
	<div id="wrapper">
	
	<div id="leftCol">
	<p>&lt;script&gt;
	$(document).ready(function() {
    $(".like").bind("click", function() {
        let login = $(this).attr("data-login");
        let title = document.title;
        let url = document.location.href;
        let todayDate = new Date();
        let currYear = todayDate.getFullYear();
        let currMonth = todayDate.getMonth()+1;
        let currDay = todayDate.getDate();
        let data = currDay + "-" + currMonth + "-" + currYear;   
          $.ajax({
                url: "/like.php", 
                method: "POST",
                data: {title : title, url : url, login : login, data : data},
            success: function(result){
                $('.counter').text(result);
            }
        });
    });
    });

	&lt;/script&gt;</p>
	
      
	
	<p> &lt;div class="like"  data-login='qqqqqq'&gt;&lt;span class="counter"&gt;like&lt;/span&gt;&lt;/div&gt;</p>
	  
	
		 </div>
	</div>
	<h3>Стили для кнопки</h3>
	<div id="wrapper">
	<div id="leftCol">
	.like{
    cursor:pointer;
    width:128px;
    height:128px;
    margin:10px auto 40px;
    position:relative;
}
.like:hover.active, .like{
    background: url('../images/like.png') no-repeat;
}
.like.active, .like:hover{
    background: url('../images/like_active.png') no-repeat;
}
.like .counter{
    border: 5px solid #333333;
    bottom: -37px;
    color: #333333;
    font-size: 31px;
    left: 27px;
    position: absolute;
    text-align: center;
    width: 64px;
}
	</div>
	</div>
	<a href="#"></a>
<?php
require_once "admin.php";
?>
	



<?php endif; ?>
<a href="index2.php">Страница с лайками(для демонстрации)</a>
</body>
</html>
