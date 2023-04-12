<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<link rel="stylesheet" href="../css/index.css">

<script>
		function checkPassword() {
			const password = document.getElementById('password').value
			const passwordConfirm= document.getElementById('passwordConfirm').value
	
			if(password== passwordConfirm){
				submit =  document.getElementById('submit').disabled = false;
				alert = document.getElementById('alert').hidden = true;
			
			}else{
				submit =  document.getElementById('submit').disabled = true;
				alert = document.getElementById('alert').hidden = false;
			}
			
		}
	</script>
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
	    <a class="nav-link " id="tab-login" data-mdb-toggle="pill" href="../Index.jsp" role="tab"
	      aria-controls="pills-login" aria-selected="true">Login</a>
	  </li>
	  <li class="nav-item" role="presentation">
	    <a class="nav-link active" id="tab-register" data-mdb-toggle="pill" href="#pills-register" role="tab"
	      aria-controls="pills-register" aria-selected="false">Register</a>
	  </li>
	</ul>
	<!-- Pills navs --> 
	
	<!-- Pills content -->
	<div class="tab-content">
	  <div class="tab-pane fade show active" id="pills-login" role="tabpanel" aria-labelledby="tab-login">
	    <form action="AddUser.jsp" method="post">
	      <div class="text-center mb-3">
	        <p>Crear usuario</p>

	      </div>
	
	      <!-- Email input -->
	      <div class="form-outline mb-4">
	        <input type="text" id="userName" name="userName" class="form-control" required="required"/>
	        <label class="form-label" for="loginName">Nombre de usuario</label>
	      </div>
	
	      <!-- Password input -->
	      <div class="form-outline mb-4">
	        <input type="password" id="password" name="password" onchange="checkPassword()" class="form-control" required="required" />
	        <label class="form-label" for="loginPassword">Password</label>
	      </div>
	      
	      <div class="form-outline mb-4">
	        <input type="password" id="passwordConfirm" name="passwordConfirm" onchange="checkPassword()" class="form-control" required="required" />
	        <label class="form-label" for="passwordConfirm" >Confirma Password</label>
	      </div>
	      <!-- Alerta -->
	      <div id="alert" class="alert alert-danger" role="alert" hidden="true">
			  !!! El password y confima password son diferentes!!! Tienen que coincidir
			</div>
		
		 <!-- Datos -->
	      <div class="form-outline mb-4">
	        <input type="text" id="name" name="name" class="form-control" required="required"/>
	        <label class="form-label" for="name">Nombre</label>
	      </div>
	      
	       
	      <div class="form-outline mb-4">
	        <input type="text" id="surname" name="surname" class="form-control" required="required"/>
	        <label class="form-label" for="surname">Apellidos</label>
	      </div>
	      
	       <div class="form-outline mb-4">
	        <input type="date" id="birthdayDate" name="birthdayDate" class="form-control" required="required"/>
	        <label class="form-label" for="birthdayDate">Fecha de nacimiento</label>
	      </div>
	        
	      <div class="form-check">
	       <label class="form-label" for="gender">Sexo</label>
	        <input type="radio" id="gender" name="gender" value="M" class="form-check-input" required="required"/>
	        <label class="form-check-label" for="flexRadioDefault1">
    			Masculino
 			 </label>
 			 </div>
	       	<div class="form-check">
	       	<input type="radio" id="gender" name="gender" value="F" class="form-check-input" required="required"/> 
	       	 <label class="form-check-label" for="flexRadioDefault1">
    			Femenino
 			 </label>
	      </div>
	     
	      <!-- Submit button -->
	      <button id="submit" type="submit" class="btn btn-primary btn-block mb-4">Crear Usuario</button>
	
	      <!-- Register buttons -->
	      <div class="text-center">
	        <p>Para acceder a la tienda necesitas tener cuenta <a href="#!">Regístrate</a></p>
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