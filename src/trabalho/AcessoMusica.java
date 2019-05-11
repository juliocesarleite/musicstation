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

/**
 *
 * @author ht3000222
 */
public class AcessoMusica {
    private Connection connection;
    
    public AcessoMusica(){
        this.connection = new AcessoBD().getConnection();
    } 
    
   public ArrayList<Musicas> read(){
  
       
        PreparedStatement stmt = null;
        ResultSet rs = null;
        
        ArrayList <Musicas> musicas = new ArrayList();
        
        try {
            stmt = connection.prepareStatement("select idMusica, NomeMusica, NomeCantor from tbmusica, tbcantor where tbmusica.idmCantor=tbcantor.idCantor");
            rs = stmt.executeQuery();
            
            while(rs.next()){ //enquanto o select gerar valor, o while será executado
                Musicas mus = new Musicas();
                
                mus.setIdMusica(rs.getString("idMusica"));
                mus.setNomeMusica(rs.getString("NomeMusica"));
                mus.setIdCantor(rs.getString("NomeCantor"));
  
                
                musicas.add(mus);
            }
            stmt.close();
            rs.close();
            
        } catch (SQLException ex) {
            System.err.println("Excessão: " + ex.toString());
        }
        return musicas;
    }
   
   public static Calendar toCalendar(Date date){ 
        GregorianCalendar cal = new GregorianCalendar();
        cal.setTime(date);
        return cal;
    }
    

    void fechaConexao() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
   

}
