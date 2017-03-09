/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.camp.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//データベース操作に必要なクラスをインポート
import java.sql.*;

/**
 * 以下の課題を、JavaからのJDBCを用いて実現してください。
 * 前回の課題「テーブルの作成とinsert」で作成したテーブルに自由なメンバー情報を格納する処理を構築してください。
 *
 * @author mat
 */
@WebServlet(name = "challenge10_2", urlPatterns = {"/challenge10_2"})
public class challenge10_02 extends HttpServlet {

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

        //データベース接続を管理するConnectionクラスの変数を用意する
        Connection db_con = null;
        //sqlをjavaから操作するために必要なクラス
        PreparedStatement db_st = null;

        PrintWriter out = response.getWriter();

        try {
            /* TODO output your page here. You may use following sample code. */

            //ライブラリに登録した、Mysql用ドライバーを利用可能にする
            Class.forName("com.mysql.jdbc.Driver").newInstance();

            //DriverManagerのgetConnectionメソッドを利用し、Connectionクラスのインスタンスを取得する
            //渡す引数の内容:("jdbc:DBの種類：//ホスト名:ポート番号/DB名","アカウント名","パスワード")
            db_con = DriverManager.getConnection("jdbc:mysql://localhost:8889/challenge_db", "mat", "pass");

            //テーブルに入れる値の数だけ、?を作っておく
            db_st = db_con.prepareStatement("insert into profiles values (?,?,?,?,?)");

            //変数名.set型(何番目の要素か,入る値);
            db_st.setInt(1, 5);
            db_st.setString(2, "松島 令旺");
            db_st.setString(3, "123-456-7890");
            db_st.setInt(4, 24);
            db_st.setString(5, "1992-11-16");

            //DBへの変更を許可する（executeQueryとは使い分け）
            db_st.executeUpdate();

            //テスト用文章
            out.println("接続完了");

            //DBへの操作が終わったら、closeメソッドを利用し、切断する
            db_con.close();
            //追加
            db_st.close();

            //ここからエラーハンドリング　例外処理を使う
            //エラーが起きたところで処理が止まると、全てのデータが取り出せなくなってしまうこともある
            //なので、エラーハンドリングは絶対に必要になる
            //sqlの例外に特化したSQLExeptionを使うと、データベースに関するエラーをcatchできる
        } catch (SQLException e_sql) {
            out.println("接続時にDBに関するエラーが発生しました:" + e_sql.toString());

            //例外すべてを処理できるExeptionを使うと、それ以外の例外をcatchできる
        } catch (Exception e) {
            out.println("接続時に何らかのエラーが発生しました:" + e.toString());

            //DB接続が行われている場合は、closeを実行する
        } finally {
            if (db_con != null) {
                try {
                    db_con.close();
                    //エラーが出た場合の処理
                } catch (Exception e_con) {
                    System.out.println(e_con.getMessage());
                }
            }

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
