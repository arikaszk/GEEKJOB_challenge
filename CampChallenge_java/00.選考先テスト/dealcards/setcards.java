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
 * 
 * setcardsクラス
 * ・cards: 山札の宣言
 * ・setcards: 山札にトランプをセット
 * ・userHand: ユーザの手札を宣言
 * ・deal: 山札から引数に応じてカードを選択
 * ・handset: 山札から引いたカードをユーザの手札に追加
 */
public class setcards {
    
    //52枚のトランプを格納するArrayList cardsの作成
    protected ArrayList<Integer> cards = new ArrayList<>();
    
    //0-51までの数字をcardsに格納
    public setcards(){
        for(int i = 0; i < 52; i++){
            cards.add(i);
        }
    }
    
    //userHandという公開メソッド
    //引数にユーザ人数nをもち、その数だけArrayList userにArrayListを格納しuserを返す
    public ArrayList<ArrayList<String>> userHand(int n){
        ArrayList<ArrayList<String>> user = new ArrayList<>();
        for(int i = 0; i < n; i++){
            user.add(new ArrayList<>());
        }
        return user;
    }
    
    //dealという公開メソッド
    //引数は0-51のランダムなint、cardsから一枚ランダムにカードを引いてその値をint型で返す
    public String deal(int a) {
        String c;
        int num;//絵柄の指定
        if(cards.get(a) < 13){
            //1-13の場合、絵柄はスペード
            c = "S-";
            num = cards.get(a) + 1;
        } else if(cards.get(a) < 26){
            //14-26の場合、絵柄はハート
            c = "H-";
            num = cards.get(a) - 12;
        } else if(cards.get(a) < 39){
            //27-39の場合、絵柄はダイア
            c = "D-";
            num = cards.get(a) - 25;
        } else {
            //39以上の場合、絵柄はクラブ
            c = "C-";
            num = cards.get(a) - 38;
        }
        //A,X,J,Q,Kの指定
        switch (num) {
            case 1:
                c = c + "A";
                break;
            case 10:
                c = c + "X";
                break;
            case 11:
                c = c + "J";
                break;
            case 12:
                c = c + "Q";
                break;
            case 13:
                c = c + "K";
                break;
            default:
                c = c + String.valueOf(num);
                break;
        }
        return c;
    }
    
    //handsetという公開メソッド
    //引数はuser[i]・list、listの値をuser[i]に追加、戻り値はなし
    public void handset(ArrayList user, ArrayList<Integer> list){
        user.addAll(list);
    }
}
