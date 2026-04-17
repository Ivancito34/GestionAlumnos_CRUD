<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.proyecto.crud.Alumnos" %>
<% Alumnos a = (Alumnos) request.getAttribute("alum"); %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar Alumno</title>
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    
    <link rel="stylesheet" type="text/css" href="css/estilos.css">
</head>
<body>

<div class="form-main-container edit-mode">
    <header class="form-header">
        <h2><i class="fa-solid fa-user-pen"></i> Editar Datos de Alumno</h2>
        <p>Registro<strong> #<%= a.getid() %> </strong>Seleccionado</p>
    </header>
    
    <hr class="divider">

    <form action="ConsultaServlet" method="post" class="main-form">
        <input type="hidden" name="accion" value="actualizar">
        <input type="hidden" name="txtId" value="<%= a.getid() %>">

        <div class="form-grid">
            <div class="form-group">
                <label><i class="fa-solid fa-id-card-clip"></i> Matricula:</label>
                <input type="number" name="txtMatricula" value="<%= a.getMatricula() %>" required>
            </div>
            <div class="form-group">
                <label><i class="fa-solid fa-graduation-cap"></i> Carrera:</label>
                <input type="text" name="txtCarrera" value="<%= a.getCarrera() %>">
            </div>

            <div class="form-group">
                <label><i class="fa-solid fa-user"></i> Nombre(s):</label>
                <input type="text" name="txtNombre" value="<%= a.getNombre() %>" required>
            </div>
            <div class="form-group">
                <label>Apellido Paterno:</label>
                <input type="text" name="txtApe1" value="<%= a.getPrimerApellido() %>" required>
            </div>
            <div class="form-group">
                <label>Apellido Materno:</label>
                <input type="text" name="txtApe2" value="<%= (a.getSegundoApellido() != null) ? a.getSegundoApellido() : "" %>">
            </div>
            <div class="form-group">
                <label><i class="fa-solid fa-fingerprint"></i> CURP:</label>
                <input type="text" name="txtCurp" value="<%= a.getCurp() %>">
            </div>

            <div class="form-group">
                <label><i class="fa-solid fa-calendar-day"></i> Fecha Nacimiento:</label>
                <input type="date" name="txtFecha" value="<%= a.getFechaNacimiento() %>">
            </div>
            <div class="form-group">
                <label><i class="fa-solid fa-shield-heart"></i> NSS:</label>
                <input type="text" name="txtNss" value="<%= a.getNss() %>">
            </div>

            <div class="form-group">
                <label><i class="fa-solid fa-phone"></i> Telefono:</label>
                <input type="text" name="txtTelefono" value="<%= a.getTelefono() %>">
            </div>
            <div class="form-group">
                <label><i class="fa-solid fa-layer-group"></i> Semestre:</label>
                <input type="number" name="txtSemestre" value="<%= a.getSemestreActual() %>">
            </div>

            <div class="form-group full-width">
                <label><i class="fa-solid fa-envelope"></i> Email:</label>
                <input type="email" name="txtCorreo" value="<%= a.getCorreoElectronico() %>">
            </div>

            <div class="form-group full-width">
                <label><i class="fa-solid fa-map-location-dot"></i> Direccion:</label>
                <input type="text" name="txtDireccion" value="<%= a.getDireccion() %>">
            </div>

            <div class="form-group full-width">
                <label><i class="fa-solid fa-school"></i> Escuela de Procedencia:</label>
                <input type="text" name="txtEscuela" value="<%= a.getEscuelaProcedencia() %>">
            </div>
        </div>

        <div class="form-buttons">
            <button type="submit" class="btn-update">
                <i class="fa-solid fa-arrows-rotate"></i> Actualizar Información
            </button>
            <a href="index.jsp" class="btn-cancel">
                <i class="fa-solid fa-xmark"></i> Cancelar
            </a>
        </div>
    </form>
</div>

</body>
</html>