<%@page import="com.jacaranda.controll.CategoryControl"%>
<%@page import="com.jacaranda.Category"%>
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
	int idCategory= Integer.parseInt(request.getParameter("id"));
	Category category = CategoryControl.getCatetory(idCategory);
	CategoryControl.deleteCategory(category);
	%>
	<jsp:forward page="Category.jsp"></jsp:forward>
</body>
</html>