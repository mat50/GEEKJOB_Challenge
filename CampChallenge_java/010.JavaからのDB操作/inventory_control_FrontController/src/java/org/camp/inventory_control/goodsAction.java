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
import java.util.ArrayList;
import java.io.PrintWriter;

/**
 *
 * @author mat
 */
public class goodsAction{

//    public String runInsert(String goodsName, String goodsPriceStr) {
//
//        Connection db_con = null;
//        PreparedStatement db_st = null;
//        ResultSet db_data = null;
//        try {
//            /* TODO output your page here. You may use following sample code. */
//            Class.forName("com.mysql.jdbc.Driver").newInstance();
//
//            db_con = DriverManager.getConnection("jdbc:mysql://localhost:8889/inventory_control", "mat", "pass");
//
//            int goodsPrice = Integer.parseInt(goodsPriceStr);
//
//            db_st = db_con.prepareStatement("insert into goods values(?,?)");
//            db_st.setString(1, goodsName);
//            db_st.setInt(2, goodsPrice);
//            
//
//            db_st.executeUpdate();
//            db_st = db_con.prepareStatement("select * from user where ID=? and pass=?");
//            db_data = db_st.executeQuery();
//
//            String check = "空欄があるか、入力できない文字が入っています";
//
//            while (db_data.next()) {
//                check = "OK!";
//            }
//            db_con.close();
//
//            db_st.close();
//
//            db_data.close();
//
//            return check;
//
//            //ここからエラーハンドリング
//        } catch (SQLException e_sql) {
//            return ("接続時にDBに関するエラーが発生しました:" + e_sql.toString());
//
//        } catch (Exception e) {
//            return ("接続時に何らかのエラーが発生しました:" + e.toString());
//
//            //DB接続が行われている場合は、closeを実行する
//        } finally {
//            if (db_con != null) {
//                try {
//                    db_con.close();
//
//                } catch (Exception e_con) {
//                    return e_con.getMessage();
//                }
//            }
//        }
//
//    }

    public ArrayList<String> run(String goodsName, String goodsPriceStr) {

        Connection db_con = null;
        PreparedStatement db_st = null;
        ResultSet db_data = null;

        String item = "";
        ArrayList<String> list = new ArrayList<String>();

        try {
            /* TODO output your page here. You may use following sample code. */
            Class.forName("com.mysql.jdbc.Driver").newInstance();

            db_con = DriverManager.getConnection("jdbc:mysql://localhost:8889/inventory_control", "mat", "pass");
            
            int goodsPrice = Integer.parseInt(goodsPriceStr);
            
            db_st = db_con.prepareStatement("insert into goods values(?,?)");
            db_st.setString(1, goodsName);
            db_st.setInt(2, goodsPrice);
            

            db_st.executeUpdate();

            db_st = db_con.prepareStatement("select * from goods");

            db_data = db_st.executeQuery();

            while (db_data.next()) {
                item = ("商品名:"
                        + db_data.getString("name")
                        + "<br>"
                        + "値段："
                        + db_data.getInt("price")
                        + "円"
                        + "<br><br>");
                list.add(item);
            }

            db_con.close();

            db_st.close();

            db_data.close();

            return list;
            //ここからエラーハンドリング
        } catch (SQLException e_sql) {
           list.add("接続時にDBに関するエラーが発生しました:" + e_sql.toString());

        } catch (Exception e) {
            list.add("接続時に何らかのエラーが発生しました:" + e.toString());

            //DB接続が行われている場合は、closeを実行する
        } finally {
            if (db_con != null) {
                try {
                    db_con.close();

                } catch (Exception e_con) {
                    list.add(e_con.getMessage());
                }
            }
        }
        return list;
    }
}
