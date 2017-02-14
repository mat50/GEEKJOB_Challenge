package org.camp.servlet;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.Serializable;
import java.util.Date;

/**
 *
 * @author mat
 */
public class ResultData implements Serializable {

    private Date d;
    private String luc;

    public ResultData() {
    }

    public Date getD() {
        return d;
    }

    public void setD(Date d) {
        this.d = d;
        
        
    }
    public String getLuck() {
        return luc;
    }

    public void setLuck(String string) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
