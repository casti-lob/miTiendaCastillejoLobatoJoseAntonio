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
	
	<%
		//Comprobamos si hay una sesion creada y si no lo dirigimos al servlet de error
		
		if(session.getAttribute("login")==null){%>
			<jsp:forward page="/ErrorLogin"></jsp:forward>
		<%}
	boolean admin =(boolean)session.getAttribute("admin");
	%>

	<!-- Cabecera -->
	<div class="header">
		<ul class="nav nav-tabs">
		  <li class="nav-item">
		    <a class="nav-link active" aria-current="page" href="#">Artículos</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" href="../category/Category.jsp">Categorías</a>
		  </li>
		  
		  <!-- Usuario -->
		  <li class="nav-item dropdown">
		    <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false" >
		    	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person" viewBox="0 0 16 16">
				  <path d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6Zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0Zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4Zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10Z"/>
				</svg>
				Usuario <%=session.getAttribute("user") %>
		    </a>
		    <ul class="dropdown-menu">
		      <li><a class="dropdown-item  text-danger"  data-bs-toggle="tooltip"
              data-bs-title="Al cerrar sesión no podras acceder a los artículos ni categorías" href="../login/SingOut.jsp">Cerrar sesión</a></li>
		      
		    </ul>
		  </li>
		  
		</ul>
	</div>
	<!-- Cabecera -->
	
	<!-- Contenedor -->
	<div class="container">
		<h1 class="display-2">Peliculas Castillejo</h1>
		<%if(admin==true){ %>
		<div class="card text-center">
		
		  <div class="card-body">
		    <h5 class="card-title">Añada una nueva película</h5>
		    <a href="../article/AddMovie.jsp" class="btn btn-primary">Añadir</a>
		  </div>
		</div><%} %>
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
					<%
					
					if(admin==true){
					%>
					<a href="../article/DeleteMovie.jsp?id=<%=i.getId()%>"class="btn btn-primary">Borrar</a>
				        <a href="../article/ModMovie.jsp?id=<%=i.getId()%>" class="btn btn-primary">Editar</a>
				      <%}%>
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
	 <script>
    const tooltipTriggerList = document.querySelectorAll('[data-bs-toggle="tooltip"]')
    const tooltipList = [...tooltipTriggerList].map(tooltipTriggerEl => new bootstrap.Tooltip(tooltipTriggerEl))
  </script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>