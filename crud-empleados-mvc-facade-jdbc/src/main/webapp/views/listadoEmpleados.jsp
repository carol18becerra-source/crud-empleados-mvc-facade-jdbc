<%@page import="com.example.models.Empleado"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Listado Empleados</title>
<style>
/* Importamos una tipografía moderna y limpia */
@import url('https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600;700&display=swap');

body {
	font-family: 'Inter', sans-serif;
	background-color: #0f172a; /* Fondo oscuro nórdico muy pro */
	color: #f1f5f9;
	margin: 0;
	padding: 40px 20px;
	display: flex;
	flex-direction: column;
	align-items: center;
}

h1 {
	text-align: center;
	font-size: 2.8rem;
	font-weight: 700;
	background: linear-gradient(135deg, #38bdf8, #818cf8); /* Degradado moderno en el texto */
	-webkit-background-clip: text;
	-webkit-text-fill-color: transparent;
	margin-bottom: 35px;
	letter-spacing: -0.05em;
}

/* Botón MÁS GRANDE con separación inferior hacia la tabla */
a {
	display: inline-block; 
	margin-bottom: 50px;   /* ¡Clave! Empuja la tabla hacia abajo para que no se peguen */
	padding: 18px 40px;    /* Más grande y espacioso */
	font-weight: 600;
	font-size: 1.1rem;     /* Letra más grande y legible */
	color: #ffffff;
	background: linear-gradient(135deg, #4f46e5, #06b6d4); /* Degradado vivo */
	text-decoration: none;
	border-radius: 12px;   /* Esquinas redondeadas un poco más amplias */
	box-shadow: 0 4px 18px rgba(79, 70, 229, 0.45);
	transition: transform 0.2s, box-shadow 0.2s, filter 0.2s;
	letter-spacing: 0.02em;
}

a:hover {
	transform: translateY(-3px); /* Flota un poco más */
	box-shadow: 0 8px 25px rgba(79, 70, 229, 0.6);
	filter: brightness(1.1);
}

a:active {
	transform: translateY(-1px);
}

/* Contenedor invisible para que la tabla no se rompa en móviles */
.table-container {
	width: 100%;
	max-width: 1100px;
	overflow-x: auto;
	background: #1e293b;
	padding: 12px;
	border-radius: 16px;
	box-shadow: 0 10px 25px -5px rgba(0, 0, 0, 0.4), 0 8px 10px -6px rgba(0, 0, 0, 0.4);
}

table {
	width: 100%;
	border-collapse: collapse;
	background-color: #1e293b;
	color: #e2e8f0;
}

th, td {
	padding: 18px 22px; /* Un pelín más de aire en las celdas */
	text-align: left;
}

th {
	background-color: #1e293b;
	color: #38bdf8; /* Azul eléctrico para destacar */
	font-weight: 600;
	text-transform: uppercase;
	font-size: 0.85rem;
	letter-spacing: 0.05em;
	border-bottom: 2px solid #334155;
}

td {
	border-bottom: 1px solid #334155;
	font-size: 0.95rem;
	transition: all 0.2s ease;
}

/* Efecto cebra sutil y hover en las filas */
tr:nth-child(even) td {
	background-color: #24334d;
}

tr:hover td {
	background-color: #2e3f5a !important; /* Brillo al pasar el ratón */
	color: #ffffff;
}
</style>
</head>
<body>
	<%
	List<Empleado> empleados = (List<Empleado>) request.getAttribute("empleados");
	%>
	<h1>Listado de Empleados</h1>

	<div>
		<a href="AltaController"
			title="Muestra el formulario de alta/modificación de empleado">Alta
			de Empleado</a>
	</div>

	<table>
		<thead>
			<tr>
				<th>Nombre</th>
				<th>Primer Apellido</th>
				<th>Segundo Apellido</th>
				<th>Fecha Alta</th>
				<th>Genero</th>
				<th>Salario</th>
			</tr>

		</thead>
		<tbody>
			<%
			for (Empleado empleado : empleados) {
			%>
			<tr>
				<td><%=empleado.nombre()%></td>
				<td><%=empleado.primerApellido()%></td>
				<td><%=empleado.segundoApellido()%></td>
				<td><%=empleado.fechaAlta()%></td>
				<td><%=empleado.genero()%></td>
				<td><%=empleado.salario()%></td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>
</body>
</html>