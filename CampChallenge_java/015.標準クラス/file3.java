/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package challenge2_2;

import java.io.*;
import java.util.Date;
import java.text.SimpleDateFormat;

/**
 *
 * @author Arika
 */
public class file3 {
    public static void main(String[] args) throws IOException{
        File newFile = new File("sugoroku_log.text");
        FileWriter fw = new FileWriter(newFile, true);
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        
        Date startD = new Date();
        if(!newFile.exists()){
            newFile.createNewFile();
        }
        fw.write("すごろく　" + sdf.format(startD.getTime()) + " 開始\r");
        
        System.out.println("【スタート】");
        
        int a = 0;
        int toGoal = 36;
        for(int i = 1; true; i++){
            System.out.println("[" + i + "回目]");
            int go = (int) ((Math.random() * 6) + 1);
            System.out.println(go + "マス進む");
            toGoal -= go;
            if(toGoal <= 0){
                a = i;
                break;
            }
        }
        System.out.println("【ゴール】");
        System.out.println("ゴールするまでに" + a + "手かかりました");
        
        Date finishD = new Date();
        fw.write("すごろく　" + sdf.format(startD.getTime()) + " 終了\r");
        fw.close();
    }
}
