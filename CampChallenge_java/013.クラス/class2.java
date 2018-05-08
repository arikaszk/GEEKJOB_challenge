/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package challenge2;

/**
 *
 * @author Arika
 */
public class class2{
    public static void main (String[] args){
     
        main2 ac = new main2();
        
        ac.setFruit("りんご", 120);
        ac.display();
        
        ac.allClear();
        ac.display();
        
    }
}

class main2 extends main1{
    
    public void allClear(){
        this.name = "";
        this.price = 0;
    }
    
}
