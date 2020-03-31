<?php 
	require 'db.php';

	$data = $_POST;
	if ( isset($data['do_login']) )
	{
		$user = R::findOne('users', 'login = ?', array($data['login']));
		if ( $user )
		{
			//логин существует
			if ( password_verify($data['password'], $user->password) )
			{
				//если пароль совпадает, то нужно авторизовать пользователя
				$_SESSION['logged_user'] = $user;
				header('Location: /');
			}else
			{
				$errors[] = 'Неверно введен пароль!';
			}

		}else
		{
			$errors[] = 'Пользователь с таким логином не найден!';
		}
		
		if ( ! empty($errors) )
		{
			//выводим ошибки авторизации
			echo '<div id="errors" style="color:red;">' .array_shift($errors). '</div><hr>';
		}

	}

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
<div class="login-page">
  <div class="form">
    <form class="login-form" action="login.php" method="POST">
      <input type="text" placeholder="login" name="login" value="<?php echo @$data['login']; ?>"/>
      <input type="password" placeholder="password" name="password" value="<?php echo @$data['password']; ?>"/>
      <button type="submit" name="do_login">login</button>
      <p class="message">Not registered? <a href="signup.php">Create an account</a></p>
    </form>
  </div>
</div>

</body>
</html>
