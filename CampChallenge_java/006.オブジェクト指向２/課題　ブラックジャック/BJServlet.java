/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.camp.BJ;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author mat
 */
@WebServlet(name = "BJServlet", urlPatterns = {"/BJServlet"})
public class BJServlet extends HttpServlet {

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
            out.println("<title>Servlet BJServlet</title>");
            out.println("</head>");
            out.println("<body>");
            //記述部分
            Dealer DealerCards = new Dealer();
            User UserCards = new User();
            //ディーラーのデータ
            DealerCards.setCard(DealerCards.deal());
            DealerCards.checkSum();
            //手札の合計が少なければヒットをする
            while (DealerCards.checkSum() == true) {
                DealerCards.setCard(DealerCards.hit());
                //いらない
                //DealerCards.checkSum();
            }
            DealerCards.open();
            //ユーザーのデータ
            UserCards.setCard(DealerCards.deal());
            UserCards.checkSum();
            //手札の合計が少なければヒットをする
            while (UserCards.checkSum() == true) {
                UserCards.setCard(DealerCards.hit());
                //いらない
                //UserCards.checkSum();
            }
            UserCards.open();
            //結果表示　呼び出し
            DealerCards.printDealer(out);
            UserCards.printUser(out);
            
            //勝敗表示　同時バーストはユーザーが負け
            if (UserCards.open() > 21) {
                out.print("相手バーストにより、ディーラーの勝利");
            } else if (DealerCards.open() > 21) {
                out.print("相手バーストにより、ユーザーの勝利");
            } else if (DealerCards.open() > UserCards.open()) {
                out.print("ディーラーの勝利");
            } else if (DealerCards.open() < UserCards.open()) {
                out.print("ユーザーの勝利");
            } else {
                out.print("引き分け");
            }

            out.println("<h1>Servlet BJServlet at " + request.getContextPath() + "</h1>");
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
