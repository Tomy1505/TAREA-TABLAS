/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModelDao;

import Config.Conexion;
import Interfaz.MePrograma;
import Model.Programa;
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
public class ProgramaDao implements MePrograma{
    
    Conexion co = new Conexion();
    Connection cn;
    PreparedStatement ps;
    ResultSet rs;
    Programa pro = new Programa();
    int id;

    @Override
    public Programa listar(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public List listarpro() {
        ArrayList<Programa> lista = new ArrayList<>();
        String sql = "select * from programa";
        try{
            cn = co.getConnection();
            ps = cn.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                Programa pro = new Programa();
                pro.setCodprogra(rs.getInt("codprograma"));
                pro.setNomprogra(rs.getString("nomprograma"));           
                lista.add(pro);
            }
        }catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Lista no mostrada: "+e.getMessage());
        }
        return lista;
    }
    
    @Override
    public boolean registrarpro(Programa pro) {
        String sql="insert into programa(codprograma,nomprograma)values('"+pro.getCodprogra()+"','"+pro.getNomprogra()+"')";
        try{
            cn = co.getConnection();
            ps = cn.prepareStatement(sql);
            ps.executeUpdate();
            
            JOptionPane.showMessageDialog(null,"Programa registrado");
        }catch(Exception e){
            JOptionPane.showMessageDialog(null,"Programa no registrado"+e.getMessage());
        }
        return false;
    }

    @Override
    public boolean actualizarpro(Programa pro) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean eliminarpro(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
}
