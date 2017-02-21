/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.camp.BJ;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;

/**
 *
 * @author mat
 */
public class Dealer extends Human {

    //全てのトランプを持たせる配列
    ArrayList<Integer> cards = new ArrayList<Integer>();

    {
        //スートの数
        for (int s = 0; s < 4; s++) {
            //AからKまで13枚
            for (int i = 1; i <= 13; i++) {
                //アレイリストに順に入れていく
                cards.add(i);
            }

        }
        //ランダムにシャッフルする
        Collections.shuffle(cards);
    }

    //cardからランダムで2枚のカードをArrayristにして返却する
    public ArrayList<Integer> deal() {
        ArrayList<Integer> deal = new ArrayList<Integer>();
        //引いたカードは山札から削除する
        deal.add(cards.get(0));
        cards.remove(0);
        deal.add(cards.get(0));
        cards.remove(0);
        return deal;
    }

    //cardからランダムで1枚のカードをArrayristにして返却する
    public ArrayList<Integer> hit() {
        ArrayList<Integer> hit = new ArrayList<Integer>();
        //chekeSumからもし要求があれば(BJServletの方で実装したのでコメントアウト)
        //if (checkSum() == true) {
        hit.add(cards.get(0));
        cards.remove(0);
        // }
        return hit;
    }

//setCardは、ArrayListで受けたカード情報をmyCardsに追加するようにする
    public void setCard(ArrayList<Integer> setCard) {
        //配列内の最大数まで繰り返す
        for (int i = 0; i < setCard.size(); i++) {
            //ループ回数を参照
            myCards.add(setCard.get(i));
        }
    }
//checkSumは、myCardsを確認し、まだカードが必要ならtrue、不要ならfalseを返却する

    public boolean checkSum() {
        //思考（適当）
        if (open() < 17) {
            return true;

        } else {
            return false;
        }

    }
//openは、myCardsの合計値を返却する

    public int open() {
        int sum = 0;
        int ace = 0;
        //配列内の最大数まで繰り返す
        for (int i = 0; i < myCards.size(); i++) {
            //絵札を10にする
            if (myCards.get(i) >= 10) {
                sum += 10;
                //バーストしなければエースを11に　エースの枚数を数える
            } else if (myCards.get(i) == 1) {
                sum += 11;
                ace += 1;
                //引いたカードの数を足していく
            } else {
                sum += myCards.get(i);
            }
        }
        //バーストしていてエースが1枚以上あった場合、繰り返す
       while(sum >21 && ace >=1 ){
        sum -= 10;
        ace -= 1;
        }
        return sum;
    }

    //手札と合計の表示
    public void printDealer(PrintWriter out) {
        out.print("ディーラーが引いたカード：" + myCards + "<br>合計:" + open() + "<br>");
    }

}
