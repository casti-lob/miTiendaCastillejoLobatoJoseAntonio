<%@page import="com.jacaranda.controll.CategoryControl"%>
<%@page import="com.jacaranda.Category"%>
<%@page import="com.jacaranda.controll.ArticleControl"%>
<%@page import="com.jacaranda.Article"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<link rel="stylesheet" href="css/index.css">
</head>
<body>
	<!-- Cabecera -->
	<div class="header">
		<ul class="nav nav-tabs">
		  <li class="nav-item">
		    <a class="nav-link active" aria-current="page" href="#">Artículos</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" href="Category.jsp">Categorías</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" href="#">Login</a>
		  </li>
		</ul>
	</div>
	<!-- Cabecera -->
	
	<!-- Contenedor -->
	<div class="container">
		<h1 class="display-2">Peliculas Castillejo</h1>
		<div class="card text-center">
		  <div class="card-body">
		    <h5 class="card-title">Añada una nueva película</h5>
		    <a href="AddMovie.jsp" class="btn btn-primary">Añadir</a>
		  </div>
		</div>
		<div class="row">
	<%
	List<Article> articles = ArticleControl.showArticle();
	for(Article i: articles){
		//Obtenemos la clase category
		Category category = i.getIdCategory();
	%>
		
		  <div class="col-sm-6 col-md-4">
		    <div class="card">
		    	<div class="card-header">
		    	 Categoría: <%=category.getName() %>
		    	</div>
		      <div class="card-body">
		        <h5 class="card-title">Película: <%=i.getTitle()%></h5>
		        <h6 class="card-subtitle mb-2 text-muted">Sinopsis</h6>
		        <p class="card-text"> <%=i.getSinopsis() %> </p>  
		      </div>
		      <ul  class="list-group list-group-flush">
			        <li class="list-group-item">
						 <h6 class="card-subtitle mb-2 text-muted"> Precio: <%=i.getPrice() %> € </h6>
					</li>
					<li class="list-group-item">
					<h6 class="card-subtitle mb-2 text-muted">Stock: <%=i.getStock() %> ud.</h6>
					</li>
				<div class="card-footer text-muted">
					<a href="DeleteMovie.jsp?id=<%=i.getId()%>"class="btn btn-primary">Borrar</a>
				        <a href="ModMovie.jsp?id=<%=i.getId()%>" class="btn btn-primary">Editar</a>
				        <a href="" class="btn btn-primary">Comprar</a>
  				</div>
		        
						
					
		    </div>
		  </div>
		
	<%} %>
	</div>
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