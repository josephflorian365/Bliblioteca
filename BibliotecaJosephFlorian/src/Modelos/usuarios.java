/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelos;

/**
 *
 * @author oXCToo
 */
public class usuarios {

    private String usu_rut;

    private String usu_nombre;

    private String usu_apellido;

    private String usu_direccion;

    private String usu_telefono;



    public String getUsu_rut ()
    {
        return usu_rut;
    }

    public void setUsu_rut (String usu_rut)
    {
        this.usu_rut = usu_rut;
    }

    public String getUsu_nombre ()
    {
        return usu_nombre;
    }

    public void setUsu_nombre (String usu_nombre)
    {
        this.usu_nombre = usu_nombre;
    }

    public String getUsu_apellido ()
    {
        return usu_apellido;
    }

    public void setUsu_apellido (String usu_apellido)
    {
        this.usu_apellido = usu_apellido;
    }

    public String getUsu_direccion ()
    {
        return usu_direccion;
    }

    public void setUsu_direccion (String usu_direccion)
    {
        this.usu_direccion = usu_direccion;
    }

    public String getUsu_telefono ()
    {
        return usu_telefono;
    }

    public void setUsu_telefono(String usu_telefono)
    {
        this.usu_telefono = usu_telefono;
    }




    @Override
    public String toString()
    {
        return "ClassPojo [usu_rut = "+usu_rut+", usu_nombre = "+usu_nombre+", usu_apellido = "+usu_apellido+", usu_direccion = "+usu_direccion+", usu_telefono = "+usu_telefono+"]";
    }
}