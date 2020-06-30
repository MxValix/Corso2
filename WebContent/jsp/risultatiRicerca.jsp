<%@ page import="com.azienda.progetto.util.Costanti"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Risultati</title>
</head>
<body>
	<%
		List<String> listaGenerata = new ArrayList<String>();
	listaGenerata = (ArrayList<String>) request.getAttribute(Costanti.LISTA_GENERATA);
	if (listaGenerata != null && !listaGenerata.isEmpty()) {
	%>
	<table id="t01">
		<tr>
			<th>Lista generata</th>
		</tr>
		<tr>
			<%
				for (int i = 0; i < listaGenerata.size(); i++) {
			%>
			<td><%=listaGenerata.get(i)%></td> <%
 	}
 %>
		</tr>
	</table>
	<%
		} else {
	%>
	<h1>Non ci sono elementi</h1>
	<%
		}
	%>
	<div style="text-align: center">
		<a href="/Corso2/jsp/ricerca.jsp">Effettua una nuova ricerca</a>
	</div>
</body>
</html>