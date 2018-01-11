package serviceImpl;

import pojo.MENPIAO_JINGDIAN;
import service.ZhiFuService;
import util.DButil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

/**
 * Created by ttc on 18-1-4.
 */
public class ZhiFuServiceImpl implements ZhiFuService
{
    @Override
    public List<MENPIAO_JINGDIAN> loadMENPIAO_JINGDIAN(int jd_id)
    {
        return null;
    }

    @Override
    public List<MENPIAO_JINGDIAN> selectMENPIAO_JINGDIAN(String city_name)
    {
        return null;
    }

    @Override
    public List<MENPIAO_JINGDIAN> selectMENPIAO_JINGDIAN()
    {
        return null;
    }

    @Override
    public List<MENPIAO_JINGDIAN> selectMENPIAO_JINGDIANByName(String name)
    {
        return null;
    }

    @Override
    public int insertMENPIAO_JINGDIAN(String mp_id, String username, String mp_qpname, String mp_sfz, String mp_count, String mp_date, String mp_qpphone, int mp_status, String jd_id)
    {
        int count = 0;
        try
        {
            Connection conn = DButil.getConnection();
            String sql = "insert into menpiao_jingdian values (?,?,?,?,?,?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setString(1, mp_id);
            ps.setString(2, username);
            ps.setString(3, mp_qpname);
            ps.setString(4, mp_sfz);
            ps.setString(5, mp_count);
            ps.setString(6, mp_date);
            ps.setString(7, mp_qpphone);
            ps.setInt(8, mp_status);
            ps.setString(9, jd_id);
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
    public int updateMENPIAO_JINGDIANById(String name, String password, String email, int id)
    {
        return 0;
    }

    @Override
    public int deleteMENPIAO_JINGDIANById(int jd_id)
    {
        return 0;
    }
}
