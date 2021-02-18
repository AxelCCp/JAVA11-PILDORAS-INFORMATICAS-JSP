<html>


<body>

<h1 style="text-align:center">

Ejemplo Declaraciones

</h1>

<%!
private int resultado;

public int metodoSuma(int num1,int num2){
	resultado = num1 + num2;
	return resultado;
}
public int metodoResta(int num1,int num2){
	resultado = num1 - num2;
	return resultado;
}
public int metodoMultiplica(int num1,int num2){
	resultado = num1 * num2;
	return resultado;
}
%>


LLamada al método, la suma es:  <%=metodoSuma(7,6) %>
<br>
LLamada al método, la resta es:  <%=metodoResta(7,6) %>
<br>
LLamada al método, la multiplicación es:  <%=metodoSuma(7,6) %>

</body>


</html>