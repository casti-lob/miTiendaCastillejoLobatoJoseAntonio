<%@page import="com.jacaranda.controll.ArticleControl"%>
<%@page import="com.jacaranda.Article"%>
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
	<%
	//Obtenemos el id lanzado en el index y recuperamos el elemento
		int idMovie= Integer.parseInt(request.getParameter("id"));
		Article movie = ArticleControl.getArticle(idMovie);
	%>
	<!-- Cabecera -->
	<div class="header">
		<ul class="nav nav-tabs">
		  <li class="nav-item">
		    <a class="nav-link" aria-current="page" href="Index.jsp">Art�culos</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" href="../category/Category.jsp">Categor�as</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" href="../login/login.jsp">Login</a>
		  </li>
		</ul>
	</div>
	<!-- Cabecera -->
	
	<!-- Contenedor -->
	<div class="container" align="center">
	<h1 class="display-2">Estas seguro de eliminar esta pel�cula</h1>
		<div class="card">
		      <div class="card-body">
		        <h5 class="card-title">Pel�cula: <%=movie.getTitle()%></h5>
		        <h6 class="card-subtitle mb-2 text-muted">Sinopsis</h6>
		        <p class="card-text"> <%=movie.getSinopsis() %> </p>
		         <h6 class="card-subtitle mb-2 text-muted">Precio: <%=movie.getPrice()%> Stock: <%=movie.getStock() %> </h6>
		        
		       <a href="Index.jsp" class="btn btn-primary">Cancelar</a>
		       <a href="DeleteMovieConfirm.jsp?id=<%=movie.getId()%>" class="btn btn-danger">Confirmar</a>
		      </div>
		   </div>
		  
	</div>
	<!-- Contenedor -->
	
	
	<!-- Footer -->
	<footer>
		<div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
		    � 2020 Copyright:
		    <a class="text-dark" href="#">PeliculasCastillejo.com</a>
		 </div>
	</footer>
	<!-- Footer -->

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>

</body>
</html>