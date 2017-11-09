package com.mandarina.funcionamiento;

public class Usuario {
	private int minutosDeEjercicio;
	
	public int calcularCaloriasNecesarias(){
		return (minutosDeEjercicio*12)+1000;
	}
	
}
