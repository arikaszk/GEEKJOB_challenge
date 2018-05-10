/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package challenge2_2;

import java.io.UnsupportedEncodingException;

/**
 *
 * @author Arika
 */
public class strings1 {
    public static void main(String[] args) throws UnsupportedEncodingException {
        String str = "鈴木有佳";
        
        System.out.println("氏名：" + str);
        System.out.println("文字数：" + str.length());
        System.out.println("バイト数：" + str.getBytes("Shift_JIS").length);
    }
}
