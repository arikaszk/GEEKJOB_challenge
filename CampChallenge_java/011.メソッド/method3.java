package challenge_method;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

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
ユーザー定義メソッドを２つ作成

■１つめのユーザー定義メソッド
・引数
　第一引数　数値型
　第二引数　数値型
　第三引数　boolean 型
　第四引数　PrintWriter型

・処理内容
　第一引数と第二引数を掛け算し，第三引数の値が true であるときにかぎって，掛け算の結果をさらに２乗、この計算結果の値を画面に表示処理

■２つめのユーザー定義メソッド
このメソッドは，１つめのメソッドのデフォルト値の設定を行う
・引数
　考えてみる。
・処理内容
　１つめのユーザー定義メソッドの呼び出しを行う。
このとき，１つめのユーザー定義メソッドに対して，第一引数に対して 5 を，第三引数に false を，それぞれデフォルト値として与得る

メソッドを作成したら，それぞれのメソッドに適当な引数を与えて呼び出して画面表示
*/
public class method3 extends HttpServlet {
    
    public void method(int numA, int numB, boolean M, PrintWriter pw){
        int res = numA * numB;
        if(M == true){
            res *= res;
        }
        pw.println(res);
    }
    
    public void method(int numB, PrintWriter pw){
        method(5, numB, false, pw);
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
            out.println("<title>Servlet method3</title>");            
            out.println("</head>");
            out.println("<body>");
            //out.println("<h1>Servlet method3 at " + request.getContextPath() + "</h1>");
            
            method(6, out);
            
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
