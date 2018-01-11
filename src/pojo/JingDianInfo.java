package pojo;

/**
 * Created by ttc on 17-12-29.
 */
public class JingDianInfo
{
    private String jd_id;
    private String jd_name;
    private int jd_price;
    private String jd_address;
    private String jd_photoname;
    private String jd_introduction;
    private String jd_type;
    private String city_name;
    private String jd_rank;
    private String jd_date;

    public JingDianInfo(String jd_id, String jd_name, int jd_price, String jd_address, String jd_photoname, String jd_introduction, String jd_type, String city_name, String jd_rank, String jd_date)
    {
        this.jd_id = jd_id;
        this.jd_name = jd_name;
        this.jd_price = jd_price;
        this.jd_address = jd_address;
        this.jd_photoname = jd_photoname;
        this.jd_introduction = jd_introduction;
        this.jd_type = jd_type;
        this.city_name = city_name;
        this.jd_rank = jd_rank;
        this.jd_date = jd_date;
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

    public int getJd_price()
    {
        return jd_price;
    }

    public void setJd_price(int jd_price)
    {
        this.jd_price = jd_price;
    }

    public String getJd_address()
    {
        return jd_address;
    }

    public void setJd_address(String jd_address)
    {
        this.jd_address = jd_address;
    }

    public String getJd_photoname()
    {
        return jd_photoname;
    }

    public void setJd_photoname(String jd_photoname)
    {
        this.jd_photoname = jd_photoname;
    }

    public String getJd_introduction()
    {
        return jd_introduction;
    }

    public void setJd_introduction(String jd_introduction)
    {
        this.jd_introduction = jd_introduction;
    }

    public String getJd_type()
    {
        return jd_type;
    }

    public void setJd_type(String jd_type)
    {
        this.jd_type = jd_type;
    }

    public String getCity_name()
    {
        return city_name;
    }

    public void setCity_name(String city_name)
    {
        this.city_name = city_name;
    }

    public String getJd_rank()
    {
        return jd_rank;
    }

    public void setJd_rank(String jd_rank)
    {
        this.jd_rank = jd_rank;
    }

    public String getJd_date()
    {
        return jd_date;
    }

    public void setJd_date(String jd_date)
    {
        this.jd_date = jd_date;
    }
}
