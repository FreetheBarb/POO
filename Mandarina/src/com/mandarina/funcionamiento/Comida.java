package com.mandarina.funcionamiento;

public class Comida {
	private int valorEnergetico;
	private int carbohidratos;
	private int proteinas;
	private int grasas;
	private int sales;
	private int indiceMandarina;
	private String receta;
	public Comida(int valorEnergetico, int carbohidratos, int proteinas, int grasas, int sales, int indiceMandarina,
			String receta) {
		super();
		this.valorEnergetico = valorEnergetico;
		this.carbohidratos = carbohidratos;
		this.proteinas = proteinas;
		this.grasas = grasas;
		this.sales = sales;
		this.indiceMandarina = indiceMandarina;
		this.receta = receta;
	}
	public int getValorEnergetico() {
		return valorEnergetico;
	}
	public void setValorEnergetico(int valorEnergetico) {
		this.valorEnergetico = valorEnergetico;
	}
	public int getCarbohidratos() {
		return carbohidratos;
	}
	public void setCarbohidratos(int carbohidratos) {
		this.carbohidratos = carbohidratos;
	}
	public int getProteinas() {
		return proteinas;
	}
	public void setProteinas(int proteinas) {
		this.proteinas = proteinas;
	}
	public int getGrasas() {
		return grasas;
	}
	public void setGrasas(int grasas) {
		this.grasas = grasas;
	}
	public int getSales() {
		return sales;
	}
	public void setSales(int sales) {
		this.sales = sales;
	}
	public int getIndiceMandarina() {
		return indiceMandarina;
	}
	public void setIndiceMandarina(int indiceMandarina) {
		this.indiceMandarina = indiceMandarina;
	}
	public String getReceta() {
		return receta;
	}
	public void setReceta(String receta) {
		this.receta = receta;
	}

}
