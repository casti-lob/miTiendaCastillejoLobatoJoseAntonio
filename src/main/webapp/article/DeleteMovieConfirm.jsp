<%@page import="com.jacaranda.controll.ArticleControl"%>
<%@page import="com.jacaranda.Article"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/index.css">
</head>
<body>
	<%
		//Comprobamos si hay una sesion creada y si no lo dirigimos al servlet de error
		
		if(session.getAttribute("login")==null){%>
			<jsp:forward page="/ErrorLogin"></jsp:forward>
		<%}
	int idMovie= Integer.parseInt(request.getParameter("id"));
	Article movie = ArticleControl.getArticle(idMovie);
	ArticleControl.deleteArticle(movie);
	%>
	<jsp:forward page="Article.jsp"></jsp:forward>
</body>
</html>