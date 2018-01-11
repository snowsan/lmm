package pojo;

/**
 * Created by ttc on 17-12-29.
 */
public class JDTYPE
{
    private String jt_id;
    private String city_name;
    private String jt_name;

    public JDTYPE(String jt_id, String city_name, String jt_name)
    {
        this.jt_id = jt_id;
        this.city_name = city_name;
        this.jt_name = jt_name;
    }

    public String getJt_id()
    {
        return jt_id;
    }

    public void setJt_id(String jt_id)
    {
        this.jt_id = jt_id;
    }

    public String getCity_name()
    {
        return city_name;
    }

    public void setCity_name(String city_name)
    {
        this.city_name = city_name;
    }

    public String getJt_name()
    {
        return jt_name;
    }

    public void setJt_name(String jt_name)
    {
        this.jt_name = jt_name;
    }
}
