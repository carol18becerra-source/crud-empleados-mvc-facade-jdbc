<%@page import="com.example.models.Departamento"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Formulario</title>
<style>
/* Importamos la misma tipografía limpia y moderna */
@import
	url('https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap')
	;

body {
	font-family: 'Inter', sans-serif;
	background-color: #0f172a; /* Mismo fondo oscuro premium */
	color: #f1f5f9;
	margin: 0;
	padding: 40px 20px;
	display: flex;
	flex-direction: column;
	align-items: center;
}

h1 {
	text-align: center;
	font-size: 2.5rem;
	font-weight: 700;
	background: linear-gradient(135deg, #38bdf8, #818cf8);
	/* Degradado chulo en el título */
	-webkit-background-clip: text;
	-webkit-text-fill-color: transparent;
	margin-bottom: 40px;
	letter-spacing: -0.05em;
}

/* Contenedor principal del formulario (reemplaza el estilo aburrido del fieldset) */
body>fieldset {
	width: 100%;
	max-width: 650px;
	background: #1e293b;
	border: 1px solid #334155;
	border-radius: 16px;
	padding: 30px;
	box-shadow: 0 10px 25px -5px rgba(0, 0, 0, 0.4);
}

body>fieldset>legend {
	color: #38bdf8;
	font-weight: 600;
	font-size: 0.9rem;
	text-transform: uppercase;
	letter-spacing: 0.05em;
	padding: 0 10px;
}

/* Estructura interna de los campos */
form div {
	margin-bottom: 20px;
}

label {
	display: inline-block;
	font-size: 0.9rem;
	font-weight: 500;
	color: #94a3b8;
	margin-bottom: 8px;
}

/* Inputs de texto, fechas y selects unificados y modernos */
input[type="text"], input[type="date"], select, input:not([type="radio"]):not([type="submit"]):not([type="reset"])
	{
	width: 100%;
	padding: 12px 16px;
	background-color: #0f172a;
	border: 1px solid #334155;
	border-radius: 8px;
	color: #f1f5f9;
	font-size: 0.95rem;
	font-family: inherit;
	box-sizing: border-box;
	transition: all 0.2s ease;
}

/* Efecto focus: cuando el usuario hace clic para escribir */
input[type="text"]:focus, input[type="date"]:focus, select:focus {
	outline: none;
	border-color: #38bdf8;
	box-shadow: 0 0 0 3px rgba(56, 189, 248, 0.15);
	background-color: #111e36;
}

/* Sub-fieldset exclusivo para el género */
div fieldset {
	border: 1px solid #334155;
	border-radius: 10px;
	padding: 15px 20px;
	background-color: #182235;
	margin-bottom: 20px;
}

div fieldset legend {
	color: #818cf8;
	font-size: 0.85rem;
	font-weight: 600;
	padding: 0 8px;
}

/* Estilo para los radio buttons de género */
input[type="radio"] {
	margin-right: 6px;
	accent-color: #38bdf8;
	/* Cambia el color del círculo del radio button a juego */
	cursor: pointer;
}

div fieldset label {
	color: #e2e8f0;
	margin-right: 20px;
	cursor: pointer;
}

/* Contenedor de botones inferiores */
.botones-container {
	display: flex;
	gap: 15px;
	margin-top: 30px;
}

/* Botón Enviar (Estilo idéntico al botón del listado) */
input[type="submit"] {
	flex: 2;
	/* Hace que el botón de enviar sea más ancho que el de borrar */
	padding: 14px 28px;
	font-weight: 600;
	font-size: 1rem;
	color: #ffffff;
	background: linear-gradient(135deg, #4f46e5, #06b6d4);
	border: none;
	border-radius: 10px;
	box-shadow: 0 4px 14px rgba(79, 70, 229, 0.4);
	cursor: pointer;
	transition: transform 0.2s, box-shadow 0.2s, filter 0.2s;
}

input[type="submit"]:hover {
	transform: translateY(-2px);
	box-shadow: 0 6px 20px rgba(79, 70, 229, 0.6);
	filter: brightness(1.1);
}

/* Botón Borrar (Estilo secundario, más discreto pero elegante) */
input[type="reset"] {
	flex: 1;
	padding: 14px 24px;
	font-weight: 600;
	font-size: 1rem;
	color: #94a3b8;
	background-color: #334155;
	border: none;
	border-radius: 10px;
	cursor: pointer;
	transition: background-color 0.2s, color 0.2s;
}

input[type="reset"]:hover {
	background-color: #ef4444; /* Cambia a rojo sutil al querer borrar */
	color: #ffffff;
}

input[type="submit"]:active, input[type="reset"]:active {
	transform: scale(0.98);
}
</style>
</head>
<body>
	<h1>Formulario de Alta/Modificación de Empleado</h1>

	<fieldset>
		<legend>Formulario de Gestión de Empleado</legend>
		<form action="AltaController" method="post">

			<div>
				<label for="nombre">Nombre:</label> <input id="nombre" name="nombre"
					placeholder="Ingrese su nombre aquí" required>
			</div>

			<div>
				<label for="primerApellido">Primer Apellido:</label> <input
					id="primerApellido" name="primerApellido"
					placeholder="Ingrese su primer apellido aquí" required>
			</div>

			<div>
				<label for="segundoApellido">Segundo Apellido:</label> <input
					id="segundoApellido" name="segundoApellido"
					placeholder="Ingrese su segundo apellido aquí">
			</div>

			<div>
				<label for="fechaAlta">Fecha de Alta:</label> <input type="date"
					id="fechaAlta" name="fechaAlta" required>
			</div>

			<div>
				<fieldset>
					<legend>Género</legend>
					<input type="radio" id="HOMBRE" name="genero" value="HOMBRE"
						required> <label for="HOMBRE">Hombre</label> <input
						type="radio" id="MUJER" name="genero" value="MUJER" required>
					<label for="MUJER">Mujer</label> <input type="radio" id="OTRO"
						name="genero" value="OTRO" required> <label for="OTRO">Otro</label>
				</fieldset>

				<div>
					<label for="salario">Salario:</label> <input type="text"
						id="salario" name="salario" placeholder="Ej: 3500" required>
				</div>

				<div>
					<%
					List<Departamento> departamentos = (List<Departamento>) request.getAttribute("departamentos");
					%>

					<label for="departamento">Departamento:</label> <select
						id="departamento" name="departamento" required>
						<option value="" disabled selected hidden>Seleccione un
							departamento</option>
						<%
						for (Departamento departamento : departamentos) {
						%>
						<option value="<%=departamento.id()%>"><%=departamento.nombre()%></option>
						<%
						}
						%>
					</select>

					<div>
						<label for="correos">Correos:</label> <input type="text"
							id="correos" name="correos"
							placeholder="Uno o varios separados por ;">
					</div>

					<div>
						<label for="telefonos">Números de Teléfono:</label> <input
							type="text" id="telefonos" name="telefonos"
							placeholder="Uno o varios separados por ;">
					</div>
				</div>
			</div>

			<div class="botones-container">
				<input type="submit" value="Enviar"> <input type="reset"
					value="Borrar">
			</div>
		</form>
	</fieldset>

</body>
</html>