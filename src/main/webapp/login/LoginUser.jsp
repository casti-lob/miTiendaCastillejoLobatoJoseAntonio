<%@page import="com.jacaranda.UserDb"%>
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
		//Obtenemos la sesión
		HttpSession sesion = request.getSession();
		//Obtenemos los datos del user para hacer login
		String userName= request.getParameter("userName");
		String password= request.getParameter("password");
		//Comprobamos si los datos del usuario es correcto
		boolean existUser= UserControl.checkUser(userName, password);
		if(existUser==true){
			UserDb user = UserControl.getUser(userName);
			sesion.setAttribute("login", true);
			sesion.setAttribute("user", userName);
			sesion.setAttribute("admin", user.isAdmin());
			
	%>
		<jsp:forward page="../article/Article.jsp"></jsp:forward>
	<%
		}else{
	%>	
	<jsp:forward page="/ErrorLogin"></jsp:forward>
	<%} %>
</body>
</html>