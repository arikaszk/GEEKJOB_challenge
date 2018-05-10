/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package challenge2_2;

/**
 *
 * @author Arika
 */
public class strings2 {
    public static void main(String[] args) {
        String adress = "hogehoge@gmail.com";
        int start = adress.indexOf("@");
        String str = adress.substring(start + 1);
        
        System.out.println("メールアドレス：" + adress);
        System.out.println("@以降の長さ：" + str.length());
    }
}
