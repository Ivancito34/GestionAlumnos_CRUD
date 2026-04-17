package com.proyecto.crud;

import java.io.IOException;
import java.util.List;
import java.sql.Date;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ConsultaServlet")
public class ConsultaServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        AlumnosDAO dao = new AlumnosDAO();
        String accion = request.getParameter("accion");
        System.out.println("Accion ejecutada: " + accion);

        if (accion == null) {
            response.sendRedirect("index.jsp");
            return;
        }

        switch (accion) {

            case "listar":
                // select
                request.setAttribute("listaAlumnos", dao.listarAlumnos());
                request.getRequestDispatcher("/VerTablas.jsp").forward(request, response);
                break;

            case "nuevo":
                // formulario vacio
                request.getRequestDispatcher("/nuevoAlumno.jsp").forward(request, response);
                break;

            case "prepararEliminar":
                // tabla de borrar
                request.setAttribute("listaAlumnos", dao.listarAlumnos());
                request.getRequestDispatcher("/eliminarAlumno.jsp").forward(request, response);
                break;

            case "prepararSeleccionEditar":
                // tabla de editar
                request.setAttribute("listaAlumnos", dao.listarAlumnos());
                request.getRequestDispatcher("/editarSeleccion.jsp").forward(request, response);
                break;

            case "editar":
                // carga registro para editarlo
                int idEditar = Integer.parseInt(request.getParameter("id"));
                Alumnos alumno = dao.buscarPorId(idEditar);
                request.setAttribute("alum", alumno);
                request.getRequestDispatcher("/editarAlumnoForm.jsp").forward(request, response);
                break;

           
                
            case "guardarNuevo":
                // captura y guarda en la DB
                Alumnos nuevoAlum = capturarDatosFormulario(request);
                dao.agregar(nuevoAlum);
                response.sendRedirect("ConsultaServlet?accion=listar");
                break;

            case "actualizar":
                // captura y actualiza
                Alumnos alumEditado = capturarDatosFormulario(request);
                alumEditado.setid(Integer.parseInt(request.getParameter("txtId")));
                dao.actualizar(alumEditado);
                response.sendRedirect("ConsultaServlet?accion=listar");
                break;

            case "eliminar":
                // borra y regresa a la tabla
                int idEliminar = Integer.parseInt(request.getParameter("id"));
                dao.eliminar(idEliminar);
                response.sendRedirect("ConsultaServlet?accion=prepararEliminar");
                break;

            default:
                response.sendRedirect("index.jsp");
                break;
        }
    }

    // metodo para guardar todos los campos 
    private Alumnos capturarDatosFormulario(HttpServletRequest request) {
        Alumnos a = new Alumnos();
        

        a.setMatricula(Long.parseLong(request.getParameter("txtMatricula")));
        a.setNombre(request.getParameter("txtNombre"));
        a.setPrimerApellido(request.getParameter("txtApe1"));
        a.setSegundoApellido(request.getParameter("txtApe2"));
        a.setCarrera(request.getParameter("txtCarrera"));
        a.setCurp(request.getParameter("txtCurp"));
        a.setDireccion(request.getParameter("txtDireccion"));
        a.setNss(request.getParameter("txtNss"));
        a.setTelefono(request.getParameter("txtTelefono"));
        a.setEscuelaProcedencia(request.getParameter("txtEscuela"));
        a.setCorreoElectronico(request.getParameter("txtCorreo"));
        a.setSemestreActual(Integer.parseInt(request.getParameter("txtSemestre")));
        
        String fechaStr = request.getParameter("txtFecha");
        if (fechaStr != null && !fechaStr.isEmpty()) {
            a.setFechaNacimiento(Date.valueOf(fechaStr));
        }
        
        return a;
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        doPost(request, response);
    }
}