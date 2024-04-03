package com.example.model;

import java.io.Serializable;

public class Calificacion implements Serializable {
    private static final long serialVersionUID = 1L;
    private int id;
    private String nombreEstudiante;
    private double primerParcial;
    private double segundoParcial;
    private double examenFinal;

    public Calificacion(int id, String nombreEstudiante, double primerParcial, double segundoParcial, double examenFinal) {
        this.id = id;
        this.nombreEstudiante = nombreEstudiante;
        this.primerParcial = primerParcial;
        this.segundoParcial = segundoParcial;
        this.examenFinal = examenFinal;
    }

    // Getters y setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombreEstudiante() {
        return nombreEstudiante;
    }

    public void setNombreEstudiante(String nombreEstudiante) {
        this.nombreEstudiante = nombreEstudiante;
    }

    public double getPrimerParcial() {
        return primerParcial;
    }

    public void setPrimerParcial(double primerParcial) {
        this.primerParcial = primerParcial;
    }

    public double getSegundoParcial() {
        return segundoParcial;
    }

    public void setSegundoParcial(double segundoParcial) {
        this.segundoParcial = segundoParcial;
    }

    public double getExamenFinal() {
        return examenFinal;
    }

    public void setExamenFinal(double examenFinal) {
        this.examenFinal = examenFinal;
    }
}
