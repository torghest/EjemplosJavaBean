/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package MisBeans;

/**
 *
 * @author alumno
 */
import java.util.*;
import java.text.*;

public class Bean1{

	private Calendar hora;
	private Date horaactual;
	private DateFormat formato;
	private String cadhora;
	
	public String Hora(){
		horaactual= hora.getInstance().getTime();
		formato= DateFormat.getTimeInstance();
		cadhora=formato.format(horaactual);
		return cadhora;
	}
}

