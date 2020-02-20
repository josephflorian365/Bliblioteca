/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelos;

import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Observable;
import java.util.logging.Level;
import java.util.logging.Logger;
import javafx.beans.property.IntegerProperty;
import javafx.beans.property.SimpleIntegerProperty;
import javafx.collections.ObservableList;

/**
 *
 * @author Js
 */
public class devoluciones {
    private IntegerProperty IDDEV;
    private Prestamo prestamo;
    private usuarios usuario;
    private Libros libro;
    
    public devoluciones(Integer IDDEV, Prestamo prestamo, usuarios usuario, Libros libro){
        this.IDDEV = new SimpleIntegerProperty(IDDEV);
        this.prestamo = prestamo;
        this.usuario = usuario;
        this.libro = libro;
    }
    
    public Integer getIDDEV(){
        return IDDEV.get();
    }
    
    public void setIDDEV(Integer IDDEV){
        this.IDDEV= new SimpleIntegerProperty(IDDEV);
    }
    
    public Prestamo getPrestamo(){
        return prestamo;
    }
    
    public void setPrestamo(Prestamo prestamo){
        this.prestamo = prestamo;
    }
    
    public usuarios getUsuario(){
        return usuario;
    }
    
    public void setUsuario(usuarios usuario){
        this.usuario = usuario;
    }
    
    public Libros getLibro(){
        return libro;
    }
    
    public void setLibro(Libros libro){
        this.libro = libro;
    }
    
    public static void llenarInformacion(Connection connection,
            ObservableList<devoluciones> lista){
        try{
            Statement instruccion = connection.createStatement();
            ResultSet resultado = instruccion.executeQuery("SELECT D.IDDEV, P.IDPRE,P.FECHPRE, R.IDLEC, R.NOMLEC, R.APELEC, R.TELLEC, R.NOMUSULEC, R.PASLEC, L.IDLIB, L.TITLIB, E.IDEDI, E.NOMEDI, A.IDAUT, A.NOMAUT, A.APEAUT, I.IDPAIS, I.NOMPAIS   FROM DEVOLUCION D INNER JOIN PRESTAMO P ON (D.IDPRE = P.IDPRE) INNER JOIN LIBRO L ON (D.IDLIB = L.IDLIB) INNER JOIN LECTOR R ON (D.IDLEC = R.IDLEC) INNER JOIN EDITORIAL E ON (L.IDEDI = E.IDEDI) INNER JOIN AUTOR A ON (L.IDAUT = A.IDAUT) INNER JOIN PAIS I ON (A.IDPAIS = I.IDPAIS) ");
            while(resultado.next()){
                lista.add( 
                             new devoluciones(resultado.getInt("IDDEV"), 
                             new Prestamo(resultado.getInt("IDPRE"), resultado.getDate("FECHPRE"), 
                                     new usuarios(resultado.getInt("IDLEC"), resultado.getString("NOMLEC"), resultado.getString("APELEC"), resultado.getString("TELLEC"), resultado.getString("NOMUSULEC"), resultado.getString("PASLEC")), 
                                     new Libros(resultado.getInt("IDLIB"), resultado.getString("TITLIB"), 
                                        new Editorial(resultado.getInt("IDEDI"), resultado.getString("NOMEDI")), 
                                        new Autor(resultado.getInt("IDAUT"), resultado.getString("NOMAUT"), resultado.getString("APEAUT"), 
                                                new Pais(resultado.getInt("IDPAIS"), resultado.getString("NOMPAIS"))))),
                new usuarios(resultado.getInt("IDLEC"), resultado.getString("NOMLEC"), resultado.getString("APELEC"), resultado.getString("TELLEC"), resultado.getString("NOMUSULEC"), resultado.getString("PASLEC")),
                new Libros(resultado.getInt("IDLIB"), resultado.getString("TITLIB"), 
                        new Editorial(resultado.getInt("IDEDI"), resultado.getString("NOMEDI")), 
                new Autor(resultado.getInt("IDAUT"), resultado.getString("NOMAUT"), resultado.getString("APEAUT"), 
                new Pais(resultado.getInt("IDPAIS"), resultado.getString("NOMPAIS")))))
                );
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
