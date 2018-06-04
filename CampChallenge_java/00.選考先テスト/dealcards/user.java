/*
 * file-generation date: 2018-06-04
 * author: Arika Suzuki
 */
package dealcards;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.text.Normalizer;
import java.util.ArrayList;

/**
 *【スペード、ハート、ダイア、クラブの4種類、52枚のトランプをユーザn人に配布する】
 * ・使用言語はJava
 * ・ユーザ人数nの値はキーボード入力によって受け取る
 * ・入力、出力ともに文字コードは"UTF-8"、改行コードは"LF"
 * ・ユーザごとに一行ずつ手札を表示
 * ・nが52より大きくても正常に動作するが、nが0以下の場合はエラーを返す
 * 
 * userクラス
 * ・start: カード配布先のユーザの人数をキーボード入力から受け取る
 * ・open: 手札をユーザごとに一行ずつ表示する
 */
public class user {
    //startという公開メソッド
    //ユーザ人数nの入力を促し、入力された値を数値として返す
    public int start(){
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        System.out.println("カードを配布します");
        System.out.println("ユーザーの人数を入力してください");
        String text;
        int num = 0;
        try {
            //textにキーボード入力された文字列を代入
            text = br.readLine();
            //入力されたテキストをノーマライズ
            String normalizeText = Normalizer.normalize(text, Normalizer.Form.NFKC);
            num = Integer.parseInt(normalizeText);
            if(num < 0){
                num = 0;
            }
        } catch (IOException | NumberFormatException ex) {
            //入力に際してのエラーをキャッチ
            //入力されたテキストをint型に変化する際のエラーをキャッチ
            return num;
        }
        return num;
    }
    
    //openという公開メソッド
    //
    public void open(ArrayList<ArrayList<String>> list){
        for(int i = 0; i < list.size(); i++){
            if(!list.get(i).get(0).equals("")){
                System.out.print((i + 1) + "人目：");
                System.out.print(list.get(i).get(0));
                for(int m = 1; m < list.get(i).size(); m++){
                    System.out.print("," + list.get(i).get(m));
                }
                System.out.println("");
            } else {
                System.out.println((i + 1) + "人目：カードはありません");
            }
        }
    }
}
