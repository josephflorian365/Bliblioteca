/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controladores;

import Modelos.Conexion;
import Modelos.Libros;
import Modelos.Prestamo;
import Modelos.devoluciones;
import Modelos.usuarios;
import java.io.IOException;
import java.net.URL;
import java.sql.Date;
import java.util.Observable;
import java.util.ResourceBundle;
import java.util.logging.Level;
import java.util.logging.Logger;
import javafx.beans.value.ChangeListener;
import javafx.beans.value.ObservableValue;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.DatePicker;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.TextField;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.stage.Stage;

/**
 * FXML Controller class
 *
 * @author Js
 */
public class DevolucionesController implements Initializable {
    @FXML
    private Button btnDevolver;
    @FXML
    private TableView<devoluciones> tblPre;
    @FXML
    private TableColumn<devoluciones, Integer> clmnIdPre;
    @FXML
    private TableColumn<devoluciones, Prestamo> clmnfechaPre;
    @FXML
    private TableColumn<devoluciones, Libros> clmnLibro;
    @FXML
    private TableColumn<devoluciones, usuarios> clmnLector;
    @FXML
    private TextField tctLibro;
    @FXML
    private TextField txtLector;
    @FXML
    private TextField txtfechaPre;
    @FXML
    private DatePicker cmbDev;
    @FXML
    private TableView<?> tblDev;
    @FXML
    private TableColumn<?,?> clmnIdDev;
    @FXML
    private TableColumn<?,?> clmnfechaDev;
    @FXML
    private TableColumn<?,? > clmlnLibro;
    @FXML
    private TableColumn<?,?> clmlnLec;
    
    private ObservableList<devoluciones> listadevoluciones;
    private ObservableList<Prestamo> listaprestamo;
    private ObservableList<usuarios> listausuarios;
    private ObservableList<Libros> listalibros;

    /**
     * Initializes the controller class.
     */
    
    private Conexion conexion;
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        // TODO
        conexion= new Conexion();
        conexion.conDB();
        
        //inicializamos listas
        listadevoluciones= FXCollections.observableArrayList();
        listaprestamo= FXCollections.observableArrayList();
        listalibros= FXCollections.observableArrayList();
        listausuarios= FXCollections.observableArrayList();
        
        //llenar listas
        devoluciones.llenarInformacion(conexion.conDB(), listadevoluciones);
        Prestamo.llenarInformacion(conexion.conDB(), listaprestamo);
        usuarios.llenarInformacionUsuarios(conexion.conDB(), listausuarios);
        Libros.llenarInformacionLibros(conexion.conDB(), listalibros);

        
        // Enlazar listas con tableview
        tblPre.setItems(listadevoluciones);
        
        //enlazar columnas con atributos
        clmnIdPre.setCellValueFactory(new PropertyValueFactory<devoluciones, Integer>("IDDEV"));
        clmnfechaPre.setCellValueFactory(new PropertyValueFactory<devoluciones, Prestamo>("prestamo"));
        clmnLibro.setCellValueFactory(new PropertyValueFactory<devoluciones, Libros>("libro"));
        clmnLector.setCellValueFactory(new PropertyValueFactory<devoluciones, usuarios>("usuario"));
        gestionarEventos();
    }    
    public void gestionarEventos(){
        tblPre.getSelectionModel().selectedItemProperty().addListener(
                new ChangeListener<devoluciones>() {
                    @Override
                    public void changed(ObservableValue<? extends devoluciones> arg0,
                            devoluciones valorAnterior, devoluciones valorSeleccionado){
                        if(valorSeleccionado != null){
                            txtfechaPre.setText(String.valueOf(valorSeleccionado.getPrestamo()));
                            txtLector.setText(String.valueOf(valorSeleccionado.getUsuario()));
                            tctLibro.setText(String.valueOf(valorSeleccionado.getLibro()));
                        }
                    }
            
        }
        );
    }
    
    public void closeWindows(){
        try{
            FXMLLoader loader = new FXMLLoader(getClass().getResource("/Vistas/Principal.fxml"));
            
            Parent root= loader.load();
            
            PrincipalController controlador = loader.getController();
            
            Scene scene = new Scene(root);
            Stage stage = new Stage();
            
            stage.setScene(scene);
            new animatefx.animation.ZoomIn(root).play();
            stage.show();
            
            
            
        } catch (IOException ex) {
            Logger.getLogger(EditorialController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
