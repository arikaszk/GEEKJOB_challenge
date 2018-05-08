/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package challenge_method;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Arika
 */

/*
ユーザー定義メソッドを作成
・引数
　文字列型
・戻り値
　文字列型を要素に持つ配列型
・処理内容
　３人分のプロフィール情報を，それぞれ配列で作成
  プロフィール情報の項目は，課題「戻り値2」と同様
  引数として受け取った ID の値と同じ ID の値を持つ配列を，戻り値として返す
  メソッドの呼び出し側の記述については，課題「戻り値2」と同様
*/

public class method8 extends HttpServlet {

    public String[] prf(String a){
        String[] data1 = {"1", "田中エリザベス", null};
        String[] data2 = {"2", "佐藤アルフレッド", "神奈川県横浜市"};
        String[] data3 = {"3", "高橋フローラ", "東京都港区"};
        
        switch(a){
            case "1":
                return data1;
            case "2":
                return data2;
            case "3":
                return data3;
            default:
                return null;
        }
    }
    
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet method2_return1</title>");            
            out.println("</head>");
            out.println("<body>");
            //out.println("<h1>Servlet method2_return1 at " + request.getContextPath() + "</h1>");
            
            String[] num = {"1", "2", "3"};
            int limit = 2;
            int a = 1;
            
            for(int m = 0; m < limit; m++){
                String[] data;
                if(a >= 3){
                    a -= 3;
                }
                
                data = prf(num[a]);
            
                if(data != null){
                    String[] label = {"ID：", "名前：", "住所："};
                
                    for(int i = 1; i < 3; i++){
                        if(data[i] == null){
                            continue;
                        }else{
                            out.print(label[i]);
                            out.print(data[i] + "<br>");
                        }
                    }
                }
                
                a++;
                out.print("<br>");
            }
            
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
