<%@ page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Prueba Axa</title>
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/META-INF/resources/WEB-INF/css/styles.css">

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

<body style="background-color: rgb(176, 92, 92);">

	<nav class="navbar navbar-expand-lg navbar-light bg-dark" >
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
					<li class="nav-item"><a class="nav-link active text-white" href="form">Registro
							usuario</a></li>
				</ul>

			</div>
		</div>
	</nav>

	<div style="line-height: 500px; text-align: center;">
		<a href="users"><button type="button"
				class="btn btn-primary btn-lg">Usuarios registrados</button></a> <a
			href="form"><button type="button"
				class="btn btn-secondary btn-lg">Registro usuario</button></a>
	</div>



	<footer style = "background-color: #333; color: #fff; text-align: center; padding: 10px; bottom: 0; left: 0;  position: absolute;  width: 100%;">
		<p>Prueba Carlos Navarrete</p>		
	</footer>

</body>

</html>