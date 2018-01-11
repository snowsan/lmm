package com.neusoft;

/**
 * Created by ttc on 18-1-6.
 */
public class train
{
    private String startaddress;
    private String endaddress;
    private String date;
    private String trainnum;
    private String starttime;
    private String endtime;
    private String time;
    private String seattype;
    private String price;
    private int surplusticket;
    private int ordernum;
    private String seattype1;
    private String price1;
    private int surplusticket1;
    private int ordernum1;
    private String seattype2;
    private String price2;
    private int surplusticket2;
    private int ordernum2;
    private String seattype3;
    private String price3;
    private int surplusticket3;
    private int ordernum3;
    private String enddate;

    public String getEnddate()
    {
        return enddate;
    }

    public void setEnddate(String enddate)
    {
        this.enddate = enddate;
    }

    public String getSeattype1()
    {
        return seattype1;
    }

    public void setSeattype1(String seattype1)
    {
        this.seattype1 = seattype1;
    }

    public String getPrice1()
    {
        return price1;
    }

    public void setPrice1(String price1)
    {
        this.price1 = price1;
    }

    public int getSurplusticket1()
    {
        return surplusticket1;
    }

    public void setSurplusticket1(int surplusticket1)
    {
        this.surplusticket1 = surplusticket1;
    }

    public int getOrdernum1()
    {
        return ordernum1;
    }

    public void setOrdernum1(int ordernum1)
    {
        this.ordernum1 = ordernum1;
    }

    public String getSeattype2()
    {
        return seattype2;
    }

    public void setSeattype2(String seattype2)
    {
        this.seattype2 = seattype2;
    }

    public String getPrice2()
    {
        return price2;
    }

    public void setPrice2(String price2)
    {
        this.price2 = price2;
    }

    public int getSurplusticket2()
    {
        return surplusticket2;
    }

    public void setSurplusticket2(int surplusticket2)
    {
        this.surplusticket2 = surplusticket2;
    }

    public int getOrdernum2()
    {
        return ordernum2;
    }

    public void setOrdernum2(int ordernum2)
    {
        this.ordernum2 = ordernum2;
    }

    public String getSeattype3()
    {
        return seattype3;
    }

    public void setSeattype3(String seattype3)
    {
        this.seattype3 = seattype3;
    }

    public String getPrice3()
    {
        return price3;
    }

    public void setPrice3(String price3)
    {
        this.price3 = price3;
    }

    public int getSurplusticket3()
    {
        return surplusticket3;
    }

    public void setSurplusticket3(int surplusticket3)
    {
        this.surplusticket3 = surplusticket3;
    }

    public int getOrdernum3()
    {
        return ordernum3;
    }

    public void setOrdernum3(int ordernum3)
    {
        this.ordernum3 = ordernum3;
    }


    public String getStartaddress()
    {
        return startaddress;
    }

    public void setStartaddress(String startaddress)
    {
        this.startaddress = startaddress;
    }

    public String getEndaddress()
    {
        return endaddress;
    }

    public void setEndaddress(String endaddress)
    {
        this.endaddress = endaddress;
    }

    public String getDate()
    {
        return date;
    }

    public void setDate(String date)
    {
        this.date = date;
    }

    public String getTrainnum()
    {
        return trainnum;
    }

    public void setTrainnum(String trainnum)
    {
        this.trainnum = trainnum;
    }

    public String getStarttime()
    {
        return starttime;
    }

    public void setStarttime(String starttime)
    {
        this.starttime = starttime;
    }

    public String getEndtime()
    {
        return endtime;
    }

    public void setEndtime(String endtime)
    {
        this.endtime = endtime;
    }

    public String getTime()
    {
        return time;
    }

    public void setTime(String time)
    {
        this.time = time;
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

    public int getSurplusticket()
    {
        return surplusticket;
    }

    public void setSurplusticket(int surplusticket)
    {
        this.surplusticket = surplusticket;
    }

    public int getOrdernum()
    {
        return ordernum;
    }

    public void setOrdernum(int ordernum)
    {
        this.ordernum = ordernum;
    }

    public train(String startaddress, String endaddress, String date, String trainnum, String starttime, String endtime, String time, String seattype, String price, int surplusticket, int ordernum, String seattype1, String price1, int surplusticket1, int ordernum1, String seattype2, String price2, int surplusticket2, int ordernum2, String seattype3, String price3, int surplusticket3, int ordernum3)
    {
        this.startaddress = startaddress;
        this.endaddress = endaddress;
        this.date = date;
        this.trainnum = trainnum;
        this.starttime = starttime;
        this.endtime = endtime;
        this.time = time;
        this.seattype = seattype;
        this.price = price;
        this.surplusticket = surplusticket;
        this.ordernum = ordernum;
        this.seattype1 = seattype1;
        this.price1 = price1;
        this.surplusticket1 = surplusticket1;
        this.ordernum1 = ordernum1;
        this.seattype2 = seattype2;
        this.price2 = price2;
        this.surplusticket2 = surplusticket2;
        this.ordernum2 = ordernum2;
        this.seattype3 = seattype3;
        this.price3 = price3;
        this.surplusticket3 = surplusticket3;
        this.ordernum3 = ordernum3;
    }

    public train(String startaddress, String endaddress, String date, String trainnum, String starttime, String endtime, String time, String seattype, String price, int surplusticket, int ordernum, String enddate)
    {
        this.startaddress = startaddress;
        this.endaddress = endaddress;
        this.date = date;
        this.trainnum = trainnum;
        this.starttime = starttime;
        this.endtime = endtime;
        this.time = time;
        this.seattype = seattype;
        this.price = price;
        this.surplusticket = surplusticket;
        this.ordernum = ordernum;
        this.enddate = enddate;
    }

    public train(String trainnum,String startaddress,String starttime,String date,String time,String endaddress,String endtime,String enddate,String seattype,String price)
    {
        this.startaddress = startaddress;
        this.endaddress = endaddress;
        this.date = date;
        this.trainnum = trainnum;
        this.starttime = starttime;
        this.endtime = endtime;
        this.time = time;
        this.seattype = seattype;
        this.price = price;
        this.enddate = enddate;
    }
}
