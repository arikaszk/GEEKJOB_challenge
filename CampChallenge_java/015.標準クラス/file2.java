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
public class file2 {
    public static void main(String[] args) throws IOException{
        File f = new File("intro_myself.txt");
        FileReader fr = new FileReader(f);
        BufferedReader br = new BufferedReader(fr);
        
        System.out.print(br.readLine());
        
    }
}
