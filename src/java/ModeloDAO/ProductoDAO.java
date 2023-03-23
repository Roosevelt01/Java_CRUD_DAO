/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModeloDAO;

import Config.Conexion;
import Interfaces.CRUD;
import Modelo.Producto;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Alejandro Rodriguez
 */
public class ProductoDAO implements CRUD{
    Conexion cn= new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Producto p = new Producto();
    
    @Override
    public List listar() {
        ArrayList<Producto>list=new ArrayList<>();
        String sql = "select * from producto";
        
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();            
            while(rs.next()){
                Producto pro = new Producto();
                pro.setIdProducto(rs.getInt("idProducto"));
                pro.setNombres(rs.getString("Nombres"));
                pro.setDescripcion(rs.getString("Descripcion"));
                pro.setPrecio(rs.getDouble("Precio"));
                list.add(pro);
            }
        }catch(Exception ex){
             System.err.println("Error al consultar: "+ex);
        }
        return list;
    }

    @Override
    public Producto list(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
}
