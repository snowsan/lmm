package pojo;

/**
 * Created by ttc on 18-1-4.
 */
public class MENPIAO_JINGDIAN
{
    private String mp_id;
    private String username;
    private String mp_qpname;
    private String mp_sfz;
    private String mp_count;
    private String mp_date;
    private String mp_qpphone;
    private int mp_status;
    private String jd_id;
    private String jd_name;


    public MENPIAO_JINGDIAN(String mp_id, String username, String mp_qpname, String mp_sfz, String mp_count, String mp_date, String mp_qpphone, int mp_status, String jd_id, String jd_name)
    {
        this.mp_id = mp_id;
        this.username = username;
        this.mp_qpname = mp_qpname;
        this.mp_sfz = mp_sfz;
        this.mp_count = mp_count;
        this.mp_date = mp_date;
        this.mp_qpphone = mp_qpphone;
        this.mp_status = mp_status;
        this.jd_id = jd_id;
        this.jd_name = jd_name;
    }

    public String getMp_id()
    {
        return mp_id;
    }

    public void setMp_id(String mp_id)
    {
        this.mp_id = mp_id;
    }

    public String getUsername()
    {
        return username;
    }

    public void setUsername(String username)
    {
        this.username = username;
    }

    public String getMp_qpname()
    {
        return mp_qpname;
    }

    public void setMp_qpname(String mp_qpname)
    {
        this.mp_qpname = mp_qpname;
    }

    public String getMp_sfz()
    {
        return mp_sfz;
    }

    public void setMp_sfz(String mp_sfz)
    {
        this.mp_sfz = mp_sfz;
    }

    public String getMp_count()
    {
        return mp_count;
    }

    public void setMp_count(String mp_count)
    {
        this.mp_count = mp_count;
    }

    public String getMp_date()
    {
        return mp_date;
    }

    public void setMp_date(String mp_date)
    {
        this.mp_date = mp_date;
    }

    public String getMp_qpphone()
    {
        return mp_qpphone;
    }

    public void setMp_qpphone(String mp_qpphone)
    {
        this.mp_qpphone = mp_qpphone;
    }

    public int getMp_status()
    {
        return mp_status;
    }

    public void setMp_status(int mp_status)
    {
        this.mp_status = mp_status;
    }

    public String getJd_id()
    {
        return jd_id;
    }

    public void setJd_id(String jd_id)
    {
        this.jd_id = jd_id;
    }

    public String getJd_name()
    {
        return jd_name;
    }

    public void setJd_name(String jd_name)
    {
        this.jd_name = jd_name;
    }
}
