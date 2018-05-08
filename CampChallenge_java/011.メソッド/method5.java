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
・引数　なし
・戻り値　配列（ArrayListでも可）
　適当な人物の ID・生年月日・住所を要素とする配列を返す（配列情報の生成はすべてメソッドの内部で行う）

メソッドを作成したら，このメソッドを呼び出し，その戻り値に格納された要素をそれぞれ表示
表示する要素は反復処理によって順番に指定する、ID の値については表示しない
*/
public class method5 extends HttpServlet {
    
    public String[] prf(){
        String[] data = new String[3];
        data[0] = "1234";
        data[1] = "田中エリザベス";
        data[2] = "東京都北区";
        
        return data;
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
            out.println("<title>Servlet method_return2</title>");            
            out.println("</head>");
            out.println("<body>");
            //out.println("<h1>Servlet method_return2 at " + request.getContextPath() + "</h1>");
            
            String[] data;
            data = prf();
            
            String[] label = {"ID：", "名前：", "住所："};
            
            for(int i = 1; i < 3; i++){
                out.print(label[i]);
                out.print(data[i] + "<br>");
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
