<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registrar Nuevo Alumno</title>
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    
    <link rel="stylesheet" type="text/css" href="css/estilos.css">
</head>
<body>

<div class="form-main-container">
    <header class="form-header">
        <h2><i class="fa-solid fa-user-plus"></i> Registro de Nuevo Alumno</h2>
        <p>Completa los campos para registrar un nuevo Alumno.</p>
    </header>
    
    <hr class="divider">

    <form action="ConsultaServlet" method="post" class="main-form">
        <input type="hidden" name="accion" value="guardarNuevo">

        <div class="form-grid">
            <div class="form-group">
                <label><i class="fa-solid fa-id-card-clip"></i> Matricula:</label>
                <input type="number" name="txtMatricula" required placeholder="Ej: 2024001">
            </div>
            <div class="form-group">
                <label><i class="fa-solid fa-graduation-cap"></i> Carrera:</label>
                <input type="text" name="txtCarrera" >
            </div>

            <div class="form-group">
                <label><i class="fa-solid fa-user"></i> Nombre(s):</label>
                <input type="text" name="txtNombre" required>
            </div>
            <div class="form-group">
                <label> Apellido Paterno:</label>
                <input type="text" name="txtApe1" required>
            </div>
            <div class="form-group">
                <label> Apellido Materno:</label>
                <input type="text" name="txtApe2">
            </div>
            <div class="form-group">
                <label><i class="fa-solid fa-fingerprint"></i> CURP:</label>
                <input type="text" name="txtCurp"> 
            </div>

            <div class="form-group">
                <label><i class="fa-solid fa-calendar-day"></i> Fecha de Nacimiento:</label>
                <input type="date" name="txtFecha">
            </div>
            <div class="form-group">
                <label><i class="fa-solid fa-shield-heart"></i> NSS:</label>
                <input type="text" name="txtNss" placeholder="Numero de Seguro Social">
            </div>

            <div class="form-group">
                <label><i class="fa-solid fa-phone"></i> Telefono:</label>
                <input type="tel" name="txtTelefono">
            </div>
            <div class="form-group">
                <label><i class="fa-solid fa-layer-group"></i> Semestre Actual:</label>
                <input type="number" name="txtSemestre" min="1" max="12">
            </div>

            <div class="form-group full-width">
                <label><i class="fa-solid fa-envelope"></i> Correo Electrónico:</label>
                <input type="email" name="txtCorreo" placeholder="ejemplo@correo.com">
            </div>

            <div class="form-group full-width">
                <label><i class="fa-solid fa-map-location-dot"></i> Direccion:</label>
                <input type="text" name="txtDireccion">
            </div>

            <div class="form-group full-width">
                <label><i class="fa-solid fa-school"></i> Escuela de Procedencia:</label>
                <input type="text" name="txtEscuela">
            </div>
        </div>

        <div class="form-buttons">
            <button type="submit" class="btn-save">
                <i class="fa-solid fa-floppy-disk"></i> Guardar Registro
            </button>
            <a href="index.jsp" class="btn-cancel">
                <i class="fa-solid fa-xmark"></i> Cancelar y volver
            </a>
        </div>
    </form>
</div>

</body>
</html>