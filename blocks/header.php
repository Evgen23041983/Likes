<header>
    <div id="logo">
		<a href="/" title="Перейти на главную">
			<span>S</span>tatistics
		</a>
    </div>
    <div id="menuHead">		
	
	</div>
    <div id="regAuth">
	<p>Signed in as <?php echo $_SESSION['logged_user']->login; ?><br/></p> <a href="logout.php">LOGOUT</a> | <a href="/signup.php">Sign Up</a> | <a href="/login.php">Sig In</a>
	</div>	
</header>
