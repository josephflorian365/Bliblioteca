/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelos;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javafx.beans.property.IntegerProperty;
import javafx.beans.property.SimpleIntegerProperty;
import javafx.beans.property.SimpleStringProperty;
import javafx.beans.property.StringProperty;
import javafx.collections.ObservableList;

public class Editorial {

    private IntegerProperty IDEDI;
    private StringProperty NOMEDI;

    public Editorial(Integer IDEDI, String NOMEDI) {
        this.IDEDI = new SimpleIntegerProperty(IDEDI);
        this.NOMEDI = new SimpleStringProperty(NOMEDI);
    }

    public Integer getIDEDI() {
        return IDEDI.get();
    }

    public void setIDEDI(Integer IDEDI) {
        this.IDEDI = new SimpleIntegerProperty(IDEDI);
    }

    public String getNOMEDI() {
        return NOMEDI.get();
    }

    public void setNOMEDI(String NOMEDI) {
        this.NOMEDI = new SimpleStringProperty(NOMEDI);
    }

    public IntegerProperty IDEDIProperty() {
        return IDEDI;
    }

    public StringProperty NOMEDIProperty() {
        return NOMEDI;
    }

    public static void llenarInformacionEditorial(Connection connection, ObservableList<Editorial> lista) {
        try {
            Statement statement = connection.createStatement();
            ResultSet resultado = statement.executeQuery("SELECT IDEDI, NOMEDI FROM EDITORIAL");

            while (resultado.next()) {
                lista.add(
                        new Editorial(
                                resultado.getInt("IDEDI"),
                                resultado.getString("NOMEDI")
                        )
                );
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
	
    
    @Override
    public String toString(){
    return NOMEDI.get();
    }

}
