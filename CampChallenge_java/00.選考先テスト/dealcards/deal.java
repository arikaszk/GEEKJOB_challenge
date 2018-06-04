/*
 * file-generation date: 2018-06-04
 * author: Arika Suzuki
 */
package dealcards;

import java.util.ArrayList;


/**
 *【スペード、ハート、ダイア、クラブの4種類、52枚のトランプをユーザn人に配布する】
 * ・使用言語はJava
 * ・ユーザ人数nの値はキーボード入力によって受け取る
 * ・入力、出力ともに文字コードは"UTF-8"、改行コードは"LF"
 * ・ユーザごとに一行ずつ手札を表示
 * ・nが52より大きくても正常に動作するが、nが0以下の場合はエラーを返す
 */
public class deal {
    public static void main(String[] args) {
        //userクラスの呼び出し
        user u = new user();
        int n = u.start();
        //nの値が0の場合、入力が正常に行われていないのでプログラムを終了
        if(n == 0){
            System.out.println("入力値が無いか、値が不正です。");
            System.exit(1);
        } else {
            //setcardsクラスの呼び出し
            //この時点で山札が作成される
            setcards setc = new setcards();
            //ユーザの手札を作成
            ArrayList<ArrayList<String>> user = setc.userHand(n);
            //ユーザに一枚ずつカードを配布
            int cardnum = setc.cards.size();
            while(cardnum > 0){
                for(int i = 0; i < user.size(); i++){
                    user.get(i).add(setc.deal());
                    cardnum--;
                    if(cardnum == 0){
                        break;
                    }
                }
            }
            //ユーザの手札を表示
            u.open(user);
        }
    }   
}
