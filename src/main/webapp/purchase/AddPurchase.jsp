<%@page import="com.jacaranda.controll.ArticleControl"%>
<%@page import="com.jacaranda.controll.OrdersControl"%>
<%@page import="com.jacaranda.controll.UserControl"%>
<%@page import="com.jacaranda.Orders"%>
<%@page import="com.jacaranda.Article"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="com.jacaranda.Purchase"%>
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
		<%}%>
	<div class="header">
		<ul class="nav nav-tabs">
		  <li class="nav-item">
		    <a class="nav-link" aria-current="page" href="Article.jsp">Art�culos</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" href="../category/Category.jsp">Categor�as</a>
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
              data-bs-title="Al cerrar sesi�n no podras acceder a los art�culos ni categor�as" href="../login/SingOut.jsp">Cerrar sesi�n</a></li>
		      
		    </ul>
		  </li>
		</ul>
	</div>
	<div class="container" align="center">
		
		<%
			//Obtenemos la lista de pedidos
			Purchase list =(Purchase) session.getAttribute("listPurchase");
		//Obtenemos la fecha de la compra para el order
			LocalDateTime datePurchase = LocalDateTime.now();
		//Obtenemos el user para el order
			String user =(String) session.getAttribute("user");
			for(Article article:list.getKeyPurchase()){
				//Creamos el order y lo subimos a la bbdd
				Orders newOrders= new Orders(datePurchase,list.getUnit(article),article.getPrice(),UserControl.getUser(user),article);
				OrdersControl.addOrder(newOrders);
				//Modificamos el articulo
				Article newArticle = new Article(article.getTitle(),article.getSinopsis(),article.getPrice(),article.getStock()-list.getUnit(article) ,article.getIdCategory());
				ArticleControl.modArticle(newArticle, article.getId());
				
				//Limpiamos la lista de purchase
				
			}
			list.clearPurchase();
			
		%>
		
		<h1 class="display-2">Gracias por su compra</h1>
		 <a href="../article/Article.jsp" class="btn btn-primary">Volver</a>
	</div>
	
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