<%@page import="com.jacaranda.controll.OrdersControl"%>
<%@page import="com.jacaranda.Orders"%>
<%@page import="java.util.List"%>
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
		int tableNumber=0;
		final int plus=1;
	%>
	<!-- Cabecera -->
		<div class="header">
			<h1 class="display-2">Historial de compras</h1>
		</div>
		<!-- Cabecera -->
		
	<!-- Contenedor -->
	<div class="container" align="center">
		<!-- Boton de ordenar -->
		<div class="btn-group">
		  <button type="button" class="btn btn-danger dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
		    Ordenar
		  </button>
		  <ul class="dropdown-menu">
		    <li><a class="dropdown-item" href="OrderDesc.jsp">Fecha descendente</a></li>
		    <li><a class="dropdown-item" href="OrderAsc.jsp">Fecha ascendente</a></li>
		    
		  </ul>
		</div>
		
		<!-- Tabla -->
		<br><br>
		<table class="table table-striped-columns table-info"">
		  <thead>
		    <tr>
		      <th scope="col">#</th>
		      <th scope="col">Nombre artículo</th>
		      <th scope="col">Cantidad</th>
		      <th scope="col">Precio und</th>
		      <th scope="col">Fecha de la compra</th>
		    </tr>
		  </thead>
		  <tbody>
		  	<%
		  		String user = (String)session.getAttribute("user");
		  		List<Orders> orders= OrdersControl.showOrders(user);
		  		for(Orders order:orders){
		  			
		  	%>
		  		<tr>
			      <th scope="row"><%=tableNumber+=plus %></th>
			      <td><%=order.getIdArticle().getTitle() %></td>
			      <td><%=order.getAmount() %></td>
			      <td> <%=order.getPrice() %>
			      <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-currency-euro" viewBox="0 0 16 16">
					  <path d="M4 9.42h1.063C5.4 12.323 7.317 14 10.34 14c.622 0 1.167-.068 1.659-.185v-1.3c-.484.119-1.045.17-1.659.17-2.1 0-3.455-1.198-3.775-3.264h4.017v-.928H6.497v-.936c0-.11 0-.219.008-.329h4.078v-.927H6.618c.388-1.898 1.719-2.985 3.723-2.985.614 0 1.175.05 1.659.177V2.194A6.617 6.617 0 0 0 10.341 2c-2.928 0-4.82 1.569-5.244 4.3H4v.928h1.01v1.265H4v.928z"/>
					</svg>
			      </td>
			      <td><%=order.getDateOfPurchase() %></td>
			    </tr>
		  	<%
		  		}
		  	%>
		  </tbody>
		  
		</table>
		
		<a href="../article/Article.jsp" class="btn btn-primary">Volver a artículos</a>
	</div>
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