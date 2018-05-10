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
public class calendar4 {
    public static void main(String[] args){
        Calendar from = Calendar.getInstance();
        Calendar to = Calendar.getInstance();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日 HH時mm分ss秒");
        
        from.set(2015, 0, 1, 0, 0, 0);
        to.set(2015, 11, 31, 23, 59, 59);
        
        long dateFrom = from.getTimeInMillis();
        long dateTo = to.getTimeInMillis();
        
        long difD = (dateTo - dateFrom) / (1000 * 60 * 60 * 24);
        long D = (dateTo - dateFrom) % (1000 * 60 * 60 * 24);
        long difH = D / (1000 * 60 * 60);
        long H = D % (1000 * 60 * 60);
        long difM = H / (1000 * 60);
        long M = H % (1000 * 60);
        long difS = M / 1000;
        
        System.out.print(sdf.format(from.getTime()) + "と" + sdf.format(to.getTime()) + "の差は" 
                + difD + "日" + difH + "時間" + difM + "分" + difS + "秒");
    }
}
