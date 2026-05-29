<%@page import="com.example.models.Departamento"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f6f9;
	margin: 0;
	padding: 30px;
}

h1 {
	text-align: center;
	color: #2c3e50;
	margin-bottom: 30px;
}
</style>
<meta charset="UTF-8">
<title>Formulario</title>
</head>
<body>
	<h1>Formulario de Alta/Modificación de Empleado</h1>

	<fieldset>
		<legend>Formulario de Gestion de Empleado</legend>
		<form action="#" method="post">


			<div>
				<label for="nombre">Nombre:</label><br> <input id="nombre"
					name="nombre" placeholder="Ingrese su nombre aqui" required>
			</div>
			<div>
				<label for="primerApellido">Primer Apellido:</label><br> <input
					id="primerApellido" name="primerApellido"
					placeholder="Ingrese su primerApellido aqui" required>
			</div>
			<div>
				<label for="segundoApellido">Segundo Apellido:</label><br> <input
					id="segundoApellido" name="segundoApellido"
					placeholder="Ingrese su segundoApellido aqui">
			</div>
			<div>
				<label for="fechaAlta">Fecha de Alta:</label><br> <input
					type="date" id="fechaAlta" name="fechaAlta" required>
			</div>

			<div>
				<fieldset>
					<legend>Genero</legend>
					<input type="radio" id="HOMBRE" name="genero" value="HOMBRE"
						required> <label for="HOMBRE">Hombre</label> <input
						type="radio" id="MUJER" name="genero" value="MUJER" required>
					<label for="MUJER">Mujer</label> <input type="radio" id="OTRO"
						name="genero" value="OTRO" required> <label for="OTRO">Otro</label>
				</fieldset>

				<div>
					<label for="salario">Salario:</label> <input type="text"
						id="salario" name="salario" required>
				</div>

				<div>

					<%
					List<Departamento> departamentos = (List<Departamento>) request.getAttribute("departamentos");
					%>

					<label for="departamento">Departamento:</label> <select
						id="departamento" name="departamento" required>
						<option></option>
						<%
						for (Departamento departamento : departamentos) {
						%>
						<option value="<%=departamento.id()%>">
							<%=departamento.nombre()%></option>

						<%
						}
						%>
					</select>

					<div>
						<label for="correos">Correos: </label> <input type="text"
							id="correos" name="correos"
							placeholder="Uno o varios separados por ;">
					</div>

					<div>
						<label for="telefonos">Numeros de Telefono: </label> <input
							type="text" id="telefonos" name="telefonos"
							placeholder="Uno o varios separados por ;">
					</div>
				</div>

			</div>





			<input type="submit" value="Enviar"> <input type="reset"
				value="Borrar">
		</form>
	</fieldset>

</body>
</html>