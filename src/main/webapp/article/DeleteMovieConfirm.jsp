<%@page import="com.jacaranda.controll.ArticleControl"%>
<%@page import="com.jacaranda.Article"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	int idMovie= Integer.parseInt(request.getParameter("id"));
	Article movie = ArticleControl.getArticle(idMovie);
	ArticleControl.deleteArticle(movie);
	%>
	<jsp:forward page="Index.jsp"></jsp:forward>
</body>
</html>