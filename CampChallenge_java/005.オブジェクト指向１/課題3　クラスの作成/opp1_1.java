/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.camp.opp;

import java.io.PrintWriter;

/**
 *
 * @author mat
 */
public class opp1_1 {
    //パブリックな2つの変数
    public String name="";
    public Integer age = 0;
    
    //２つの変数に値を設定するパブリックなメソッド
    public void Human (String n, Integer a){
    
        name = n;
        age = a;
    }
    
    //２つの変数の中身をprintするパブリックなメソッド
    public void printHuman(PrintWriter out){
    out.print("名前："+name+"<br>年齢:<br>"+age);
    }
}
