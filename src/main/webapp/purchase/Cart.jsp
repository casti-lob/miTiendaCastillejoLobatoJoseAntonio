<%@page import="com.jacaranda.controll.ArticleControl"%>
<%@page import="com.jacaranda.Article"%>
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
	int id = Integer.parseInt(request.getParameter("id"));
	int stock = Integer.parseInt(request.getParameter("stockPurchase"));
	Article article = ArticleControl.getArticle(id);
	Purchase listPurchase =(Purchase)session.getAttribute("listPurchase");
	try{
	listPurchase.addPurchase(article, stock);
	%>
	<jsp:forward page="../article/Article.jsp"></jsp:forward>
	<% }catch(Exception e){%>
		<!-- Alerta -->
		<div class="header">
		</div>
		<div class="container" align="center" style="margin-top: 50px">
		
	      	<div id="alert" class="alert alert-danger" role="alert" h>
			  !!! <%=e.getMessage() %> !!!
			</div>
			<a href="../article/Article.jsp" class="btn btn-primary">Volver</a>
		</div>
		<footer></footer>
	<%}
	%>
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>