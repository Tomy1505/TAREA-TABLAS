/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author APRENDIZ
 */
public class Conexion {
    protected Connection con = null;
    private final String url="jdbc:mysql://localhost/tablas";
    private final String usuario= "root";
    private final String password="";

    public Conexion() {
        
        try{
           Class.forName("com.mysql.jdbc.Driver");
           con=DriverManager.getConnection(url,usuario,password);
           System.out.println("Conexion Exitosa");
        }catch(SQLException ex){
            System.out.println("error al abrir conexion" +ex.getMessage());
        }catch(ClassNotFoundException ex){
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public Connection getConnection(){
        return con;
    }

    public Connection getConnection(String sql) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
}
