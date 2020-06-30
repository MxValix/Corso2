<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Primo esempio JSP</title>
<style>
table {
  width:100%;
}
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
th, td {
  padding: 15px;
  text-align: left;
}
#t01 tr:nth-child(even) {
  background-color: #eee;
}
#t01 tr:nth-child(odd) {
 background-color: #fff;
}
#t01 th {
  background-color: black;
  color: white;
}
</style>
</head>
<body>
<%
	String username = (String)request.getParameter("username");
	String serverName = (String)request.getAttribute("serverName");
	Integer serverPort = (Integer)request.getAttribute("serverPort");
	String servletPath = (String)request.getAttribute("servletPath");
%>

<h2>Primo esempio jsp</h2>
<table id="t01">
  <tr>
    <th>Campo utente</th>
    <th>Nome server</th> 
    <th>Porta server</th>
    <th>Servlet path</th>
  </tr>
  <tr>
    <td><%=username%></td>
    <td><%=serverName%></td>
    <td><%=serverPort%></td>
    <td><%=servletPath%></td>
  </tr>
</table>

</body>
</html>