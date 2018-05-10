/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package challenge2_2;

import java.util.Date;
import java.text.SimpleDateFormat;

/**
 *
 * @author Arika
 */
public class calendar2 {
    public static void main(String[] args){
        
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日 HH時mm分ss秒");
        Date now = new Date();
        
        System.out.print(sdf.format(now));
    }
}
