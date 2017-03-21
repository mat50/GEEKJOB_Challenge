/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.camp.inventory_control;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author mat
 */
public class userAction {

    public String runCheck(String userID, String userPass) {
        Connection db_con = null;
        PreparedStatement db_st = null;
        ResultSet db_data = null;
        try {
            /* TODO output your page here. You may use following sample code. */
            Class.forName("com.mysql.jdbc.Driver").newInstance();

            db_con = DriverManager.getConnection("jdbc:mysql://localhost:8889/inventory_control", "mat", "pass");
            
            db_st = db_con.prepareStatement("select * from user where ID=? and pass=?");
            db_st.setString(1, userID);
            db_st.setString(2, userPass);

            db_data = db_st.executeQuery();

            String check = "IDかパスワードが間違っています";

            while (db_data.next()) {
                check = "OK!";
            }

            db_con.close();

            db_st.close();

            db_data.close();

            return (check);

            //ここからエラーハンドリング
        } catch (SQLException e_sql) {
            return ("接続時にDBに関するエラーが発生しました:" + e_sql.toString());

        } catch (Exception e) {
            return ("接続時に何らかのエラーが発生しました:" + e.toString());

            //DB接続が行われている場合は、closeを実行する
        } finally {
            if (db_con != null) {
                try {
                    db_con.close();

                } catch (Exception e_con) {
                    return e_con.getMessage();
                }
            }
        }
    }
}
