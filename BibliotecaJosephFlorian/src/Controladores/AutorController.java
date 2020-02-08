/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controladores;

import Modelos.Conexion;
import java.io.IOException;
import java.net.URL;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ResourceBundle;
import java.util.logging.Level;
import java.util.logging.Logger;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.ComboBox;
import javafx.scene.control.TableView;
import javafx.scene.control.TextField;
import javafx.stage.Stage;

/**
 * FXML Controller class
 *
 * @author Js
 */
public class AutorController implements Initializable {

    @FXML
    private TextField txtNomAut;
    @FXML
    private TextField txtApeAut;
    @FXML
    private Button btnEditarAut;
    @FXML
    private Button btnEliminarAut;
    @FXML
    private Button btnGuardarAut;
    @FXML
    private ComboBox<String> cmbPaisAut;
    @FXML
    private TableView tblAutor;

    /**
     * Initializes the controller class.
     */
    PreparedStatement preparedStatement;
    Connection connection;
    
    public AutorController(){
        
    }
    
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        // TODO
    }
    
         public void closeWindows(){
        try{
            FXMLLoader loader = new FXMLLoader(getClass().getResource("/Vistas/Principal.fxml"));
            
            Parent root = loader.load();
            
            PrincipalController controlador = loader.getController();
            
            Scene scene = new Scene(root);
            Stage stage = new Stage();
            
            stage.setScene(scene);
            new animatefx.animation.ZoomIn(root).play();
            stage.show();
            
                
            
        } catch (IOException ex) {
            Logger.getLogger(Vista_usuarioController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }  
}
