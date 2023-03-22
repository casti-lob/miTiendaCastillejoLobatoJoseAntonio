<%@page import="com.jacaranda.controll.CategoryControl"%>
<%@page import="com.jacaranda.Category"%>
<%@page import="java.util.List"%>
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
		<ul class="nav nav-tabs">
		  <li class="nav-item">
		    <a class="nav-link" aria-current="page" href="Index.jsp">Artículos</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" href="#">Categorías</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" href="#">Login</a>
		  </li>
		</ul>
	</div>
	<!-- Cabecera -->
	
	<!-- Contenedor -->
	<div class="container">
		<form action="AddMovieConfirm.jsp" method="post">
		  <div class="mb-3">
		    <label for="titleMovie" class="form-label">Título</label>
		    <input type="text" class="form-control" id="title" name="title" >
		  </div>
		   <div class="mb-3">  		
		    <label for="sinopsis" class="form-label">Sinopsis</label>
		    <textarea class="form-control" placeholder="Descripción de la película" id="sinopsis" name="sinopsis" style="height: 100px"></textarea>
		  </div>
		  <div class="mb-3">
		    <label for="price" class="form-label">Precio</label>
		    <input type="number" step="0.01" class="form-control" id="price" name="price" >
		  </div>
		  <div class="mb-3">
		      <label for="category" class="form-label">Género</label>
		      <select id="category" class="form-select" name="category">
		      	<%
		      		//Obtenemos la categorias para mostrar el género y asignarle su id
		      		List<Category> category = CategoryControl.showCategory();
		    		for(Category i: category){
		      	%>
		        <option value=<%=i.getId()%>><%=i.getName() %></option>
		        <%} %>
		      </select>
		   </div>
		   <div class="mb-3">
		    	<label for="stock" class="form-label">Stock</label>
		    	<input type="number" class="form-control" id="stock" name="stock" >
		  	</div>
		  	<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                Añadir
              </button>
		  <button type="reset" class="btn btn-primary">Borrar</button>
	 		
	 		<!-- Modal -->
			<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
			  <div class="modal-dialog">
			    <div class="modal-content">
			      <div class="modal-header">
			        <h1 class="modal-title fs-5" id="exampleModalLabel">Vas a crear una nueva Película</h1>
			        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			      </div>
			      <div class="modal-body">
			        ¿Estas seguro de añadir la nueva película?
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" data-bs-target="#exampleModal">Close</button>
			        
			        <button type="submit" class="btn btn-primary">Confirmar</button>
			       
			        
			      </div>
			    </div>
			  </div>
			</div>
		</form>
		
		 
		
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