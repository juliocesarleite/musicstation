/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package trabalho;

/**
 *
 * @author JULIOCESARLEITEDEJES
 */
public class JFrameUser implements Strategy{

    @Override
    public void abrirJFrame() {
            TelaPrincipalUser tp = new TelaPrincipalUser();
            tp.setVisible(true);
    }
    
}
