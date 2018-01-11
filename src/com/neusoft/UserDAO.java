package com.neusoft;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by ttc on 18-1-6.
 */
public class UserDAO
{
    public static Connection conn = null;
    public static PreparedStatement ps = null;
    public static ResultSet rs = null;

    public static List select(String startaddress,String endaddress,String date)
    {

        List<train> li  = new ArrayList();
        try
        {
            conn = DBUtil.connedDB();
            String sql = "select * from traininfo where startaddress=? and endaddress=? and cfdate=?";
            ps = conn.prepareStatement(sql);
            ps.setString(1,startaddress);
            ps.setString(2,endaddress);
            ps.setString(3,date);
            rs = ps.executeQuery();
            while(rs.next())
            {
                li.add(new train(rs.getString("startaddress"),
                        rs.getString("endaddress"),
                        rs.getString("cfdate"),
                        rs.getString("trainnum"),
                        rs.getString("starttime"),
                        rs.getString("endtime"),
                        rs.getString("TIME"),
                        rs.getString("seattype"),
                        rs.getString("price"),
                        rs.getInt("surplusticket"),
                        rs.getInt("ordernum"),
                        rs.getString("seattype1"),
                        rs.getString("price1"),
                        rs.getInt("surplusticket1"),
                        rs.getInt("ordernum1"),
                        rs.getString("seattype2"),
                        rs.getString("price2"),
                        rs.getInt("surplusticket2"),
                        rs.getInt("ordernum2"),
                        rs.getString("seattype3"),
                        rs.getString("price3"),
                        rs.getInt("surplusticket3"),
                        rs.getInt("ordernum3")));
            }


        } catch (ClassNotFoundException e)
        {
            e.printStackTrace();
        } catch (SQLException e)
        {
            e.printStackTrace();
        }finally
        {
            DBUtil.releaseDB(ps,rs);
        }
         return li;
    }
    public static List select(String title,String name)
    {
        List<train> li  = new ArrayList();
        try
        {
            conn = DBUtil.connedDB();
            String sql = "select * from traininfo1 where id=? and trainnum=?";
            ps = conn.prepareStatement(sql);
            ps.setString(1,title);
            ps.setString(2,name);
            rs = ps.executeQuery();
            while(rs.next())
            {
                li.add(new train(rs.getString("startaddress"),
                        rs.getString("endaddress"),
                        rs.getString("cfdate"),
                        rs.getString("trainnum"),
                        rs.getString("starttime"),
                        rs.getString("endtime"),
                        rs.getString("TIME"),
                        rs.getString("seattype"),
                        rs.getString("price"),
                        rs.getInt("surplusticket"),
                        rs.getInt("ordernum"),
                        rs.getString("ecfdate")
                        ));
            }


        } catch (ClassNotFoundException e)
        {
            e.printStackTrace();
        } catch (SQLException e)
        {
            e.printStackTrace();
        }finally
        {
            DBUtil.releaseDB(ps,rs);
        }
        return li;
    }
    public static List select(String name)
    {
        List<User> li  = new ArrayList();
        try
        {
            conn = DBUtil.connedDB();
            String sql = "select * from userinfo where name=?";
            ps = conn.prepareStatement(sql);
            ps.setString(1,name);
            rs = ps.executeQuery();
            while(rs.next())
            {
                li.add(new User(rs.getString("name"),
                        rs.getInt("phonenum"),
                        rs.getString("password"),
                        rs.getString("email"),
                        rs.getString("shenfenid"),
                        rs.getString("username"),
                        rs.getString("qupiaoname"),
                        rs.getString("trainnum"),
                        rs.getString("startaddress"),
                        rs.getString("starttime"),
                        rs.getString("indate"),
                        rs.getString("time"),
                        rs.getString("endaddress"),
                        rs.getString("endtime"),
                        rs.getString("enddate"),
                        rs.getString("seattype"),
                        rs.getString("price"),
                        rs.getString("dingdanid")
                ));
            }


        } catch (ClassNotFoundException e)
        {
            e.printStackTrace();
        } catch (SQLException e)
        {
            e.printStackTrace();
        }finally
        {
            DBUtil.releaseDB(ps,rs);
        }
        return li;
    }
    public static boolean Add(String username,String sfzheng,String qupiaoname,String qupiaophone,train train)
    {
        int i = 1;
        try
        {
            conn = DBUtil.connedDB();
            String sql = "insert into userinfo values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            ps = conn.prepareStatement(sql);
            ps.setInt(1,i++);
            ps.setString(2,username);
            ps.setString(3,"");
            ps.setString(4,"");
            ps.setString(5,"");
            ps.setString(6,sfzheng);
            ps.setString(7,"");
            ps.setString(8,qupiaoname);
            ps.setString(9,qupiaophone);
            ps.setString(10,train.getTrainnum());
            ps.setString(11,train.getStartaddress());
            ps.setString(12,train.getStarttime());
            ps.setString(13,train.getDate());
            ps.setString(14,train.getTime());
            ps.setString(15,train.getEndaddress());
            ps.setString(16,train.getEndtime());
            ps.setString(17,train.getEnddate());
            ps.setString(18,train.getSeattype());
            ps.setString(19,train.getPrice());
            ps.setString(20,"10000001");
            int result = ps.executeUpdate();
            if(result>0)
            {
                return true;
            }

        } catch (ClassNotFoundException e)
        {
            e.printStackTrace();
        } catch (SQLException e)
        {
            e.printStackTrace();
        }finally
        {
            DBUtil.releaseDB(ps);
        }
        return false;

    }

}
