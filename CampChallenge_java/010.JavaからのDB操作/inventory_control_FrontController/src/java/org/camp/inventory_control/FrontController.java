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

            HttpSession hs = request.getSession(true);
            //メモ：sendRedirect=ページに直接遷移　foward＝サーブレット内で表示のみを切り替え（URLは固定）
            //今回はfowardを使う
            String url = "";
            URL u = new URL();
            //実際にデータベースにアクセスするクラス
            userAction uAct = new userAction();
            goodsAction gAct = new goodsAction();
            //submitボタンのvalueの数字が入る
            String actionStr = request.getParameter("action");
            int action = Integer.parseInt(actionStr);

            //ここがコントローラーの本体（どのjspがどの処理を呼んでいるのか、わかりやすい！）
            switch (action) {
                case 1:
                    //mysqlでIDとパスワードを照合　LoginからLoginActionへ
                    String userID = request.getParameter("loginID");
                    String userPass = request.getParameter("loginPass");
                    String LoginCheck = uAct.runCheck(userID, userPass);

                    hs.setAttribute("LoginCheck", LoginCheck);
                    //ログイン処理
                    if ("OK!".equals(LoginCheck)) {
                        url = u.run(2);
                    } else {
                        url = u.run(1);
                    }
                    break;
                case 2:
                    //ログアウト処理
                    hs.invalidate();
                    url = u.run(1);
                    break;
                case 3:
                    //mysqlに商品データを追加　menuからGoodsInsertへ
                    String goodsName = request.getParameter("goodsName");
                    String goodsPriceStr = request.getParameter("goodsPrice");
                    String goodsInsert = gAct.runInsert(goodsName, goodsPriceStr);
                    //変換処理追加
                    String gIHenkan = HENKAN.HENKANgoodsInsert(goodsInsert);

                    hs.setAttribute("goodsInsert", gIHenkan);

                case 4:
                    //mysqlの商品データ一覧を取得する
                    ArrayList<String> goodsList = gAct.runList();
                    //変換処理追加
                    ArrayList<String> gLHenkan = HENKAN.HENKANgoodsList(goodsList);
                    hs.setAttribute("goodsList", gLHenkan);

                    url = u.run(2);
                    break;

            }
            //スイッチ文で取得したURLを元に、jspに帰る
            //以下のifはエラーページへ飛ぶ
            if ("".equals(url) || url == null) {
                url = u.run(999);
            }
            request.getRequestDispatcher(url).forward(request, response);

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
