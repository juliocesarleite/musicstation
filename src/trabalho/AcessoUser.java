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
public class AcessoUser {
        this.connection = new AcessoBD().getConnection();
    } 
    
   public ArrayList<User> read(){
  
       
        PreparedStatement stmt = null;
        ResultSet rs = null;
        
        ArrayList <User> user = new ArrayList();
        
        try {
            stmt = connection.prepareStatement("select user, email, senha, id, adm  from tbuser");
            rs = stmt.executeQuery();
            
            while(rs.next()){ //enquanto o select gerar valor, o while será executado
                User user = new User();
                
                user.setUser(rs.getString("user"));
                mus.setEmail(rs.getString("email"));
                mus.setSenha(rs.getString("senha"));
  
                
                user.add(user);
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
}
