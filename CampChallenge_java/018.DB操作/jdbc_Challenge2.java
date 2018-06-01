/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jdbc_challenge;
import java.sql.*;


/**
 *
 * @author Arika
 */
public class jdbc_Challenge2 {
    public static void main (String[] args) throws Exception{
        
        Connection con = null;
        
        try {
            
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            con = DriverManager.getConnection
                    ("jdbc:mysql://localhost:8889/Challenge_db", "root", "root");  //rootのパスワードに"root"を設定しています
            System.out.println("サーバーへの接続に成功しました");
            
            /*
                課題 テーブルの作成とinsertで作成したテーブル
                テーブル名：profiles
                カラム名 データ型：profilesID int, name varchar(255), tel varchar(255), age int, birthday date
            
                挿入するレコードの値
                profilesID 10, name 佐藤ゴンザレス, tel 03-3344-1122, age 16, birthday 2002-02-02
            */
            
            String ins = "INSERT INTO profiles VALUES(?, ?, ?, ?, ?)";
            PreparedStatement st = con.prepareStatement(ins);
            st.setInt(1, 10);
            st.setString(2, "佐藤ゴンザレス");
            st.setString(3, "03-3344-1122");
            st.setInt(4, 16);
            st.setString(5, "2002-02-02");
            
            int num = st.executeUpdate();
            
            /* チェック
            String slc = "SELECT * FROM profiles";
            PreparedStatement pst = con.prepareStatement(slc);
            
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                System.out.println("ID：" + rs.getString("profilesID"));
                System.out.println("名前：" + rs.getString("name"));
                System.out.println("電話：" + rs.getString("tel"));
                System.out.println("年齢：" + rs.getString("age"));
                System.out.println("誕生日：" + rs.getString("birthday"));
                System.out.println("");
            }
            */
            
            con.close();
            
        } catch(SQLException e) {
            
            System.out.println("エラーが起きました");
            throw new Exception();
            
        } finally {
            
            try {
                if(con != null){
                    con.close();
                }
            } catch(SQLException e) {
                System.out.println("エラーが起きました");
            }
            
        }
    }
}
