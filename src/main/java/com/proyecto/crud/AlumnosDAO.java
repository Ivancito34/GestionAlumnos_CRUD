package com.proyecto.crud;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class AlumnosDAO {

    // SELECT - Listar todos los alumnos 
    public List<Alumnos> listarAlumnos() {
        List<Alumnos> lista = new ArrayList<>();
        String sql = "SELECT * FROM TO001_Alumno ORDER BY FN_id_alumno ASC";
        
        try (Connection con = ConexionDB.obtenerConexion();
             PreparedStatement ps = con.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {
            
            while (rs.next()) {
                Alumnos a = new Alumnos();
                a.setid(rs.getInt("FN_id_alumno"));
                a.setMatricula(rs.getLong("FN_matricula"));
                a.setNombre(rs.getString("FV_nombre"));
                a.setPrimerApellido(rs.getString("FV_primer_apellido"));
                a.setSegundoApellido(rs.getString("FV_segundo_apellido"));
                a.setCarrera(rs.getString("FV_carrera"));
                a.setFechaNacimiento(rs.getDate("FD_fecha_nacimiento"));
                a.setCurp(rs.getString("FV_curp"));
                a.setDireccion(rs.getString("FV_direccion"));
                a.setNss(rs.getString("FV_nss"));
                a.setTelefono(rs.getString("FV_telefono"));
                a.setEscuelaProcedencia(rs.getString("FV_escuela_procedencia"));
                a.setCorreoElectronico(rs.getString("FV_correo_electronico"));
                a.setSemestreActual(rs.getInt("FN_semestre_actual"));
                lista.add(a);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return lista;
    }

    //  INSERT - Agregar nuevo alumno
    public void agregar(Alumnos a) {
        String sql = "INSERT INTO TO001_Alumno (FN_matricula, FV_nombre, FV_primer_apellido, FV_segundo_apellido, "
                   + "FV_carrera, FD_fecha_nacimiento, FV_curp, FV_direccion, FV_nss, FV_telefono, "
                   + "FV_escuela_procedencia, FV_correo_electronico, FN_semestre_actual) "
                   + "VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)";
        
        try (Connection con = ConexionDB.obtenerConexion();
             PreparedStatement ps = con.prepareStatement(sql)) {
            
            ps.setLong(1, a.getMatricula());
            ps.setString(2, a.getNombre());
            ps.setString(3, a.getPrimerApellido());
            ps.setString(4, a.getSegundoApellido());
            ps.setString(5, a.getCarrera());
            ps.setDate(6, a.getFechaNacimiento());
            ps.setString(7, a.getCurp());
            ps.setString(8, a.getDireccion());
            ps.setString(9, a.getNss());
            ps.setString(10, a.getTelefono());
            ps.setString(11, a.getEscuelaProcedencia());
            ps.setString(12, a.getCorreoElectronico());
            ps.setInt(13, a.getSemestreActual());
            
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    //  DELETE - Eliminar por ID
    public void eliminar(int id) {
        String sql = "DELETE FROM TO001_Alumno WHERE FN_id_alumno = ?";
        try (Connection con = ConexionDB.obtenerConexion();
             PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    //  SELECT BY ID Carga datos para el formulario
    public Alumnos buscarPorId(int id) {
        Alumnos a = new Alumnos();
        String sql = "SELECT * FROM TO001_Alumno WHERE FN_id_alumno = ?";
        try (Connection con = ConexionDB.obtenerConexion();
             PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setInt(1, id);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    a.setid(rs.getInt("FN_id_alumno"));
                    a.setMatricula(rs.getLong("FN_matricula"));
                    a.setNombre(rs.getString("FV_nombre"));
                    a.setPrimerApellido(rs.getString("FV_primer_apellido"));
                    a.setSegundoApellido(rs.getString("FV_segundo_apellido"));
                    a.setCarrera(rs.getString("FV_carrera"));
                    a.setFechaNacimiento(rs.getDate("FD_fecha_nacimiento"));
                    a.setCurp(rs.getString("FV_curp"));
                    a.setDireccion(rs.getString("FV_direccion"));
                    a.setNss(rs.getString("FV_nss"));
                    a.setTelefono(rs.getString("FV_telefono"));
                    a.setEscuelaProcedencia(rs.getString("FV_escuela_procedencia"));
                    a.setCorreoElectronico(rs.getString("FV_correo_electronico"));
                    a.setSemestreActual(rs.getInt("FN_semestre_actual"));
                }
            }
        } catch (SQLException e) { e.printStackTrace(); }
        return a;
    }

    //  UPDATE - Actualizar con todos los campos
    public void actualizar(Alumnos a) {
        String sql = "UPDATE TO001_Alumno SET FN_matricula=?, FV_nombre=?, FV_primer_apellido=?, "
                   + "FV_segundo_apellido=?, FV_carrera=?, FD_fecha_nacimiento=?, FV_curp=?, "
                   + "FV_direccion=?, FV_nss=?, FV_telefono=?, FV_escuela_procedencia=?, "
                   + "FV_correo_electronico=?, FN_semestre_actual=? WHERE FN_id_alumno=?";
        try (Connection con = ConexionDB.obtenerConexion();
             PreparedStatement ps = con.prepareStatement(sql)) {
            
            ps.setLong(1, a.getMatricula());
            ps.setString(2, a.getNombre());
            ps.setString(3, a.getPrimerApellido());
            ps.setString(4, a.getSegundoApellido());
            ps.setString(5, a.getCarrera());
            ps.setDate(6, a.getFechaNacimiento());
            ps.setString(7, a.getCurp());
            ps.setString(8, a.getDireccion());
            ps.setString(9, a.getNss());
            ps.setString(10, a.getTelefono());
            ps.setString(11, a.getEscuelaProcedencia());
            ps.setString(12, a.getCorreoElectronico());
            ps.setInt(13, a.getSemestreActual());
            ps.setInt(14, a.getid());
            
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}