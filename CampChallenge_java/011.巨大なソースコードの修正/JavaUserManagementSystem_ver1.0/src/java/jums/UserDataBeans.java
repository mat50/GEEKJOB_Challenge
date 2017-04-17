package jums;

import java.text.ParseException;
import java.text.SimpleDateFormat;
//フォームから受け取ったデータを格納するクラス

public class UserDataBeans {

    private int userID;
    private String name;
    private java.util.Date birthday;
    private int day;
    private int month;
    private int year;
    private String tell;
    private Integer type;
    private String comment;

    public UserDataBeans() {
        this.userID = 0;
        this.name = "";
        this.birthday = null;
        this.day = 0;
        this.month = 0;
        this.year = 0;
        this.tell = "";
        this.type = 0;
        this.comment = "";

    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public java.util.Date getBirthday() throws Exception {
        try {
            String birthStr = (year + "-" + month + "-" + day);
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd");
            birthday = sdf.parse(birthStr);
        } catch (ParseException e) {
            System.out.println(e.getMessage());
            throw new Exception(e);
        }

        return birthday;

    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public String getSelectYear(int i) {
            if (i == year) {
                return "selected";
            }
        return "";
    }

    public int getMonth() {
        return month;
    }

    public void setMonth(int month) {
        this.month = month;
    }

    public String getSelectMonth(int i) {
            if (i == month) {
                return "selected";
            }
        return "";
    }

    public int getDay() {
        return day;
    }

    public void setDay(int day) {
        this.day = day;
    }

    public String getSelectDay(int i) {
            if (i == day) {
                return "selected";
            }
        return "";
    }

    public String getTell() {
        return tell;
    }

    public void setTell(String tell) {
        this.tell = tell;
    }

    public Integer getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public String getDefaultType(int a) {
        if (type == a) {
             return "checked";
        }
        return "";
    }

    public String getTypeName() {
        if (null != type) switch (type) {
            case 1:
                return "エンジニア";
            case 2:
                return "営業";
            case 3:
                return "その他";
            default:
                break;
        }
        return "";
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

}
