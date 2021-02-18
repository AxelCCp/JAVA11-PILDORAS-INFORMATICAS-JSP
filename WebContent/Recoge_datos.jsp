<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%
    request.setCharacterEncoding("UTF-8");
    %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%@ page import = "java.sql.*" %>

<%
	String nombre = request.getParameter("nombre");
	String apellido = request.getParameter("apellido");
	String usuario = request.getParameter("usuario");
	String contra = request.getParameter("contra");
	String pais = request.getParameter("pais");
	String tecno = request.getParameter("tecnologias");
	
	//cargamos el driver para conectar
	Class.forName("com.mysql.jdbc.Driver");
	
	try{
	//conexion a BBDD	                                                                       //?....se debe especificar el timezone............................................................UTC// 
	Connection miConexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto_jsp? useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","root",""); 	
	
	//creamos un statement
	Statement miStatement = miConexion.createStatement();
	//creamos instruccion sql
	String instruccionSql = "INSERT INTO USUARIOS (Nombre, Apellido, Usuario, Contrasena, Pais, Tecnologia) VALUES ('" + nombre + "','" + apellido + "','" + usuario + "','" + contra + "','" + pais + "','" + tecno + "')";
	//Ejecutamos la sentencia
	miStatement.executeUpdate(instruccionSql);
	
	out.println("Registrado con éxito");
	
	}catch(Exception e){
		out.println("No Conecta con BBDD");
	}
	
%>

</body>
</html>