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
public class jdbc_Challenge1 {
    public static void main (String[] args) throws Exception{
        
        Connection con = null;
        
        try {
            
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            con = DriverManager.getConnection
        ("jdbc:mysql://localhost:8889/Challenge_db", "root", "root");  //rootのパスワードに"root"を設定しています
            System.out.println("サーバーへの接続に成功しました");
            
            con.close();
            
        } catch(SQLException e) {
            
            System.out.println("エラーが起きました" + e.toString());
            throw new Exception();
            
        } finally {
            
            try {
                if(con != null){
                    con.close();
                }
            } catch(SQLException e) {
                System.out.println("エラーが起きました" + e.toString());
            }
            
        }
    }
}
