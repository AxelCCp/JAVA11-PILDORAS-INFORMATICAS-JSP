<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix= "c" %>

<%@ page import = "java.util.*, java.sql.*, JSP_Tags.A0_243_Empleado" %>


<%

	ArrayList<A0_243_Empleado> datos = new ArrayList<>();  

	Class.forName("com.mysql.jdbc.Driver");
	
	try{
		
		Connection miConexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto_jsp","root",""); 
		
		Statement miStatement = miConexion.createStatement(); 	
		
		String instruccionSql = "SELECT * FROM EMPLEADOS";
		
		ResultSet rs = miStatement.executeQuery(instruccionSql);
		
		while(rs.next()){
			datos.add(new A0_243_Empleado(rs.getString(1), rs.getString(2), rs.getString(3), rs.getInt(4)));	
			
		}
		
	
		
		rs.close();
		miConexion.close();
		
	}catch(Exception e){
		out.println("ha habido un error");
		
		
	}
	
	
	pageContext.setAttribute("losEmpleados",datos); 
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Insert title here</title>

<style>
.cabecera{
	font-weight:bold;
}
</style>
</head>
<body>

<table border="1">

<tr class="Cabecera"><td>Nombre</td><td>Apellido</td><td>Puesto</td><td>Salario</td><td>Bonus</td></tr>

<c:forEach var="Emptemp" items="${losEmpleados}">

<tr>
	<td>${EmpTemp.nombre}</td><td> ${EmpTemp.apellido}</td><td> ${EmpTemp.puesto}</td><td> ${EmpTemp.salario}</td>
	<td><c:if test="${EmpTemp.salario<70000}">5000</c:if></td>
	<c:if test="${EmpTemp.salario>70000}">----</c:if>
</tr>		
</c:forEach>
	
	</table>

</body>
</html>