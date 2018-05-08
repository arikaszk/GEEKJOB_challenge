/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package blackjack;

import java.util.ArrayList;
import java.util.Random;

/**
 *
 * @author Arika
 */
public class User extends Human {
    
    public void setCard(ArrayList<Integer> a){
        myCards.addAll(a);
    }
    
    public boolean checkSum(){
        return open() < 21;
    }
    
    public int open() {
        int sum = 0;
        int one = 0;
        for(int num : myCards){
            if(num > 10){
                sum += 10;
            }else if(num == 1){
                sum += 11;
                one++;
            }else{
                sum += num;
            }
        }
        
        while(sum > 21){
            if(one > 0){
                sum -= 10;
                one--;
            }else{
                break;
            }
        }
        
        return sum;
    }
}
