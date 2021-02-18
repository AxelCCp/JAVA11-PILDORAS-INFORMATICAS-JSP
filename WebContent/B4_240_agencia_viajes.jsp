<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<h1 style = "text-align:center">Agencia de viajes</h1>

<%

	//valor por defecto
	String ciudadFavorita = "Madrid";

	//lee la cookie de la petición del navegador
	Cookie[]lasCookies = request.getCookies();
	
	//buscar las preferencias. La ciudad favorita 
	if(lasCookies!=null){
		for(Cookie e : lasCookies){
			if("agencia_viajes.ciudad_favorita".equals(e.getName())) {
				
				ciudadFavorita = e.getValue(); 
				
				break;
			}
		}
	}

%>

<h3>Vuelos a <%=ciudadFavorita %></h3>

<p>Esto es un texto de ejemplo</p>
<p>Esto es un texto de ejemplo</p>
<p>Esto es un texto de ejemplo</p>
<p>Esto es un texto de ejemplo</p>
<p>Esto es un texto de ejemplo</p>


<h3>Hoteles en <%=ciudadFavorita %></h3>

<p>Esto es un texto de ejemplo</p>
<p>Esto es un texto de ejemplo</p>
<p>Esto es un texto de ejemplo</p>
<p>Esto es un texto de ejemplo</p>
<p>Esto es un texto de ejemplo</p>

<h3>Restaurantes en  <%=ciudadFavorita %></h3>

<p>Esto es un texto de ejemplo</p>
<p>Esto es un texto de ejemplo</p>
<p>Esto es un texto de ejemplo</p>
<p>Esto es un texto de ejemplo</p>
<p>Esto es un texto de ejemplo</p>

</body>
</html>