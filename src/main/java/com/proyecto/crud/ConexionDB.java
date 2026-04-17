package com.proyecto.crud;

import java.sql.Connection;
import java.sql.DriverManager;


public class ConexionDB {
    
    private static final String URL = "jdbc:postgresql://localhost:5432/postgres";
    private static final String USER = "postgres";
    private static final String PASS = "alex123";

    public static Connection obtenerConexion() {
        Connection con = null;
        try {
            Class.forName("org.postgresql.Driver");
            con = DriverManager.getConnection(URL, USER, PASS);
        } catch (Exception e) {
            System.out.println(">>> ERROR: " + e.getMessage());
        }
        return con;
    }

   
    public static void main(String[] args) {
        Connection test = obtenerConexion();
        if (test != null) {
            System.out.println("Conectada");
        } else {
            System.out.println("Error en conexion.");
        }
    }
}