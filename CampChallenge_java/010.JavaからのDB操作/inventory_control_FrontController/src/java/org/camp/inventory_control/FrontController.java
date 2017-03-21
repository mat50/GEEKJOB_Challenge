/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.camp.inventory_control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * 以下の機能を満たすロジックを作成してください。 在庫管理システムを作成します。
 * まず、DBにユーザー情報管理テーブルと、商品情報登録テーブルを作成してください。 その上で、下記機能を実現してください。
 * ①ユーザーのログイン・ログアウト機能 ②商品情報登録機能 ③商品一覧機能 ※各テーブルの構成は各自の想像で作ってみてください。
 *
 * @author mat
 */
@WebServlet(name = "FrontController", urlPatterns = {"/FrontController"})
public class FrontController extends HttpServlet {

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

        request.setCharacterEncoding("UTF-8");

        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */

            String actionStr = request.getParameter("action");
            int action = Integer.parseInt(actionStr);
            HttpSession hs = request.getSession(true);

            userAction uAct = new userAction();
            goodsAction gAct = new goodsAction();

            switch (action) {
                case 1:
                    //mysqlでIDとパスワードを照合　LoginからLoginActionへ
                    String userID = request.getParameter("loginID");
                    String userPass = request.getParameter("loginPass");

                    String userCheck = uAct.runCheck(userID, userPass);

                    hs.setAttribute("LoginCheck", userCheck);

                case 2:
                    //ログイン及びログアウト処理
                    String isLogin = (String) hs.getAttribute("LoginCheck");

                    if ("OK!".equals(isLogin)) {
                        response.sendRedirect("Menu.jsp");

                    } else {
                        response.sendRedirect("Login.jsp");
                        
                    }
                    break;

                case 3:
                    //mysqlに商品データを追加　menuからGoodsInsertへ
                    String goodsName = request.getParameter("goodsName");
                    String goodsPriceStr = request.getParameter("goodsPrice");

                    ArrayList<String> goodsInsert = gAct.run(goodsName, goodsPriceStr);
                    hs.setAttribute("goodsInsert", goodsInsert);
                    out.print("帰ってきた処理の結果1*****"+goodsInsert);//うごいてる
                    //response.sendRedirect("Menu.jsp");
                    ArrayList gI = (ArrayList) hs.getAttribute("goodsInsert");
                    out.print("sessionの中身1******"+gI);

                
                    //mysqlの商品データ一覧を取得する

                    hs.setAttribute("goodsList", goodsInsert);
                    
                    out.print("帰ってきた処理の結果2******"+goodsInsert);
                    ArrayList gL = (ArrayList) hs.getAttribute("goodsList");
                    out.print("sessionの中身2*******"+gL);
                    //response.sendRedirect("Menu.jsp");
                    
                    break;

            }
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet FrontController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet FrontController at " + request.getContextPath() + "</h1>");
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
