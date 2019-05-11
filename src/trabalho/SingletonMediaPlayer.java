/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package trabalho;


import javafx.scene.media.Media;
import javafx.scene.media.MediaPlayer;


public class SingletonMediaPlayer {
 
    public static MediaPlayer player;
        private SingletonMediaPlayer() { // o construtor é privado
        }
        
       
        public static MediaPlayer getInstance(Integer ver,Media pick) {
            if(ver == 0){
                player = null;
                if (player == null){
                player = new MediaPlayer(pick);
            }
            return player;
        }else
            if (player == null){
                player = new MediaPlayer(pick);
            }
            return player;
    }
        
}
