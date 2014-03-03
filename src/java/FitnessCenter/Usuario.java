/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package FitnessCenter;

/**
 *
 * @author alumno
 */
public class Usuario {
    String nombre, apellido1, apellido2, domicilio, fx_nacimiento, tipoCuota, telefono, dni;
    int cuota;

    public Usuario() {
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido1() {
        return apellido1;
    }

    public void setApellido1(String apellido1) {
        this.apellido1 = apellido1;
    }

    public String getApellido2() {
        return apellido2;
    }

    public void setApellido2(String apellido2) {
        this.apellido2 = apellido2;
    }

    public String getDomicilio() {
        return domicilio;
    }

    public void setDomicilio(String domicilio) {
        this.domicilio = domicilio;
    }

    public String getFx_nacimiento() {
        return fx_nacimiento;
    }

    public void setFx_nacimiento(String fx_nacimiento) {
        this.fx_nacimiento = fx_nacimiento;
    }

    public String getTipoCuota() {
        return tipoCuota;
    }

    public void setTipoCuota(String tipoCuota) {
        this.tipoCuota = tipoCuota;
        switch (Integer.parseInt(this.tipoCuota)){
            case 1:
                this.setCuota(50);
                break;
            case 2:
                this.setCuota(40);
                break;
            case 3:
                this.setCuota(35);
                break;
            case 4:
                this.setCuota(25);
                break;
        }
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public int getCuota() {
        return cuota;
    }

    private void setCuota(int cuota) {
        this.cuota = cuota;
    }
    
    
}
