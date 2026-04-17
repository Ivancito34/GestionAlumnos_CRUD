# CRUD de Gestion de Alumnos

Sistema de gestion escolar basado en arquitectura Modelo-Vista-Controlador (MVC) desarrollado en Java EE.

## Stack Tecnologico
* Lenguaje: Java 21
* Tecnologias Web: Servlets 6.0, Jakarta Server Pages (JSP)
* Motor de Base de Datos: PostgreSQL
* Servidor de Aplicaciones: Apache Tomcat 11.0
* Frontend: CSS3 nativo, Font Awesome para iconografia

## Estructura de Directorios
* `/src/main/java`: Contiene los paquetes de logica de negocio, objetos de acceso a datos (DAO) y controladores (Servlets).
* `/src/main/webapp`: Contiene los descriptores de despliegue, bibliotecas (.jar) y recursos de interfaz.
* `/src/main/webapp/css`: Archivos de estilo para la capa de presentacion.

## Configuracion de Base de Datos
El esquema de la base de datos se encuentra en el archivo `schema.sql` ubicado en la raiz del proyecto.
1. Ejecutar el script SQL en una instancia de PostgreSQL.
2. El script crea la tabla `TO001_Alumno` con un campo autoincremental `FN_id_alumno`.
3. Validar las credenciales de acceso en la clase `com.proyecto.crud.ConexionDB`.

## Instrucciones de Despliegue
1. Clonar el repositorio.
2. Importar en Eclipse IDE o STS como "Existing Project".
3. Asegurar la presencia del driver JDBC de PostgreSQL en `WEB-INF/lib`.
4. Configurar el entorno de ejecucion (Runtime Environment) apuntando a Tomcat 11.
5. Ejecutar sobre el servidor (Run on Server).

## Funcionalidades Implementadas
* Operaciones CRUD completas sobre la entidad Alumno.
* Gestion automatizada de transacciones SQL.
* Interfaz responsiva con soporte para pantallas de alta resolucion.
* Validaciones de borrado permanente mediante scripts de lado del cliente.