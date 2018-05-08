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


//Dealer, Userに継承
//myCardsというフィールド, open, setCard, checkSumというメソッド
abstract public class Human {
    
    protected ArrayList<Integer> myCards = new ArrayList<>();
    
    //手札の合計値を返す
    abstract public int open();
    
    //引いたカードを手札に追加
    abstract public void setCard(ArrayList<Integer> a);
    
    //合計値が21に満たない場合はtrue
    abstract public boolean checkSum();
    
}
