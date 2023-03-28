package com.jacaranda.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ErrorLogin
 */
@WebServlet(name="ErrorLogin", urlPatterns = {"/ErrorLogin"})
public class ErrorLogin extends HttpServlet {
	
	protected void processRequest(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException{
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		try {
			out.println("<html>");
			
			out.println("<head>\r\n"
					+ "<meta charset=\"UTF-8\">\r\n"
					+ "<title>Insert title here</title>\r\n"
					+ "<link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD\" crossorigin=\"anonymous\">\r\n"
					+ "<link rel=\"stylesheet\" href=\"css/index.css\">\r\n"
					+ "</head>");
			
			out.println("<body>\r\n"
					+ "	<!-- Cabecera -->\r\n"
					+ "	<div class=\"header\">\r\n"
					+ "		<ul class=\"nav nav-tabs\">\r\n"
					+ "		  <li class=\"nav-item\">\r\n"
					+ "		    <a class=\"nav-link active\" aria-current=\"page\" href=\"#\">Artículos</a>\r\n"
					+ "		  </li>\r\n"
					+ "		  <li class=\"nav-item\">\r\n"
					+ "		    <a class=\"nav-link\" href=\"../category/Category.jsp\">Categorías</a>\r\n"
					+ "		  </li>\r\n"
					+ "		  <li class=\"nav-item\">\r\n"
					+ "		    <a class=\"nav-link\" href=\"../login/login.jsp\">Login</a>\r\n"
					+ "		  </li>\r\n"
					+ "		</ul>\r\n"
					+ "	</div>\r\n"
					+ "	<!-- Cabecera -->");
			
			out.println("<!-- Contenedor -->\r\n"
					+ "	<div class=\"container\">\r\n"
					+ "		<h1 class=\"display-2\">El usuario no existe</h1>\r\n"
					+"<a href=\"../article/Index.jsp\" class=\"btn btn-primary\">Volver al inicio</a>\r\n"
					+ "	</div>\r\n"
					+ "	<!-- Contenedor -->");
			
			out.println("<!-- Footer -->\r\n"
					+ "	<footer>\r\n"
					+ "		<div class=\"text-center p-3\" style=\"background-color: rgba(0, 0, 0, 0.2);\">\r\n"
					+ "		    © 2020 Copyright:\r\n"
					+ "		    <a class=\"text-dark\" href=\"#\">PeliculasCastillejo.com</a>\r\n"
					+ "		 </div>\r\n"
					+ "	</footer>\r\n"
					+ "	<!-- Footer -->\r\n"
					+ "	\r\n"
					+ "	<script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN\" crossorigin=\"anonymous\"></script>\r\n"
					+ "</body>\r\n"
					+ "</html>");
		}finally{
			out.close();
		}
	}
	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	

}
