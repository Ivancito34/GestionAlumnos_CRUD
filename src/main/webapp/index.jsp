<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sistema de Gestión de Alumnos</title>
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    
    <link rel="stylesheet" type="text/css" href="css/estilos.css">
</head>
<body>

    <div class="main-container">
        <header class="panel-header">
            <h1><i class="fa-solid fa-chalkboard-user"></i> Sistema de Gestion de Alumnos</h1>
            <p>Panel Principal de Control</p>
        </header>
        
        <hr class="divider">

        <nav class="btn-group">
            <form action="ConsultaServlet" method="post">
                <input type="hidden" name="accion" value="listar">
                <button type="submit" class="btn-main btn-view">
                    <span class="icon"><i class="fa-solid fa-clipboard-user"></i></span> 
                    Ver Registros de Alumnos
                </button>
            </form>

            <form action="ConsultaServlet" method="post">
                <input type="hidden" name="accion" value="nuevo">
                <button type="submit" class="btn-main btn-add">
                    <span class="icon"><i class="fa-solid fa-user-plus"></i></span> 
                    Registrar Nuevo Alumno
                </button>
            </form>

            <form action="ConsultaServlet" method="post">
                <input type="hidden" name="accion" value="prepararSeleccionEditar">
                <button type="submit" class="btn-main btn-edit">
                    <span class="icon"><i class="fa-solid fa-pen-to-square"></i></span> 
                    Editar Registros de Alumnos
                </button>
            </form>

            <form action="ConsultaServlet" method="post">
                <input type="hidden" name="accion" value="prepararEliminar">
                <button type="submit" class="btn-main btn-delete">
                    <span class="icon"><i class="fa-solid fa-trash-can"></i></span> 
                    Eliminar Resgistros de Alumnos
                </button>
            </form>
        </nav>
		<footer class="panel-footer">
            <p>&copy; 2026 CRUD de Alumnos - Alex Ivan Estrada Villa </p>
        </footer>

    </div>

</body>

</html>