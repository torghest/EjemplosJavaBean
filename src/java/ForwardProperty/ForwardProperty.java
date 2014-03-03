/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package ForwardProperty;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author alumno
 */
public class ForwardProperty {
    private String usuario, password;

    public ForwardProperty() {
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    public boolean isRegistrado(){
        boolean res = false;
        try{
            DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
            Connection conn = DriverManager.getConnection(
                    "jdbc:oracle:thin:@localhost:1521:XE","system","javaoracle"
            );
            PreparedStatement ps = conn.prepareStatement("select usuario, password from usuarios where usuario = ?");
            ps.setString(1, this.usuario);
            ResultSet rs = ps.executeQuery();
            if (rs.next()){
                String u = rs.getString("usuario");
                String p = rs.getString("password");
                res = (u.equals(this.usuario) && p.equals(this.password));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return res;
    }
}
