/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.camp.inventory_control;

/**
 *
 * @author mat
 */
public class URL {

    public String run(int a) {
        switch (a) {
            case 1:
                return ("Login.jsp");
            case 2:
                return ("Menu.jsp");
        }
//例外
        return "error.jsp";
    }

}
