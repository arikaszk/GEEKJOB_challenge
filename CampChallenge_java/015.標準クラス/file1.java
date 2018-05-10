/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package challenge2_2;

import java.io.*;

/**
 *
 * @author Arika
 */
public class file1 {
    public static void main(String[] args) throws IOException {
        File f = new File("intro_myself.txt");
        f.createNewFile();
        
        FileWriter fw = new FileWriter(f);
        fw.write("私の名前は鈴木有佳です。東京都在住です。");
        fw.close();
    }
}
