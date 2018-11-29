/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Categoria;
import model.Editorial;

/**
 *
 * @author Arranque 4
 */
public class CategoriaDAO {//abrir y cerra la conexion

    public static boolean registrar(Categoria c) {

        try {
            String SQL = "INSERT INTO categorias(nombre) values(?);";
            Connection con = Conexion.conectar();
            PreparedStatement st = con.prepareStatement(SQL); // prepared es que es una insert
            st.setString(1, c.getNombre());
            if (st.executeUpdate() > 0) {
                return true;

            } else {
                return false;
            }
        } catch (SQLException ex) {
            Logger.getLogger(CategoriaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;

    }

    public static boolean eliminar(Categoria cat) {

        try {
            String SQL = "DELETE FROM categorias WHERE nombre=?";;
            Connection con = Conexion.conectar();
            PreparedStatement st = con.prepareStatement(SQL); // prepared es que es una insert
            st.setString(1, cat.getNombre());
            if (st.executeUpdate() > 0) {
                return true;

            } else {
                return false;
            }
        } catch (SQLException ex) {
            Logger.getLogger(CategoriaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
 public static ArrayList <Categoria> listar(){ 
        try {
            String SQL = "SELECT * FROM categorias";
            Connection con = Conexion.conectar();
            PreparedStatement st = con.prepareStatement (SQL); 
            ResultSet resultado = st.executeQuery();//guarda en resultado la query que hace
            ArrayList<Categoria> lista = new ArrayList<>();
            Categoria cat;
            
            while (resultado.next()){
                cat = new Categoria();
                cat.setCodigo(resultado.getInt("codigo"));
                cat.setNombre(resultado.getString("nombre"));
                lista.add(cat);
            }
            return lista;

        } catch (SQLException ex) {
            return null;
        }
    }
 
 public static String getCategoria(int cod){
        
         try {
            String SQL = "SELECT nombre FROM categorias WHERE codigo=?";
            Connection con = Conexion.conectar();
            PreparedStatement st = con.prepareStatement (SQL); 
            st.setInt(1, cod);
            ResultSet resultado=st.executeQuery();
            if(resultado.next()){
                return resultado.getString("nombre");
            }else{
                return "nada de nada";
            }
        } catch (SQLException ex) {
            return "se ha caido";
        }
    } 
}
