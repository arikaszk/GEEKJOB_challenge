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
public class BlackJack {
    public static void main(String[] args){
        
        Dealer dealer = new Dealer();
        User user = new User();
        
        //ディーラーとユーザー両方にスタートの手札を配布
        dealer.setCard(dealer.deal());
        user.setCard(dealer.deal());
        
        System.out.println("<スタート>");
        System.out.println("ディーラーの手札" + dealer.myCards + " 合計：" + dealer.open());
        System.out.println("ユーザーの手札" + user.myCards + " 合計：" + user.open());
        
        int i = 1;
        while(dealer.checkSum() && user.checkSum()){
            System.out.println("<" + i + "回目>");
            
            dealer.setCard(dealer.hit());
            System.out.println("ディーラーの手札" + dealer.myCards + " 合計：" + dealer.open());
            user.setCard(dealer.hit());
            System.out.println("ユーザーの手札" + user.myCards + " 合計：" + user.open());
            
            i++;
        }
        
        System.out.println("<結果>");
        
        if(dealer.open() == 21 && user.open() == 21){
            System.out.println("引き分け");
        }else if(dealer.open() == 21){
            System.out.println("ディーラーの勝利");
        }else if(user.open() == 21){
            System.out.println("ユーザーの勝利");
        }else if(!dealer.checkSum() && !user.checkSum()){
            System.out.println("引き分け");
        }else if(dealer.checkSum() && !user.checkSum()){
            System.out.println("ディーラーの勝利");
        }else if(!dealer.checkSum() && user.checkSum()){
            System.out.println("ユーザーの勝利");
        }
    }  
}
