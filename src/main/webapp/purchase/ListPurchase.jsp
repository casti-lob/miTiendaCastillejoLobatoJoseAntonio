<%@page import="com.jacaranda.Article"%>
<%@page import="java.util.Set"%>
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
	<div class="header">
	</div>
	<%
		Purchase list =(Purchase) session.getAttribute("listPurchase");
		int total = 0;
	%>
	<div class="container" style="margin-top: 50px;width: 50%;" >
		<ol class="list-group list-group-numbered" >
		<%
			for(Article article:list.getKeyPurchase()){
		%>
		  <li class="list-group-item d-flex justify-content-between align-items-start">
		    <div class="ms-2 me-auto">
		      <div class="fw-bold">Pelicula: <%=article.getTitle() %></div>
		      Precio: <%=article.getPrice() %>
		    </div>
		    <span class="badge bg-primary rounded-pill"><%=list.getUnit(article) %></span>
		  </li>
		  <%
		  
		  	
		  	total += article.getPrice()*list.getUnit(article);
			} %>
			
			<li class="list-group-item d-flex justify-content-between align-items-start">
		    <div class="ms-2 me-auto">
		      <div class="fw-bold">Total de la compra: <%=total %>
					<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-currency-euro" viewBox="0 0 16 16">
					  <path d="M4 9.42h1.063C5.4 12.323 7.317 14 10.34 14c.622 0 1.167-.068 1.659-.185v-1.3c-.484.119-1.045.17-1.659.17-2.1 0-3.455-1.198-3.775-3.264h4.017v-.928H6.497v-.936c0-.11 0-.219.008-.329h4.078v-.927H6.618c.388-1.898 1.719-2.985 3.723-2.985.614 0 1.175.05 1.659.177V2.194A6.617 6.617 0 0 0 10.341 2c-2.928 0-4.82 1.569-5.244 4.3H4v.928h1.01v1.265H4v.928z"/>
					</svg>
				</div>
		      <a href="" class="btn btn-primary">Comprar</a>
		      <a href="../article/Article.jsp" class="btn btn-primary">Volver</a>
		    </div>
		  </li>
		  </ol>
	</div>
	<footer>
	</footer>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
	
</body>
</html>