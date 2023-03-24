<%@page import="com.jacaranda.controll.CategoryControl"%>
<%@page import="com.jacaranda.Category"%>
<%@page import="com.jacaranda.exception.CategoryException"%>
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
		String name = request.getParameter("name");
		String description = request.getParameter("description");
		try{
			CategoryControl.getCategoryName(name);
			Category newCategory= new Category(name,description);
			CategoryControl.addCategory(newCategory);
		
	%>
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
	<div class="container" align="center">
	<h1 class="display-2">Se ha añadido la nueva Categoría</h1>
		<div class="card">
		    	<div class="card-header">
		    	<p>Nombre Categoría:</p>
		    	 <h5 class="card-title"><%=newCategory.getName() %></h5>
		    	 
		    	</div>
		      <div class="card-body">
		      	<p>
		      	Descripción Categoría:
		      	</p>
		      	
		        <h5 class="card-title"> <%=newCategory.getDescription()%></h5>
		      </div>
				<div class="card-footer text-muted">
					<a href="Category.jsp"class="btn btn-primary">Volver al las categorías</a>
				       
				        
  				</div>
		        
						
					
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
	<%
		}catch(CategoryException e){
			%>
			<!-- Cabecera -->
	<div class="header">
		<ul class="nav nav-tabs">
		  <li class="nav-item">
		    <a class="nav-link" aria-current="page" href="Index.jsp">Artículos</a>
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
	<div class="container" align="center">
	<h1 class="display-2"><%=e.getMessage() %></h1>
	
		  <a href="Index.jsp" class="btn btn-primary">Volver al inicio</a>
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
	
	<%	
	}
	
	%>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>