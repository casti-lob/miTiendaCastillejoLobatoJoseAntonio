<%@page import="com.jacaranda.controll.CategoryControl"%>
<%@page import="com.jacaranda.Category"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<link rel="stylesheet" href="../css/index.css">

</head>
<body>
<%
		//Comprobamos si hay una sesion creada y si no lo dirigimos al servlet de error
		
		if(session.getAttribute("login")==null){%>
			<jsp:forward page="/ErrorLogin"></jsp:forward>
		<%}
	%>
<%
	int id = Integer.parseInt(request.getParameter("id"));
	Category category = CategoryControl.getCatetory(id);
%>
	<!-- Cabecera -->
	<div class="header">
		<ul class="nav nav-tabs">
		  <li class="nav-item">
		    <a class="nav-link" aria-current="page" href="../article/Article.jsp">Artículos</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" href="Category.jsp">Categorías</a>
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
		     <li><a class="dropdown-item  text-danger"  
               href="../purchase/HistoryPurchase.jsp">Historial de Compras</a></li>
		      <li><a class="dropdown-item  text-danger"  data-bs-toggle="tooltip"
              data-bs-title="Al cerrar sesión no podras acceder a los artículos ni categorías" href="../login/SingOut.jsp">Cerrar sesión</a></li>
		      
		    </ul>
		  </li>
		</ul>
	</div>
	<!-- Cabecera -->
	
	<!-- Contenedor -->
	<div class="container" >
	<h1 class="display-2">Vas a modificar una categoría</h1>
		<form action="ModCategoryConfirm.jsp" method="post">
		<div class="mb-3">
		<!-- Ocultamos elemento para enviarlo -->
		    <input type="text" hidden value="<%=category.getId() %>" class="form-control" id="id" name="id" >
		  </div>
		  <div class="mb-3">
		    <label for="titleMovie" class="form-label">Nombre</label>
		    <input type="text" value="<%=category.getName() %>" class="form-control" id="name" name="name" required="required" >
		  </div>
		   <div class="mb-3">  		
		    <label for="sinopsis" class="form-label">Descripción</label>
		    <textarea class="form-control" value="<%=category.getDescription() %>" id="description" name="description" style="height: 100px" required="required"><%=category.getDescription()%></textarea>
		  </div>
		 
		  
		  	<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                Modificar
              </button>
		  <button type="reset" class="btn btn-primary">Borrar</button>
		  <!-- Modal -->
			<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
			  <div class="modal-dialog">
			    <div class="modal-content">
			      <div class="modal-header">
			        <h1 class="modal-title fs-5" id="exampleModalLabel">Vas a modificar una categoría</h1>
			        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			      </div>
			      <div class="modal-body">
			        ¿Estas seguro de modificar la categoría?
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" data-bs-target="#exampleModal">Close</button>
			        
			        <button type="submit" class="btn btn-danger">Confirmar</button>
			       
			        
			      </div>
			    </div>
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