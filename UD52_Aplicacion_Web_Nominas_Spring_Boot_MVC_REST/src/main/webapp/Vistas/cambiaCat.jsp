<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Actualizar Categor�a</title>
<link rel="stylesheet" href="estilos.css">
</head>
<body>

	<h1>Actualizar la categor�a de un empleado</h1>

	<form action="Controller?opcion=categ" method="post">
		<table class="tftable" border="1">
			<tr>
				<th>Introduzca el DNI de un empleado</th>
				<td><input type="text" name="dni"></td>
			</tr>
			<tr>
				<th>Introduzca la categor�a que desea guardar</th>
				<td><input type="text" name="catEmp"></td>
			</tr>
		</table>
		</br> <input type="submit" value="Actualizar">
	</form>
	</br>

	<%
	if (request.getParameter("dni") == null || request.getParameter("catEmp") == null) {
	%>
	<p>Inserte un DNI o categor�a v�lidos</p>
	<button onclick="window.location.href='cambiaCat.jsp'">Repetir
		el proceso</button>

	<%
	} else {
	%>
	<p>
		<c:out value="${result}"></c:out>
	</p>
	<%
	}
	%>

	<button onclick="window.location.href='index.jsp'">Regresar al
		men� de opciones</button>
</body>
</html>