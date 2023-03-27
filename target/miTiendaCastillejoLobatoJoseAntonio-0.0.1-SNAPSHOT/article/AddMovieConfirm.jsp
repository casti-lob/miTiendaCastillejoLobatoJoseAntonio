
<%@page import="com.jacaranda.controll.ArticleControl"%>
<%@page import="com.jacaranda.Category"%>
<%@page import="com.jacaranda.controll.CategoryControl"%>
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
	String title = request.getParameter("title");
			String sinopsis= request.getParameter("sinopsis");
			double price = Double.parseDouble(request.getParameter("price"));
			//Obtenemos el id de la categoria
			Integer idCategory= Integer.parseInt(request.getParameter("category"));
			//Encontramos la categoria
			Category category = CategoryControl.getCatetory(idCategory);
			Integer stock= Integer.parseInt(request.getParameter("stock"));

			
	%>
	
	<!-- Cabecera -->
	<div class="header">
		<ul class="nav nav-tabs">
		  <li class="nav-item">
		    <a class="nav-link" aria-current="page" href="Index.jsp">Artículos</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" href="../category/Category.jsp">Categorías</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" href="../login/login.jsp">Login</a>
		  </li>
		</ul>
	</div>
	<!-- Cabecera -->
	
	<!-- Contenedor -->
	<div class="container" align="center">
	<%
	if(ArticleControl.compruebaArticleName(title)){
		Article newArticle= new Article(title,sinopsis,price,stock,category);
		//Guardamos el articulo en la bbdd
		ArticleControl.addArticle(newArticle);
	%>
	<h1 class="display-2">Se ha añadido la nueva película</h1>
		<div class="card">
		      <div class="card-body">
		        <h5 class="card-title">Película: <%=title%> Genero: <%=category.getName() %></h5>
		        <h6 class="card-subtitle mb-2 text-muted">Sinopsis</h6>
		        <p class="card-text"> <%=sinopsis %> </p>
		         <h6 class="card-subtitle mb-2 text-muted">Precio: <%=price%> Stock: <%=stock %> </h6>
		        
		       <a href="Index.jsp" class="btn btn-primary">Volver al inicio</a>
		      </div>
		   </div>
	<%
	}else{ %>
		<h1 class="display-2">Ya existe una película con ese nombre</h1>
		<a href="Index.jsp" class="btn btn-primary">Volver al inicio</a>
		
	<%}
	%>
	</div>
	<!-- Contenedor -->
	
	
	<!-- Footer -->
	<footer>
		<div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
		    © 2020 Copyright:
		    <a class="text-dark" href="#">PeliculasCastillejo.com</a>
		 </div>
	</footer>
	<!-- Footer -->
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
	
</body>
</html>