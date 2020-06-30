<%@ page import="com.azienda.progetto.util.Costanti" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta  http-equiv="pragma" content="no-cache">	
<link rel="stylesheet" href="/Corso2/css/login.css?v=1.0.0">
<title>Login</title>
</head>
<body>

	<div class="container">
		<div class="form">
			<h1>Cerca città</h1>
			<form class="login-form" action="/Corso2/ricercaServlet" method="POST">
				<input type="text" id="username" name="<%=Costanti.NAME_CITTA%>" placeholder="inserisci città" />
				<input type="submit" id="button" value="Invia">
			</form>
		</div>
	</div>
</body>
</html>