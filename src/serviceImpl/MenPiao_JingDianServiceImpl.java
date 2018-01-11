package serviceImpl;

import pojo.JingDianInfo;
import pojo.MENPIAO_JINGDIAN;
import service.MenPiao_JingDianService;
import util.DButil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by ttc on 18-1-5.
 */
public class MenPiao_JingDianServiceImpl implements MenPiao_JingDianService
{
    @Override
    public List<MENPIAO_JINGDIAN> loadMENPIAO_JINGDIAN(String jd_id)
    {
        return null;
    }

    @Override
    public List<MENPIAO_JINGDIAN> selectMENPIAO_JINGDIAN(String city_name, String jd_type)
    {
        return null;
    }

    @Override
    public List<MENPIAO_JINGDIAN> selectMENPIAO_JINGDIAN()
    {
        List<MENPIAO_JINGDIAN> list = new ArrayList<>();
        try
        {
            Connection conn = DButil.getConnection();
            String sql = "select t.*,j.jd_name FROM MENPIAO_JINGDIAN t  LEFT JOIN JINGDIANINFO j ON t.jd_id= j.jd_id WHERE t.mp_status = 1";
            PreparedStatement ps = conn.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();
            while (rs.next())
            {
                MENPIAO_JINGDIAN t = new MENPIAO_JINGDIAN(
                        rs.getString("MP_ID"),
                        rs.getString("USERNAME"),
                        rs.getString("MP_QPNAME"),
                        rs.getString("MP_SFZ"),
                        rs.getString("MP_COUNT"),
                        rs.getString("MP_DATE"),
                        rs.getString("MP_QPPHONE"),
                        rs.getInt("MP_STATUS"),
                        rs.getString("jd_id"),
                        rs.getString("jd_name")
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
    public List<MENPIAO_JINGDIAN> selectMENPIAO_JINGDIANByName(String name)
    {
        return null;
    }

    @Override
    public int insertMENPIAO_JINGDIAN(String MENPIAO_JINGDIAN_title, String MENPIAO_JINGDIAN_introduce)
    {
        return 0;
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
