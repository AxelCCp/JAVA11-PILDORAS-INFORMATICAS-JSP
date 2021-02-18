<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%@ page import = "java.sql.*" %>

<%
	
	String usuario = request.getParameter("usuario");
	String contra = request.getParameter("contra");

	
	//cargamos el driver para conectar
	Class.forName("com.mysql.jdbc.Driver");
	
	try{
	//conexion a BBDD	                                                                       //?....se debe especificar el timezone............................................................UTC// 
	Connection miConexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto_jsp? useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","root",""); 	
	
	PreparedStatement consultaPreparada = miConexion.prepareStatement("SELECT * FROM USUARIOS WHERE USUARIO=? AND CONTRASENA=?"); 
	
	consultaPreparada.setString(1, usuario);
	consultaPreparada.setString(2, contra);
	ResultSet miResultset = consultaPreparada.executeQuery();
	
	//con (1) le indicamos que se vaya al primer registro
	if(miResultset.absolute(1)) out.println("Usuario autorizado");
	else out.println("No hay usuarios con esos datos");
	
	}catch(Exception e){
		out.println("No Conecta con BBDD");
	}
	
%>


</body>
</html>