/*
 * file-generation date: 2018-06-04
 * author: Arika Suzuki
 */
package dealcards;

import java.util.ArrayList;
import java.util.Random;


/**
 *【スペード、ハート、ダイア、クラブの4種類、52枚のトランプをユーザn人に配布する】
 * ・使用言語はJava
 * ・ユーザ人数nの値はキーボード入力によって受け取る
 * ・入力、出力ともに文字コードは"UTF-8"、改行コードは"LF"
 * ・ユーザごとに一行ずつ手札を表示
 * ・nが52より大きくても正常に動作するが、nが0以下の場合はエラーを返す
 * 
 * dealクラス
 * ・userクラス、setcardsクラスを呼び出して使用
 * ・ユーザ人数の入力に関するエラー処理
 * ・カードをランダムに選ぶための数値を設定
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
            //重複チェック用のArrayList
            ArrayList<Integer> ch = new ArrayList<>();
            while(cardnum > 0){
                for(int i = 0; i < user.size(); i++){
                    Random rand = new Random();
                    int a = 0;
                    boolean flag = false;
                    //「flagがtrueになる = 重複なし」
                    while(!flag){
                        int check = 0;
                        a = rand.nextInt(setc.cards.size());
                        for(int m = 0; m < ch.size(); m++){
                            if(ch.get(m) == a){
                                break;
                            } else {
                                check++;
                            }
                        }
                        if(check == ch.size()){
                            ch.add(a);
                            flag = true;
                        }
                    }
                    //引数に重複がなければdealメソッド利用でユーザの手札にカードをセット
                    user.get(i).add(setc.deal(a));
                    cardnum--;
                    //52枚のカードを配り終えた時点で手札のないユーザがいれば空文字をセット(エラー回避)
                    //繰り返し処理から抜ける
                    if(cardnum == 0){
                        for(int m = i + 1; m < user.size(); m++){
                            if(user.get(m).isEmpty()){
                                user.get(m).add("");
                            } else {
                                break;
                            }
                        }
                        break;
                    }
                }
            }
            //ユーザの手札を表示
            u.open(user);
        }
    }   
}
