/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package trabalho;

import java.io.File;
import java.sql.ResultSet;
import java.sql.SQLException;
import javafx.embed.swing.JFXPanel;
import javafx.scene.media.Media;
import javafx.scene.media.MediaPlayer;


/**
 *
 * @author gabi
 */
public class Reproducao extends javax.swing.JPanel {

    final JFXPanel fxPanel = new JFXPanel();
    String uriString;
    Media pick;
    MediaPlayer player;
   
    SingletonMediaPlayer a;
    int verificador = 1;
    public static AcessoBD acessoBD;
    public static ResultSet rs = null;
    public static String pedidoSQL1;
    int idMusica;
    int Duracao;
    String NomeMusica;
    int Lancamento;
    int Faixa;
    String NomeAudio;
    
    public Reproducao() {
        initComponents();    
    }
    
    
    
    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel2 = new javax.swing.JLabel();
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        jButton3 = new javax.swing.JButton();
        jComboBox1 = new javax.swing.JComboBox<>();
        jLabel1 = new javax.swing.JLabel();
        jTextField1 = new javax.swing.JTextField();

        setBackground(new java.awt.Color(0, 153, 153));

        jLabel2.setBackground(new java.awt.Color(204, 255, 255));
        jLabel2.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));

        jButton1.setText("▶");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        jButton2.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        jButton2.setText("| |");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });

        jButton3.setText("⏹");
        jButton3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton3ActionPerformed(evt);
            }
        });

        jComboBox1.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Watch That Man", "Aladdin Sane (1913-1938-197?)", "Drive-In Saturday", "Panic in Detroid", "Cracked Actor", "Time", "The Prettiest Star", "Lets Spend the Night Together", "The Jean Genie", "Lady Grinning Soul", "One More Time", "Aerodynamic", "Digital Love", "Harder, Better, Faster, Stronger", "Give Life Back to Music", "The Game of Love", "Dirty Deeds", "Love Hurts", "Bad Reputation", "Jezebel", "Girls Just Want to Have Fun", "Time After Time", "Angel of The Morning", "Someday" }));
        jComboBox1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jComboBox1ActionPerformed(evt);
            }
        });

        jLabel1.setText("Artista:");

        jTextField1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jTextField1ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(74, 74, 74)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addComponent(jComboBox1, 0, 200, Short.MAX_VALUE)
                            .addComponent(jLabel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(93, 93, 93)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(jLabel1)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                .addComponent(jTextField1, javax.swing.GroupLayout.PREFERRED_SIZE, 112, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(jButton1)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                .addComponent(jButton2)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                .addComponent(jButton3)))))
                .addContainerGap(92, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jComboBox1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, 201, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel1)
                    .addComponent(jTextField1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 22, Short.MAX_VALUE)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jButton1)
                    .addComponent(jButton2)
                    .addComponent(jButton3))
                .addContainerGap())
        );
    }// </editor-fold>//GEN-END:initComponents

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
       //AS MUSICAS QUE ESTÃO COM A LINHA DO JLABEL COMENTADAS, NÃO TEM IMAGENS CORRESPONDENTES NA PASTA IMAGES
       pedidoSQL1 = "SELECT tbcantor.NomeCantor from tbmusica, tbcantor where ((NomeMusica='"+jComboBox1.getSelectedItem()+"') and (tbmusica.idmcantor = tbcantor.idCantor))";
            acessoBD = new AcessoBD();
            acessoBD.conecta();
            rs = acessoBD.consulta(pedidoSQL1);
           try{
           while(rs.next()){
               jTextField1.setText(rs.getString("NomeCantor"));
              }
            }
            catch(SQLException e){
            System.out.println("Exceção: " + e.toString());
            }
            acessoBD.fechaConexao();
      
       
       //1
        if(jComboBox1.getSelectedItem().equals("Watch That Man")){
            jLabel2.setIcon(new javax.swing.ImageIcon("C:\\Users\\JULIOCESARLEITEDEJES\\Documents\\NetBeansProjects\\musicstation\\src\\capas\\28980.jpg")); 
            uriString = new File("C:\\Users\\JULIOCESARLEITEDEJES\\Documents\\NetBeansProjects\\musicstation\\src\\uploads\\28980.mp3").toURI().toString();
        }
        
        //2
        if(jComboBox1.getSelectedItem().equals("Aladdin Sane (1913-1938-197?)")){
            jLabel2.setIcon(new javax.swing.ImageIcon("C:\\Users\\JULIOCESARLEITEDEJES\\Documents\\NetBeansProjects\\musicstation\\src\\capas\\15197.jpg")); 
            uriString = new File("C:\\Users\\JULIOCESARLEITEDEJES\\Documents\\NetBeansProjects\\musicstation\\src\\uploads\\15197.mp3").toURI().toString();
        }
        
        //3
        if(jComboBox1.getSelectedItem().equals("Drive-In Saturday")){
           jLabel2.setIcon(new javax.swing.ImageIcon("C:\\Users\\JULIOCESARLEITEDEJES\\Documents\\NetBeansProjects\\musicstation\\src\\capas\\19666.jpg")); 
            uriString = new File("C:\\Users\\JULIOCESARLEITEDEJES\\Documents\\NetBeansProjects\\musicstation\\src\\uploads\\19666.mp3").toURI().toString();
        }
        
        //4
        if(jComboBox1.getSelectedItem().equals("Panic in Detroid")){
            jLabel2.setIcon(new javax.swing.ImageIcon("C:\\Users\\JULIOCESARLEITEDEJES\\Documents\\NetBeansProjects\\musicstation\\src\\capas\\26385.jpg")); 
            uriString = new File("C:\\Users\\JULIOCESARLEITEDEJES\\Documents\\NetBeansProjects\\musicstation\\src\\uploads\\26385.mp3").toURI().toString();
        }
        
        //5
        if(jComboBox1.getSelectedItem().equals("Cracked Actor")){
            jLabel2.setIcon(new javax.swing.ImageIcon("C:\\Users\\JULIOCESARLEITEDEJES\\Documents\\NetBeansProjects\\musicstation\\src\\capas\\16502.jpg")); 
            uriString = new File("C:\\User\\JULIOCESARLEITEDEJES\\Documents\\NetBeansProjects\\musicstation\\src\\uploads\\16502.mp3").toURI().toString();
        }
        
        //6
        if(jComboBox1.getSelectedItem().equals("Time")){
            jLabel2.setIcon(new javax.swing.ImageIcon("C:\\Users\\JULIOCESARLEITEDEJES\\Documents\\NetBeansProjects\\musicstation\\src\\capas\\5751.jpg")); 
            uriString = new File("C:\\Users\\JULIOCESARLEITEDEJES\\Documents\\NetBeansProjects\\musicstation\\src\\uploads\\5751.mp3").toURI().toString();
        }
        
        //7
        if(jComboBox1.getSelectedItem().equals("The Prettiest Star")){
            jLabel2.setIcon(new javax.swing.ImageIcon("C:\\Users\\JULIOCESARLEITEDEJES\\Documents\\NetBeansProjects\\musicstation\\src\\capas\\740.jpg")); 
            uriString = new File("C:\\Users\\JULIOCESARLEITEDEJES\\Documents\\NetBeansProjects\\musicstation\\src\\uploads\\740.mp3").toURI().toString();
        }
        
        if(jComboBox1.getSelectedItem().equals("Lets Spend the Night Together")){
            jLabel2.setIcon(new javax.swing.ImageIcon("C:\\Users\\JULIOCESARLEITEDEJES\\Documents\\NetBeansProjects\\musicstation\\src\\capas\\25421.jpg")); 
            uriString = new File("C:\\Users\\JULIOCESARLEITEDEJES\\Documents\\NetBeansProjects\\musicstation\\src\\uploads\\25421.mp3").toURI().toString();
        }
        
        if(jComboBox1.getSelectedItem().equals("The Jean Genie")){
            jLabel2.setIcon(new javax.swing.ImageIcon("C:\\Users\\JULIOCESARLEITEDEJES\\Documents\\NetBeansProjects\\musicstation\\src\\capas\\28162.jpg")); 
            uriString = new File("C:\\Users\\JULIOCESARLEITEDEJES\\Documents\\NetBeansProjects\\musicstation\\src\\uploads\\28162.mp3").toURI().toString();
        }
        
        if(jComboBox1.getSelectedItem().equals("Lady Grinning Soul")){
            jLabel2.setIcon(new javax.swing.ImageIcon("C:\\Users\\JULIOCESARLEITEDEJES\\Documents\\NetBeansProjects\\musicstation\\src\\capas\\8979.jpg")); 
            uriString = new File("C:\\Users\\JULIOCESARLEITEDEJES\\Documents\\NetBeansProjects\\musicstation\\src\\uploads\\8979.mp3").toURI().toString();
        }
        
        if(jComboBox1.getSelectedItem().equals("One More Time")){
            jLabel2.setIcon(new javax.swing.ImageIcon("C:\\Users\\JULIOCESARLEITEDEJES\\Documents\\NetBeansProjects\\musicstation\\src\\capas\\31083.jpg")); 
            uriString = new File("C:\\Users\\JULIOCESARLEITEDEJES\\Documents\\NetBeansProjects\\musicstation\\src\\uploads\\31083.mp3").toURI().toString();
        }
        
        if(jComboBox1.getSelectedItem().equals("Aerodynamic")){
            jLabel2.setIcon(new javax.swing.ImageIcon("C:\\Users\\JULIOCESARLEITEDEJES\\Documents\\NetBeansProjects\\musicstation\\src\\capas\\26960.jpg")); 
            uriString = new File("C:\\Users\\JULIOCESARLEITEDEJES\\Documents\\NetBeansProjects\\musicstation\\src\\uploads\\26960.mp3").toURI().toString();
        }
        
        if(jComboBox1.getSelectedItem().equals("Digital Love")){
            jLabel2.setIcon(new javax.swing.ImageIcon("C:\\Users\\JULIOCESARLEITEDEJES\\Documents\\NetBeansProjects\\musicstation\\src\\capas\\26441.jpg")); 
            uriString = new File("C:\\Users\\JULIOCESARLEITEDEJES\\Documents\\NetBeansProjects\\musicstation\\src\\uploads\\26441.mp3").toURI().toString();
        }
        
        if(jComboBox1.getSelectedItem().equals("Harder, Better, Faster, Stronger")){
            jLabel2.setIcon(new javax.swing.ImageIcon("C:\\Users\\JULIOCESARLEITEDEJES\\Documents\\NetBeansProjects\\musicstation\\src\\capas\\26702.jpg")); 
            uriString = new File("C:\\Users\\JULIOCESARLEITEDEJES\\Documents\\NetBeansProjects\\musicstation\\src\\uploads\\26702.mp3").toURI().toString();
        }
        
        if(jComboBox1.getSelectedItem().equals("Give Life Back To Music")){
            jLabel2.setIcon(new javax.swing.ImageIcon("C:\\Users\\JULIOCESARLEITEDEJES\\Documents\\NetBeansProjects\\musicstation\\src\\capas\\19068.jpg")); 
            uriString = new File("C:\\Users\\JULIOCESARLEITEDEJES\\Documents\\NetBeansProjects\\musicstation\\src\\uploads\\19068.mp3").toURI().toString();
        }
        
        if(jComboBox1.getSelectedItem().equals("The Game of Love")){
            jLabel2.setIcon(new javax.swing.ImageIcon("C:\\Users\\JULIOCESARLEITEDEJES\\Documents\\NetBeansProjects\\musicstation\\src\\capas\\12037.jpg")); 
            uriString = new File("C:\\Users\\JULIOCESARLEITEDEJES\\Documents\\NetBeansProjects\\musicstation\\src\\uploads\\12037.mp3").toURI().toString();
        }
        
        if(jComboBox1.getSelectedItem().equals("Dirty Deeds")){
            jLabel2.setIcon(new javax.swing.ImageIcon("C:\\Users\\JULIOCESARLEITEDEJES\\Documents\\NetBeansProjects\\musicstation\\src\\capas\\24995.jpg")); 
            uriString = new File("C:\\Users\\JULIOCESARLEITEDEJES\\Documents\\NetBeansProjects\\musicstation\\src\\uploads\\24995.mp3").toURI().toString();
        }
        
        if(jComboBox1.getSelectedItem().equals("Love Hurts")){
            jLabel2.setIcon(new javax.swing.ImageIcon("C:\\Users\\JULIOCESARLEITEDEJES\\Documents\\NetBeansProjects\\musicstation\\src\\capas\\12037.jpg")); 
            uriString = new File("C:\\Users\\JULIOCESARLEITEDEJES\\Documents\\NetBeansProjects\\musicstation\\src\\uploads\\12037.mp3").toURI().toString();
        }
        
        if(jComboBox1.getSelectedItem().equals("Bad Reputation")){
            jLabel2.setIcon(new javax.swing.ImageIcon("C:\\Users\\JULIOCESARLEITEDEJES\\Documents\\NetBeansProjects\\musicstation\\src\\capas\\25630.jpg")); 
            uriString = new File("C:\\Users\\JULIOCESARLEITEDEJES\\Documents\\NetBeansProjects\\musicstation\\src\\uploads\\25630.mp3").toURI().toString();
        }
        
        if(jComboBox1.getSelectedItem().equals("Jezebel")){
            jLabel2.setIcon(new javax.swing.ImageIcon("C:\\Users\\JULIOCESARLEITEDEJES\\Documents\\NetBeansProjects\\musicstation\\src\\capas\\23057.jpg")); 
            uriString = new File("C:\\Users\\JULIOCESARLEITEDEJES\\Documents\\NetBeansProjects\\musicstation\\src\\uploads\\23057.mp3").toURI().toString();
        }
        
        if(jComboBox1.getSelectedItem().equals("Girls Just Want to Have Fun")){
            jLabel2.setIcon(new javax.swing.ImageIcon("C:\\Users\\JULIOCESARLEITEDEJES\\Documents\\NetBeansProjects\\musicstation\\src\\capas\\21762.jpg")); 
            uriString = new File("C:\\Users\\JULIOCESARLEITEDEJES\\Documents\\NetBeansProjects\\musicstation\\src\\uploads\\21762.mp3").toURI().toString();
        }
        
        if(jComboBox1.getSelectedItem().equals("Time After Time")){
            jLabel2.setIcon(new javax.swing.ImageIcon("C:\\Users\\JULIOCESARLEITEDEJES\\Documents\\NetBeansProjects\\musicstation\\src\\capas\\32275.jpg")); 
            uriString = new File("C:\\Users\\JULIOCESARLEITEDEJES\\Documents\\NetBeansProjects\\musicstation\\src\\uploads\\32275.mp3").toURI().toString();
        }
        
        if(jComboBox1.getSelectedItem().equals("Angel of The Morning")){
            jLabel2.setIcon(new javax.swing.ImageIcon("C:\\Users\\JULIOCESARLEITEDEJES\\Documents\\NetBeansProjects\\musicstation\\src\\capas\\29951.jpg")); 
            uriString = new File("C:\\Users\\JULIOCESARLEITEDEJES\\Documents\\NetBeansProjects\\musicstation\\src\\uploads\\29951.mp3").toURI().toString();
        }
        
        if(jComboBox1.getSelectedItem().equals("Someday")){
            jLabel2.setIcon(new javax.swing.ImageIcon("C:\\Users\\JULIOCESARLEITEDEJES\\Documents\\NetBeansProjects\\musicstation\\src\\capas\\9258.jpg")); 
            uriString = new File("C:\\Users\\JULIOCESARLEITEDEJES\\Documents\\NetBeansProjects\\musicstation\\src\\uploads\\9258.mp3").toURI().toString();
        }
        
        
        
         Media pick = new Media(uriString);
         player = a.getInstance(verificador, pick);
         player.play();     
        verificador = verificador + 1;
         
         
          
    }//GEN-LAST:event_jButton1ActionPerformed

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        player = a.getInstance(verificador, pick);
        player.pause();
    }//GEN-LAST:event_jButton2ActionPerformed

    private void jButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton3ActionPerformed

        player = a.getInstance(verificador, pick);
        player.stop();
        verificador = 0;
        System.out.println("" + verificador);
    }//GEN-LAST:event_jButton3ActionPerformed

    private void jComboBox1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jComboBox1ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jComboBox1ActionPerformed

    private void jTextField1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTextField1ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jTextField1ActionPerformed


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton3;
    private javax.swing.JComboBox<String> jComboBox1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JTextField jTextField1;
    // End of variables declaration//GEN-END:variables
}
