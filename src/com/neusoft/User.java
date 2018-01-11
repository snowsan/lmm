package com.neusoft;

/**
 * Created by ttc on 18-1-6.
 */
public class User
{
    private String name;
    private int phonenum;
    private String password;
    private String email;
    private String shenfenid;
    private String username;
    private String qupiaoname;

    private String trainnum;
    private String startaddress;
    private String starttime;
    private String indate;
    private String time;
    private String endaddress;
    private String endtime;
    private String enddate;
    private String seattype;
    private String price;
    private String dingdanid;

    public User(String name, int phonenum, String password, String email, String shenfenid, String username, String qupiaoname, String trainnum, String startaddress, String starttime, String indate, String time, String endaddress, String endtime, String enddate, String seattype, String price, String dingdanid)
    {
        this.name = name;
        this.phonenum = phonenum;
        this.password = password;
        this.email = email;
        this.shenfenid = shenfenid;
        this.username = username;
        this.qupiaoname = qupiaoname;
        this.trainnum = trainnum;
        this.startaddress = startaddress;
        this.starttime = starttime;
        this.indate = indate;
        this.time = time;
        this.endaddress = endaddress;
        this.endtime = endtime;
        this.enddate = enddate;
        this.seattype = seattype;
        this.price = price;
        this.dingdanid = dingdanid;
    }

    public String getName()
    {
        return name;
    }

    public void setName(String name)
    {
        this.name = name;
    }

    public int getPhonenum()
    {
        return phonenum;
    }

    public void setPhonenum(int phonenum)
    {
        this.phonenum = phonenum;
    }

    public String getPassword()
    {
        return password;
    }

    public void setPassword(String password)
    {
        this.password = password;
    }

    public String getEmail()
    {
        return email;
    }

    public void setEmail(String email)
    {
        this.email = email;
    }

    public String getShenfenid()
    {
        return shenfenid;
    }

    public void setShenfenid(String shenfenid)
    {
        this.shenfenid = shenfenid;
    }

    public String getUsername()
    {
        return username;
    }

    public void setUsername(String username)
    {
        this.username = username;
    }

    public String getQupiaoname()
    {
        return qupiaoname;
    }

    public void setQupiaoname(String qupiaoname)
    {
        this.qupiaoname = qupiaoname;
    }

    public String getTrainnum()
    {
        return trainnum;
    }

    public void setTrainnum(String trainnum)
    {
        this.trainnum = trainnum;
    }

    public String getStartaddress()
    {
        return startaddress;
    }

    public void setStartaddress(String startaddress)
    {
        this.startaddress = startaddress;
    }

    public String getStarttime()
    {
        return starttime;
    }

    public void setStarttime(String starttime)
    {
        this.starttime = starttime;
    }

    public String getIndate()
    {
        return indate;
    }

    public void setIndate(String indate)
    {
        this.indate = indate;
    }

    public String getTime()
    {
        return time;
    }

    public void setTime(String time)
    {
        this.time = time;
    }

    public String getEndaddress()
    {
        return endaddress;
    }

    public void setEndaddress(String endaddress)
    {
        this.endaddress = endaddress;
    }

    public String getEndtime()
    {
        return endtime;
    }

    public void setEndtime(String endtime)
    {
        this.endtime = endtime;
    }

    public String getEnddate()
    {
        return enddate;
    }

    public void setEnddate(String enddate)
    {
        this.enddate = enddate;
    }

    public String getSeattype()
    {
        return seattype;
    }

    public void setSeattype(String seattype)
    {
        this.seattype = seattype;
    }

    public String getPrice()
    {
        return price;
    }

    public void setPrice(String price)
    {
        this.price = price;
    }

    public String getDingdanid()
    {
        return dingdanid;
    }

    public void setDingdanid(String dingdanid)
    {
        this.dingdanid = dingdanid;
    }
}
