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


public class Dealer extends Human {
    
    //52枚のトランプを格納するArrayList
    protected ArrayList<Integer> cards = new ArrayList<>();
    
    //1-13を4回配列に格納する
    public Dealer(){
        for(int i = 0; i < 4; i++){
            for(int m = 1; m <= 13; m++){
                cards.add(m);
            }
        }
    }
    
    //dealという公開メソッド
    //cardsからランダムで2枚のカードを引き、ArrayListで値を返す
    public ArrayList<Integer> deal(){
        ArrayList<Integer> list = new ArrayList<>();
        Random rand = new Random();
        for(int i = 0; i < 2; i++){
            int a = rand.nextInt(cards.size());
            list.add(cards.get(a));
        }
        return list;
    }
    
    //hitという公開メソッド
    //cardsからランダムで1枚のカードをひき、ArrayListで値を返す
    public ArrayList<Integer> hit(){
        ArrayList<Integer> list = new ArrayList<>();
        Random rand = new Random();
        
        int a = rand.nextInt(cards.size());
        list.add(cards.get(a));
        
        return list;
    }
    
    
    public void setCard(ArrayList<Integer> a){
        myCards.addAll(a);
    }
    
    
    public boolean checkSum(){
        return open() < 21;
    }
    
    
    public int open(){
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
