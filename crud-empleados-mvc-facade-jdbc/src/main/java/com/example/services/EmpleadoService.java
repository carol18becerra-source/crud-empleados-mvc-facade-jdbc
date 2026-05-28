package com.example.services;

import java.sql.SQLException;
import java.util.List;

import com.example.models.Empleado;

public interface EmpleadoService {
	
	boolean isConnectionOk() throws SQLException;
	List<Empleado> getEmpleados();
	
	
}
