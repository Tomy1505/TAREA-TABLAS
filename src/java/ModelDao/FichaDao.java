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
    public Ficha list(int id) {
        String sql="Select * from Ficha where codficha="+id;
        try{
            cn=co.getConnection();
            ps=cn.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                fic.setCodficha(rs.getInt("codficha"));
                fic.setCantaprendices(rs.getInt("cantapre"));
                fic.setCodpro(rs.getInt("codprog"));
                fic.setCodapr(rs.getInt("codapre"));
            }
        }catch(Exception e){
            
        }
        return fic;
    }

    @Override
    public List listarficha() {
        ArrayList<Ficha> lista = new ArrayList<>();
        String sql = "select * from ficha";
        try{
            cn = co.getConnection();
            ps = cn.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                Ficha fic = new Ficha();
                fic.setCodficha(rs.getInt("codficha"));
                fic.setCantaprendices(rs.getInt("cantapre"));
                fic.setCodpro(rs.getInt("codprog"));
                fic.setCodapr(rs.getInt("codapre"));
                
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
        String sql="update ficha set cantapre='"+fi.getCantaprendices()+"',cdprog='"+fi.getCodpro()+"',codapre='"+fi.getCodapr()+"' where codficha='"+fi.getCodficha();
        try{
            cn = co.getConnection();
            ps = cn.prepareStatement(sql);
            ps.executeUpdate();
            JOptionPane.showMessageDialog(null,"Ficha actualizada");
            }catch(Exception e){
             JOptionPane.showMessageDialog(null,"Ficha no pudo ser actualizada"+e.getMessage());
        }
        return false;
    }

    @Override
    public boolean eliminarficha(int codficha) {
        String sql="delete from ficha where codficha="+codficha;
        try{
            cn = co.getConnection();
            ps = cn.prepareStatement(sql);
            ps.executeUpdate();
            JOptionPane.showMessageDialog(null,"Ficha eliminada");
        }catch(Exception e){
            JOptionPane.showMessageDialog(null,"Ficha no pudo ser eliminada"+e.getMessage());
        }
        return false;
    }
    
}
