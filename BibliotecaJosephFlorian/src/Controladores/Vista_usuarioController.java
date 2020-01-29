/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controladores;

import com.jfoenix.controls.JFXPasswordField;
import com.jfoenix.controls.JFXTextField;
import java.io.IOException;
import java.net.URL;
import java.util.ResourceBundle;
import java.util.logging.Level;
import java.util.logging.Logger;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.stage.Stage;

/**
 * FXML Controller class
 *
 * @author Js
 */
public class Vista_usuarioController implements Initializable {

    @FXML
    private Button btnGuardar;
    @FXML
    private JFXTextField txtNombres;
    @FXML
    private JFXTextField txtApe;
    @FXML
    private JFXTextField txtTel;
    @FXML
    private JFXTextField txtuser;
    @FXML
    private JFXPasswordField txtcontra;
    @FXML
    private Button txtEditar;
    @FXML
    private Button txtEliminar;

    /**
     * Initializes the controller class.
     */
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
