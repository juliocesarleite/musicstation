/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package trabalho;

import Modelo.Musicas;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.logging.Logger;

/**
 *
 * @author ht3000222
 */

public class AcessoUser{
    
private Connection connection;


public AcessoUser(){
        this.connection = new AcessoBD().getConnection();
    } 
    
   public ArrayList<User> read(){
  
       
        PreparedStatement stmt = null;
        ResultSet rs = null;
        
        ArrayList <User> user = new ArrayList();
        
        try {
            stmt = connection.prepareStatement("select user, email, senha from tbuser");
            rs = stmt.executeQuery();
            
            while(rs.next()){ //enquanto o select gerar valor, o while será executado
                User userr = new User();
                
                userr.setUser(rs.getString("user"));
                userr.setEmail(rs.getString("email"));
                userr.setSenha(rs.getString("senha"));
  
                
                user.add(userr);
            }
            stmt.close();
            rs.close();
            
        } catch (SQLException ex) {
            System.err.println("Excessão: " + ex.toString());
        }
        return user;
    }
    

    void fechaConexao() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
   

}
