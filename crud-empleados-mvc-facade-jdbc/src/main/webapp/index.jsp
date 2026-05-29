<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Página de inicio</title>
<style>
/* Importamos la misma tipografía moderna */
@import url('https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600;700&display=swap');

body {
	font-family: 'Inter', sans-serif;
	background-color: #0f172a; /* Fondo oscuro premium */
	color: #f1f5f9;
	margin: 0;
	padding: 40px 20px;
	min-height: 80vh;
	display: flex;
	flex-direction: column;
	justify-content: center; /* Centra el contenido verticalmente para que quede genial */
}

h1 {
	text-align: center;
	font-size: 2.8rem;
	font-weight: 700;
	background: linear-gradient(135deg, #38bdf8, #818cf8); /* El mismo degradado chulo */
	-webkit-background-clip: text;
	-webkit-text-fill-color: transparent;
	margin-bottom: 40px;
	letter-spacing: -0.05em;
}

.contenedor-boton {
	text-align: center;
	margin-top: 20px;
}

a {
	display: inline-block;
	padding: 16px 36px; /* Un poco más amplio para que se vea imponente */
	font-weight: 600;
	font-size: 1.05rem;
	color: #ffffff;
	background: linear-gradient(135deg, #4f46e5, #06b6d4); /* Degradado vivo y moderno */
	text-decoration: none;
	border-radius: 12px; /* Esquinas redondeadas modernas, no exageradas */
	box-shadow: 0 4px 20px rgba(79, 70, 229, 0.4); /* Sombra con el color del botón (efecto neón sutil) */
	transition: transform 0.2s cubic-bezier(0.4, 0, 0.2, 1), box-shadow 0.2s, filter 0.2s;
	letter-spacing: 0.02em;
}

a:hover {
	transform: translateY(-3px); /* Flota ligeramente al pasar el ratón */
	box-shadow: 0 8px 25px rgba(79, 70, 229, 0.6); /* La sombra se expande */
	filter: brightness(1.1); /* Brilla un pelín más */
}

a:active {
	transform: translateY(-1px); /* Efecto de hundirse al hacer clic */
}
</style>
</head>
<body>
	<h1>Bienvenido a la aplicación de gestión de empleados</h1>
	<div class="contenedor-boton">
		<a href="MainController">Mostrar lista de empleados</a>
	</div>
</body>
</html>