<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>


<%@ page import="java.util.*" %>


<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<body>

<form name="Formulario_Compra" action="B2_237_ListaDeCompra.jsp">
 
  <p>Artículos a comprar:</p>
  <p>
    <label>
      <input type="checkbox" name="articulos" value="agua " >
      Agua </label>
    <br>
    <label>
      <input type="checkbox" name="articulos" value="leche" >
      Leche </label>
    <br>
     <label>
      <input type="checkbox" name="articulos" value="pan" >
      Pan </label>
    <br>
     <label>
      <input type="checkbox" name="articulos" value="mazanas" >
      Manzanas </label>
    <br>
     <label>
      <input type="checkbox" name="articulos" value="carne" >
      Carne </label>
      <br>
       <label>
      <input type="checkbox" name="articulos" value="pescado" >
      Pescado </label>
  </p>
  <p>
    <input type="submit" name="button" id="button" value="Enviar">
    <br>
  </p>
</form>


<h2>Carro de la compra</h2>

<ul>
<%
	//declaración de arrayList = obj que se haya ido grabando previamente en la session.
	//o sea que se guarden los elementos elegidos en el carro de la compra.
	List <String> ListaElementos = (List<String>) session.getAttribute("misElementos");

	if(ListaElementos==null){
		//inicia el arraylist
		ListaElementos = new ArrayList <String>();
		//Establecemos la sesión "misElementos" y guarda el obj "ListaElementos" que está vacío 
		session.setAttribute("misElementos",ListaElementos);
	}
	
	//Rescata los datos del formulario, cuando el usuario pulsa el botón de enviar. 
	String[]elementos = request.getParameterValues("articulos");
	
	if(elementos!=null){
	
		for(String e : elementos){
		
			//agregar los elementos del array "Elementos",  al arrayList
			ListaElementos.add(e);
		}
	}
	
	//imprimimos el arraylist
	for(String e2 : ListaElementos){
		out.println("<li>" + e2 + "</li>");
	}
	
%>
</ul>

</body>
</html>