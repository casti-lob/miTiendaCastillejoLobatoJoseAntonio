<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
</head>
<body>
<!-- Cabecera -->
	<div class="header">
		<h1 class="display-2">Peliculas Castillejo</h1>
	</div>
	<!-- Cabecera -->
	
	
	<!-- Contenedor -->
	<div class="container">
		<!-- Pills navs -->
	<ul class="nav nav-pills nav-justified mb-3" id="ex1" role="tablist">
	  <li class="nav-item" role="presentation">
	    <a class="nav-link active" id="tab-login" data-mdb-toggle="pill" href="#pills-login" role="tab"
	      aria-controls="pills-login" aria-selected="true">Login</a>
	  </li>
	  <li class="nav-item" role="presentation">
	    <a class="nav-link" id="tab-register" data-mdb-toggle="pill" href="login/SingUp.jsp" role="tab"
	      aria-controls="pills-register" aria-selected="false">Register</a>
	  </li>
	</ul>
	<!-- Pills navs -->
	
	<!-- Pills content -->
	<div class="tab-content">
	  <div class="tab-pane fade show active" id="pills-login" role="tabpanel" aria-labelledby="tab-login">
	    <form action="login/LoginUser.jsp" method="post">
	      <div class="text-center mb-3">
	        <p>Inicia sesión</p>

	      </div>
	
	      <!-- Email input -->
	      <div class="form-outline mb-4">
	        <input type="text" id="loginName" name="userName" class="form-control" required="required"/>
	        <label class="form-label" for="loginName">Nombre de usuario</label>
	      </div>
	
	      <!-- Password input -->
	      <div class="form-outline mb-4">
	        <input type="password" id="loginPassword" name="password" class="form-control" required="required" />
	        <label class="form-label" for="loginPassword">Password</label>
	      </div>
	
	     
	      <!-- Submit button -->
	      <button type="submit" class="btn btn-primary btn-block mb-4">Sign in</button>
	
	      <!-- Register buttons -->
	      <div class="text-center">
	        <p>Para acceder a la tienda necesitas tener cuenta <a href="login/SingUp.jsp">Regístrate</a></p>
	      </div>
	    </form>
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