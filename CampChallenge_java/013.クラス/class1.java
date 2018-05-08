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

public class class1{
    public static void main(String[] args){
        
        main1 apple = new main1();
        
        apple.setFruit("りんご", 120);
        apple.display();
        
    }
    
}

class main1{
    
    public String name;
    public int price = 0;
    
    public void setFruit(String s, int a){
        this.name = s;
        this.price = a;
    }
    
    public void display(){
        System.out.println("種類：" + name);
        System.out.println("値段：" + price + "円");
    }
    
}