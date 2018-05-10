/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package challenge2_2;

import java.util.Calendar;
import java.text.SimpleDateFormat;

/**
 *
 * @author Arika
 */
public class calendar3 {
    public static void main(String[] args){
        Calendar c = Calendar.getInstance();
        c.set(2016, 10, 4, 10, 0, 0);
        
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        
        System.out.println(sdf.format(c.getTime()));
    }
}
