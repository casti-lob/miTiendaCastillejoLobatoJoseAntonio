<%@page import="com.jacaranda.controll.CategoryControl"%>
<%@page import="com.jacaranda.Category"%>
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
	int idCategory= Integer.parseInt(request.getParameter("id"));
	Category category = CategoryControl.getCatetory(idCategory);
	CategoryControl.deleteCategory(category);
	%>
	<jsp:forward page="Category.jsp"></jsp:forward>
</body>
</html>