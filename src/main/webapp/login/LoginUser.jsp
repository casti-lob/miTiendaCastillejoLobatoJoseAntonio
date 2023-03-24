<%@page import="com.jacaranda.controll.UserControl"%>
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
		String userName= request.getParameter("userName");
		String password= request.getParameter("password");
		boolean existUser= UserControl.checkUser(userName, password);
		if(existUser==true){
	%>
		<p>El usuario existe</p> 
	<%
		}else{
	%>	
	<p>No existe</p>
	<%} %>
</body>
</html>