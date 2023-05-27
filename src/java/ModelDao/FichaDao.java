/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModelDao;

import Config.Conexion;
import Interfaz.MeFicha;
import Model.Ficha;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JOptionPane;

/**
 *
 * @author APRENDIZ
 */
public class FichaDao implements MeFicha {
    
    Conexion co = new Conexion();
    Connection cn;
    PreparedStatement ps;
    ResultSet rs;
    Ficha fic = new Ficha();
    int id;

    @Override
    public Ficha list(int cod) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public List listarficha() {
        ArrayList<Ficha> lista = new ArrayList<>();
        String sql = "select * from programa";
        try{
            cn = co.getConnection();
            ps = cn.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                Ficha fic = new Ficha();
                fic.setCodficha(rs.getInt("codfi"));
                fic.setCantaprendices(rs.getInt("cantapr"));
                fic.setCodpro(rs.getInt("listapro"));
                fic.setCodapr(rs.getInt("listaape"));
                
                lista.add(fic);
            }
        }catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Lista no mostrada: "+e.getMessage());
        }
        return lista;
    }

    @Override
    public boolean registrarficha(Ficha fi) {
        String sql="insert into ficha(codficha,cantapre,codprog,codapre)values('"+fi.getCodficha()+"','"+fi.getCantaprendices()+"','"+fi.getCodpro()+"','"+fi.getCodapr()+"')";
        try{
            cn = co.getConnection();
            ps = cn.prepareStatement(sql);
            ps.executeUpdate();
            
            JOptionPane.showMessageDialog(null,"Ficha registrada");
        }catch(Exception e){
            JOptionPane.showMessageDialog(null,"Ficha no registrada"+e.getMessage());
        }
        return false;
    }

    @Override
    public boolean actualizarficha(Ficha fi) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean eliminarficha(int cod) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
}
