<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>

</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-light bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand text-white">Prueba Técnica Axa</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active text-white"
						aria-current="page" href="home">Home</a></li>
					<li class="nav-item"><a class="nav-link active text-white"
						aria-current="page" href="users">Usuarios registrados</a></li>
					<li class="nav-item"><a class="nav-link active text-white"
						href="form">Registro usuario</a></li>
				</ul>

			</div>
		</div>
	</nav>

	<div
		style="position: absolute; top: 48%; left: 50%; transform: translate(-49%, -49%);">
		<h1 class="text-center">Register Form</h1>
		<form action="/submitForm" method="post">
			<div class="mb-3">
				<label for="exampleInputName" class="form-label">Name</label> <input
					type="text" name="name" class="form-control" required minlength="4"
					maxlength="50" placeholder="Máximo 50 carácteres"
					pattern="\b[A-Z][a-z]*( [A-Z][a-z]*)\b">
				<div class="form-text">Por favor ingresar nombre con el
					siguiente formato "Pepito Pérez"</div>
			</div>
			<div class="mb-3">
				<label for="exampleInputAge" class="form-label">Age</label> <input
					type="number" name="age" class="form-control" min="00" max="99"
					required>
				<div class="form-text">Entre 00-99"</div>
			</div>
			<div class="mb-3">
				<label for="exampleInputPhoneNumber" class="form-label">Phone
					Number</label> <input type="tel" name="phone" class="form-control" required
					pattern="[0-9]{10}">
				<div class="form-text">Debe contener 10 dígitos"</div>
			</div>
			<div class="mb-3">
				<label for="exampleInputPhoneNumber" class="form-label">Address</label>
				<input type="text" name="address" class="form-control" required
					pattern="[A-Za-z]*( [0-9]{2} [#] [0-9]{2})">
				<div class="form-text">Formato ejemplo Calle 24 # 32A - 56sur
					"</div>
			</div>

			<button type="submit" name="buttonsubmit" class="btn btn-primary">Submit</button>
		</form>
	</div>
	
	<footer style = "background-color: #333; color: #fff; text-align: center; padding: 10px; bottom: 0; left: 0;  position: absolute;  width: 100%;">
		<p>Prueba Carlos Navarrete</p>		
	</footer>
</body>
</html>