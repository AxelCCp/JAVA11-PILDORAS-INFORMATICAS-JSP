<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%
	//LEYENDO DATOS DEL FORMULARIO
	String ciudad_favorita = request.getParameter("ciudad_favorita");

	//CREAR LA COOKIE           //"TemáticaDeLaCookie.NombreCookie", ciudad_favorita
	Cookie laCookie = new Cookie("agencia_viajes.ciudad_favorita",ciudad_favorita);
	
	//VIDA DE LA COOKIE...1 año en segundos
	laCookie.setMaxAge(365*24*60*60);
	
	//ENVÍO DE COOKIE AL USUARIO
	response.addCookie(laCookie);
	
%>

Gracias por enviar tus preferencias
<a href = "B4_240_agencia_viajes.jsp"> Ir a la agencia de viajes </a>

</body>
</html>