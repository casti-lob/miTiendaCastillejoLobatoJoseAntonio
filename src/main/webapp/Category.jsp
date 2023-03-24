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
<link rel="stylesheet" href="css/index.css">

</head>
<body>
		<!-- Cabecera -->
	<div class="header">
		<ul class="nav nav-tabs">
		  <li class="nav-item">
		    <a class="nav-link " aria-current="page" href="Index.jsp">Artículos</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link active" href="#">Categorías</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" href="#">Login</a>
		  </li>
		</ul>
	</div>
	<!-- Cabecera -->
	
	<!-- Contenedor -->
	<div class="container">
		<div class="list-group">
			<div class="row">
				<div class="card text-center">
				  <div class="card-body">
				    <h5 class="card-title">Añada una nueva categoría</h5>
				    <a href="AddCategory.jsp" class="btn btn-primary">Añadir</a>
				  </div>
				</div>
			<%
				List <Category> categories = CategoryControl.showCategory();
			
				for(Category i: categories){
			%>
		       <div class="col-sm-6 col-md-6">
		    <div class="card">
		    	<div class="card-header">
		    	<p>Nombre Categoría:</p>
		    	 <h5 class="card-title"><%=i.getName() %></h5>
		    	 
		    	</div>
		      <div class="card-body">
		      	<p>
		      	Descripción Categoría:
		      	</p>
		      	
		        <h5 class="card-title"> <%=i.getDescription()%></h5>
		      </div>
				<div class="card-footer text-muted">
					<a href="DeleteCategory.jsp?id=<%=i.getId()%>"class="btn btn-primary">Borrar</a>
				        <a href="ModCategory.jsp?id=<%=i.getId()%>" class="btn btn-primary">Editar</a>
				        
  				</div>
		        
						
					
		    </div>
		  </div>
          	<%
				}
          	%>
		
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
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>