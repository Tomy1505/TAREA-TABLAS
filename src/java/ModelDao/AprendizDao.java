/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModelDao;

import Config.Conexion;
import Interfaz.MeAprendiz;
import Model.Aprendiz;
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
public class AprendizDao implements MeAprendiz {
    
    Conexion co = new Conexion();
    Connection cn;
    PreparedStatement ps;
    ResultSet rs;
    Aprendiz ape = new Aprendiz();
    int id;
    
    @Override
    public Aprendiz list(int id) {
        String sql="Select * from Aprendiz where id="+id;
        try{
            cn=co.getConnection();
            ps=cn.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                ape.setId(rs.getInt("id"));
                ape.setDoca(rs.getInt("documentoa"));
                ape.setNoma(rs.getString("nombrea"));
                ape.setApea(rs.getString("apellidoa"));
                ape.setEmaa(rs.getString("emaila"));
                ape.setTela(rs.getInt("telefonoa"));
            }
            
        }catch(Exception e){
            
        }return ape;
    }

    @Override
    public List listadoA() {
        ArrayList<Aprendiz> lista = new ArrayList<>();
        String sql = "select * from aprendiz";
        try{
            cn = co.getConnection();
            ps = cn.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                
                Aprendiz ape = new Aprendiz();
                ape.setId(rs.getInt("id"));
                ape.setDoca(rs.getInt("documentoa"));
                ape.setNoma(rs.getString("nombrea"));
                ape.setApea(rs.getString("apellidoa"));
                ape.setEmaa(rs.getString("emaila"));
                ape.setTela(rs.getInt("telefonoa"));
                lista.add(ape);
            }
        }catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Lista no mostrada: "+e.getMessage());
        }
        return lista;
    }

    @Override
    public boolean registrarap(Aprendiz ap) {
        String sql="insert into aprendiz(documentoa,nombrea,apellidoa,emaila,telefonoa)values('"+ap.getDoca()+"','"+ap.getNoma()+"','"+ap.getApea()+"','"+ap.getEmaa()+"','"+ap.getTela()+"')";
        try{
            cn = co.getConnection();
            ps = cn.prepareStatement(sql);
            ps.executeUpdate();
            
            JOptionPane.showMessageDialog(null,"Aprendiz registrado");
        }catch(Exception e){
            JOptionPane.showMessageDialog(null,"Aprendiz no registrado"+e.getMessage());
        }
        return false;
    }

    @Override
    public boolean actualizarap(Aprendiz ap) {
        String sql="update aprendiz set documentoa='"+ap.getDoca()+"',nombrea='"+ap.getNoma()+"',apellidoa='"+ap.getApea()+"',emaila='"+ap.getEmaa()+"',telefonoa='"+ap.getTela()+"' where id="+ap.getId();
            
            try{
            cn = co.getConnection();
            ps = cn.prepareStatement(sql);
            ps.executeUpdate();
            JOptionPane.showMessageDialog(null,"Usuario actualizado");
            }catch(Exception e){
             JOptionPane.showMessageDialog(null,"Usuario no pudo ser actualizado"+e.getMessage());
        }
        return false;
    }

    @Override
    public boolean eliminarap(int id) {
        String sql="delete from aprendiz where id="+id;
        try{
            cn = co.getConnection();
            ps = cn.prepareStatement(sql);
            ps.executeUpdate();
            JOptionPane.showMessageDialog(null,"Usuario eliminado");
        }catch(Exception e){
            JOptionPane.showMessageDialog(null,"Usuario no pudo ser eliminado");
        }
        return false;
    }
    
}
