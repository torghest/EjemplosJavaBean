/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package BeanDoctores;

import JDBC.AccesoJDBC;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;

/**
 *
 * @author alumno
 */
public class JavaBeanDoctores {
    private int hospital_cod;
    private int doctor_no;
    private String apellido;
    private String especialidad;
    private int salario;
    
    private static AccesoJDBC jdbc;
    
    public JavaBeanDoctores(){
        jdbc = new AccesoJDBC();
    }
    
    //GETTERS
    public int getHospital_cod() {
        return hospital_cod;
    }

    public int getDoctor_no() {
        return doctor_no;
    }

    public String getApellido() {
        return apellido;
    }

    public String getEspecialidad() {
        return especialidad;
    }

    public int getSalario() {
        return salario;
    }
    
    //METODOS
    public ResultSet Consultar(){
        return jdbc.getDoctores();
    }
    
    public int Alta(int hc, int dn, String ap, String es, int sa){
        return jdbc.altaDoctor(hc, dn, ap, es, sa);
    }
    
    public int Baja(int dn){
        return jdbc.bajaDoctor(dn);
    }
    
    public int Actualizar(int hc, int dn, String ap, String es, int sa){
        return jdbc.actualizarDoctor(hc, dn, ap, es, sa);
    }
    
    public void cargarDoctor(int dn){
        ResultSet rs = jdbc.getDoctor(dn);
        try{
            rs.next();
            this.hospital_cod = rs.getInt("hospital_cod");
            this.doctor_no = rs.getInt("doctor_no");
            this.apellido = rs.getString("apellido");
            this.especialidad = rs.getString("especialidad");
            this.salario = rs.getInt("salario");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    public ResultSet Consultar(int dn){
        return jdbc.getDoctor(dn);
    }
    
    public ResultSet Hospitales(){
        return jdbc.getHospitales();
    }
    
    public String comboBox(ResultSet rs, String nomCombo, String campoValue, String campoLabel, String sel, String onChange){
        String res = "<select name=\""+nomCombo+"\""+((onChange!=null)?" onChange=\""+onChange+"\"":"")+">";
        res += "<option value=\"\""+((sel.equals(""))?" SELECTED":"")+">Selecionar:</option>";
        try{
            while (rs.next()){
                String val = rs.getString(campoValue);
                res += "<option value=\""+val+"\" "+((val.equals(sel))?" SELECTED":"")+">";
                res += rs.getString(campoLabel);
                res += "</option>";
            }
        } catch (Exception e){
            e.printStackTrace();
        }
        res += "</select>";
        return res;
    }
    
    public String mostrarDatos(ResultSet rs){
        String res = "";
        if (rs != null){
            try{
                ResultSetMetaData rsmd = rs.getMetaData();
                res += "<table align=\"center\" border=\"2\">";
//Cabeceras
                res += "<tr>";
                for (int i = 1; i <= rsmd.getColumnCount(); i++){
                    res += "<td align=\"center\" bgcolor=\"#666666\">";
                    res += "<font color=\"#CCCCCC\"><b>";
                    res += rsmd.getColumnName(i);
                    res += "</b></font>";
                    res += "</td>";
                }
                res += "</tr>";
//Datos
                while (rs.next()){
                    res += "<tr>";
                    for (int i = 1; i <= rsmd.getColumnCount(); i++){
                        res += "<td align=\"center\">";
                        res += rs.getString(i);
                        res += "</td>";
                    }
                    res += "</tr>";
                }
                res += "</table>";
            } catch (Exception e){
                e.printStackTrace();
            }
        }
        return res;
    }
}
