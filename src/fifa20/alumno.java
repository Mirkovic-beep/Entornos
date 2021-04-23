package fifa20;

public class alumno {
	
	private String nombre;
	private String apellidos;
	private String direccion;
	private int telefono;
	private String provincia;
	private String email;
	private double sueldo;
	private int edad;
	
	
	public alumno(String nombre, String apellidos, String direccion, int telefono, String provincia, String email,
			double sueldo, int edad) {
		super();
		this.nombre = nombre;
		this.apellidos = apellidos;
		this.direccion = direccion;
		this.telefono = telefono;
		this.provincia = provincia;
		this.email = email;
		this.sueldo = sueldo;
		this.edad = edad;
	}


	public String getNombre() {
		return nombre;
	}


	public void setNombre(String nombre) {
		this.nombre = nombre;
	}


	public String getApellidos() {
		return apellidos;
	}


	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}


	public String getDireccion() {
		return direccion;
	}


	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}


	public int getTelefono() {
		return telefono;
	}


	public void setTelefono(int telefono) {
		this.telefono = telefono;
	}


	public String getProvincia() {
		return provincia;
	}


	public void setProvincia(String provincia) {
		this.provincia = provincia;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public double getSueldo() {
		return sueldo;
	}


	public void setSueldo(double sueldo) {
		this.sueldo = sueldo;
	}


	public int getEdad() {
		return edad;
	}


	public void setEdad(int edad) {
		this.edad = edad;
	}


	@Override
	public String toString() {
		return "alumno [nombre=" + nombre + ", apellidos=" + apellidos + ", direccion=" + direccion + ", telefono="
				+ telefono + ", provincia=" + provincia + ", email=" + email + ", sueldo=" + sueldo + ", edad=" + edad
				+ "]";
	}
	
	
	
	

}
