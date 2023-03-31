<%@page import="com.jacaranda.UserDb"%>
<%@page import="java.time.temporal.ChronoUnit"%>
<%@page import="com.jacaranda.controll.UserControl"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.sql.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">

</head>

<body>
	<!-- Cabecera -->
		<div class="header">
			<h1 class="display-2">Peliculas Castillejo</h1>
		</div>
		<!-- Cabecera -->
	<%
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String surname = request.getParameter("surname");
		LocalDate birthdayDate = LocalDate.parse(request.getParameter("birthdayDate"));
		//El gender lo tengo como char por lo que lo tengo que convertir
		String gender =request.getParameter("gender");
		char charGender= gender.charAt(0);
		
		//Calculamos la edad del usuario para no aceptar a menores
		LocalDate today = LocalDate.now();
		long yearOld= ChronoUnit.YEARS.between(birthdayDate, today);
		
		if(UserControl.getUser(userName)!=null){
	%>
		
		<!-- Contenedor -->
		<div class="container">
		<h1 class="display-3">Nombre de usuario ya existente</h1>
		<a href="../Index.jsp" class="btn btn-primary">Volver al inicio</a>
		</div>
		 
	<%}
		
		
		else if(yearOld<18){%>
		<!-- Contenedor -->
		<div class="container">
		<h1 class="display-3">No se aceptan usuarios menores de edad</h1>
		<a href="../Index.jsp" class="btn btn-primary">Volver al inicio</a>
		</div>
	<%
		}else{
		session.invalidate();
		HttpSession sesion = request.getSession();
		UserDb newUser = new UserDb(userName, password,name,surname,birthdayDate,charGender);
		UserControl.addUser(newUser);
		
		sesion.setAttribute("login", true);
		sesion.setAttribute("user", userName);
		sesion.setAttribute("admin", newUser.isAdmin());
		%>
			<jsp:forward page="../article/Article.jsp"></jsp:forward>
		<%}
	%>
		
	<footer>
		<div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
		    © 2020 Copyright:
		    <a class="text-dark" href="#">PeliculasCastillejo.com</a>
		 </div>
	</footer>
	<!-- Footer -->
</body>
</html>