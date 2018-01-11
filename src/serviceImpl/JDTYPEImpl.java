package serviceImpl;

/**
 * Created by ttc on 17-12-29.
 */

import pojo.JDTYPE;
import service.JDTypeService;
import util.DButil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class JDTYPEImpl implements JDTypeService
{
    @Override
    public List<JDTYPE> loadJDTYPE(int jd_id)
    {
        return null;
    }

    @Override
    public List<JDTYPE> selectJDTYPE(String city_name)
    {
        List<JDTYPE> list = new ArrayList();
        try
        {
            Connection conn = DButil.getConnection();
            String sql = "select * from jdtype where city_name = ? ";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, city_name);
            ResultSet rs = ps.executeQuery();

            while (rs.next())
            {
                JDTYPE t = new JDTYPE(
                        rs.getString("jt_id"),
                        rs.getString("city_name"),
                        rs.getString("jt_name")
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
    public List<JDTYPE> selectJDTYPE()
    {
        return null;
    }

    @Override
    public List<JDTYPE> selectJDTYPEByName(String name)
    {
        return null;
    }

    @Override
    public int insertJDTYPE(String JDTYPE_title, String JDTYPE_introduce)
    {
        return 0;
    }

    @Override
    public int updateJDTYPEById(String name, String password, String email, int id)
    {
        return 0;
    }

    @Override
    public int deleteJDTYPEById(int jd_id)
    {
        return 0;
    }
}
