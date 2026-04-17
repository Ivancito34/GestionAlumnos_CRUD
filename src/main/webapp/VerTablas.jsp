<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.proyecto.crud.Alumnos" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tablas de Alumnos - Vista Completa</title>
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    
    <link rel="stylesheet" type="text/css" href="css/estilos.css">
</head>
<body>

    <div class="table-container">
        <header class="table-header">
            <h2><i class="fa-solid fa-table-list"></i> Registro General de Alumnos</h2>
            <p>Registros encontrados en la base de datos</p>
        </header>
        
        <hr class="divider">

        <div class="scroll-wrapper">
            <table class="main-table">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Matricula</th>
                        <th>Nombre(s)</th>
                        <th>Apellido Paterno</th>
                        <th>Apellido Materno</th>
                        <th>Carrera</th>
                        <th>Semestre</th>
                        <th>Fecha de Nacimiento</th>
                        <th>CURP</th>
                        <th>NSS</th>
                        <th>Telefono</th>
                        <th>Direccion</th>
                        <th>Escuela Procedencia</th>
                        <th>Email</th>
                    </tr>
                </thead>
                <tbody>
                    <% 
                        List<Alumnos> lista = (List<Alumnos>) request.getAttribute("listaAlumnos");
                        if (lista != null && !lista.isEmpty()) {
                            for (Alumnos a : lista) {
                    %>
                    <tr>
                        <td class="txt-center"><strong><%= a.getid() %></strong></td>
                        <td><%= a.getMatricula() %></td>
                        <td><%= a.getNombre() %></td>
                        <td><%= a.getPrimerApellido() %></td>
                        <td><%= (a.getSegundoApellido() != null) ? a.getSegundoApellido() : "" %></td>
                        <td><%= a.getCarrera() %></td>
                        <td class="txt-center"><%= a.getSemestreActual() %></td>
                        <td><%= a.getFechaNacimiento() %></td>
                        <td><%= a.getCurp() %></td>
                        <td><%= a.getNss() %></td>
                        <td><%= a.getTelefono() %></td>
                        <td><%= a.getDireccion() %></td>
                        <td><%= a.getEscuelaProcedencia() %></td>
                        <td><%= a.getCorreoElectronico() %></td>
                    </tr>
                    <% 
                            }
                        } else { 
                    %>
                    <tr>
                        <td colspan="14" class="empty-row">
                            <i class="fa-solid fa-circle-exclamation"></i> No se encontraron registros en la base de datos.
                        </td>
                    </tr>
                    <% } %>
                </tbody>
            </table>
        </div>

        <div class="table-actions">
            <a href="index.jsp" class="btn-back">
                <i class="fa-solid fa-arrow-left"></i> Volver al Menu Principal
            </a>
        </div>
    </div>

</body>
</html>