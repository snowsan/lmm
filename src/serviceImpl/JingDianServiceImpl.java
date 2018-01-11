package serviceImpl;


import pojo.JingDianInfo;
import service.JingDianService;
import util.DButil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by ttc on 17-12-14.
 */
public class JingDianServiceImpl implements JingDianService
{
    @Override
    public List<JingDianInfo> loadJingDianInfo(String jd_id)
    {
        List<JingDianInfo> list = new ArrayList();
        try
        {
            Connection conn = DButil.getConnection();
            String sql = "select * from jingdianinfo where jd_id = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, jd_id);
            ResultSet rs = ps.executeQuery();
            if (rs.next())
            {
                JingDianInfo t = new JingDianInfo(
                        rs.getString("jd_id"),
                        rs.getString("jd_name"),
                        rs.getInt("jd_price"),
                        rs.getString("jd_address"),
                        rs.getString("jd_photoname"),
                        rs.getString("jd_introduction"),
                        rs.getString("jd_type"),
                        rs.getString("city_name"),
                        rs.getString("jd_rank"),
                        rs.getString("jd_date")
                );
                list.add(t);
            }

            DButil.closeConn(ps, rs);
        } catch (Exception e)
        {
            e.printStackTrace();
        }

        return list;
    }

    @Override
    public List<JingDianInfo> selectJingDianInfo(String city_name, String jd_type)
    {
        List<JingDianInfo> list = new ArrayList();
        try
        {
            Connection conn = DButil.getConnection();
            String sql = "select * from JingDianInfo where city_name = ? and jd_type = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, city_name);
            ps.setString(2, jd_type);
            ResultSet rs = ps.executeQuery();
            while (rs.next())
            {
                JingDianInfo t = new JingDianInfo(
                        rs.getString("jd_id"),
                        rs.getString("jd_name"),
                        rs.getInt("jd_price"),
                        rs.getString("jd_address"),
                        rs.getString("jd_photoname"),
                        rs.getString("jd_introduction"),
                        rs.getString("jd_type"),
                        rs.getString("city_name"),
                        rs.getString("jd_rank"),
                        rs.getString("jd_date")
                );

                list.add(t);
            }

            DButil.closeConn(ps, rs);
        } catch (Exception e)
        {
            e.printStackTrace();
        }

        return list;
    }


    @Override
    public List<JingDianInfo> selectJingDianInfo()
    {
        List<JingDianInfo> list = new ArrayList<>();
        try
        {
            Connection conn = DButil.getConnection();
            String sql = "select * from JingDianInfo";
            PreparedStatement ps = conn.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();
            while (rs.next())
            {
                JingDianInfo t = new JingDianInfo(
                        rs.getString("jd_id"),
                        rs.getString("jd_name"),
                        rs.getInt("jd_price"),
                        rs.getString("jd_address"),
                        rs.getString("jd_photoname"),
                        rs.getString("jd_introduction"),
                        rs.getString("jd_type"),
                        rs.getString("city_name"),
                        rs.getString("jd_rank"),
                        rs.getString("jd_date")
                );

                list.add(t);
            }

            DButil.closeConn(ps, rs);
        } catch (Exception e)
        {
            e.printStackTrace();
        }

        return list;
    }

    @Override
    public List<JingDianInfo> selectJingDianInfoByName(String name)
    {
        return null;
    }

    @Override
    public int insertJingDianInfo(String JingDianInfo_title, String JingDianInfo_introduce)
    {
        int count = 0;
        try
        {
            Connection conn = DButil.getConnection();
            String sql = "insert into JingDianInfo values (?,?,?,?,?,sysdate,?)";

            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, DButil.getUuid());
            ps.setString(2, JingDianInfo_title);
            ps.setString(3, JingDianInfo_introduce);
            ps.setInt(4, 1);
            ps.setInt(5, 3);
            ps.setInt(6, 3);

            count = ps.executeUpdate();

            DButil.closeConn(ps);
        } catch (ClassNotFoundException e)
        {
            e.printStackTrace();
        } catch (SQLException e)
        {
            e.printStackTrace();
        }

        return count;
    }

    @Override
    public int updateJingDianInfoById(String user_name, String user_password, String user_email, int id)
    {
        int count = 0;
        try
        {
            Connection conn = DButil.getConnection();
            String sql = "insert into JingDianInfo values (?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, DButil.getUuid());
            ps.setString(2, user_name);
            ps.setString(3, user_password);
            ps.setString(4, user_email);
            count = ps.executeUpdate();

            DButil.closeConn(ps);
        } catch (ClassNotFoundException e)
        {
            e.printStackTrace();
        } catch (SQLException e)
        {
            e.printStackTrace();
        }

        return count;
    }

    @Override
    public int deleteJingDianInfoById(int id)
    {
        return 0;
    }
}
