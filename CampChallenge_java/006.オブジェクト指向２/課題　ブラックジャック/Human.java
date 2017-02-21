/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.camp.BJ;

import java.util.ArrayList;

/**
 *
 * @author mat
 */
//DealerとUser両方に必要な変数を作る
abstract public class Human {

    public abstract int open();

    public abstract void setCard(ArrayList<Integer> get);

    public abstract boolean checkSum();
    ArrayList<Integer> myCards = new ArrayList<Integer>();
}
