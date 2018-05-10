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
public class strings3 {
    public static void main(String[] args) {
        String str = "きょUはぴIえIちぴIのくみこみかんすUのがくしゅUをしてIます";
        str = str.replace("U", "う");
        str = str.replace("I", "い");
        
        System.out.println(str);
    }
}
