<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	
	<h4>Login Page</h4>
	
	<form action="shiro/login" method="POST">
		username: <input type="text" name="username"/>
		<br><br>
		
		password: <input type="password" name="password"/>
		<br><br>
		 验证码:<input type="text" name="kaptcha" value="" /><img src="kaptcha.jpg" />  
		<input type="submit" value="Submit"/>
	</form>
	
</body>
</html>