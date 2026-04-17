package com.proyecto.crud;



import java.sql.Date;

public class Alumnos {
	private int id;
    private long matricula;
    private String primerApellido;
    private String segundoApellido;
    private String nombre;
    private String carrera;
    private Date fechaNacimiento;
    private String curp;
    private String direccion;
    private String nss;
    private String telefono;
    private String escuelaProcedencia;
    private String correoElectronico;
    private int semestreActual;

    public int getid() { return id;}
    public void setid(int id) { this.id = id;}
	public long getMatricula() {return matricula;}
	public void setMatricula(long matricula) {this.matricula = matricula;}
	public String getPrimerApellido() {return primerApellido;}
	public void setPrimerApellido(String primerApellido) {this.primerApellido = primerApellido;}
	public String getSegundoApellido() {return segundoApellido;}
	public void setSegundoApellido(String segundoApellido) {this.segundoApellido = segundoApellido;}
	public String getNombre() {return nombre;}
	public void setNombre(String nombre) {this.nombre = nombre;}
	public String getCarrera() {return carrera;}
	public void setCarrera(String carrera) {this.carrera = carrera;}
	public Date getFechaNacimiento() {return fechaNacimiento;}
	public void setFechaNacimiento(Date fechaNacimiento) {this.fechaNacimiento = fechaNacimiento;}
	public String getCurp() {return curp;}
	public void setCurp(String curp) {this.curp = curp;}
	public String getDireccion() {return direccion;}
	public void setDireccion(String direccion) {this.direccion = direccion;}
	public String getNss() {return nss;}
	public void setNss(String nss) {this.nss = nss;}
	public String getTelefono() {return telefono;}
	public void setTelefono(String telefono) {this.telefono = telefono;}
	public String getEscuelaProcedencia() {return escuelaProcedencia;}
	public void setEscuelaProcedencia(String escuelaProcedencia) {this.escuelaProcedencia = escuelaProcedencia;}
	public String getCorreoElectronico() {return correoElectronico;}
	public void setCorreoElectronico(String correoElectronico) {this.correoElectronico = correoElectronico;}
	public int getSemestreActual() {return semestreActual;}
	public void setSemestreActual(int semestreActual) {this.semestreActual = semestreActual;}
}