package service;


import pojo.MENPIAO_JINGDIAN;

import java.util.List;

public interface MenPiao_JingDianService
{
    /**
     * 根据id查询订单信息
     *
     * @param jd_id
     * @return
     */
    public List<MENPIAO_JINGDIAN> loadMENPIAO_JINGDIAN(String jd_id);

    /**
     * 根据地址和类型查询相关景点
     *
     * @param jd_name
     * @param jd_type
     * @return
     */
    public List<MENPIAO_JINGDIAN> selectMENPIAO_JINGDIAN(String city_name, String jd_type);

    /**
     * 查询所有景点门票订单
     *
     * @return
     */
    public List<MENPIAO_JINGDIAN> selectMENPIAO_JINGDIAN();

    /**
     * 根据用户名查询人员（支持模糊查询）
     *
     * @param name
     * @return
     */
    public List<MENPIAO_JINGDIAN> selectMENPIAO_JINGDIANByName(String name);

    /**
     * 添加数据
     *
     * @param id
     * @param name
     * @param password
     * @param email
     * @return
     */
    public int insertMENPIAO_JINGDIAN(String MENPIAO_JINGDIAN_title, String MENPIAO_JINGDIAN_introduce);

    /**
     * 根据景点id，修改景点信息
     *
     * @param name
     * @param password
     * @param email
     * @param id
     * @return
     */
    public int updateMENPIAO_JINGDIANById(String name, String password, String email, int id);

    /**
     * 根据id删除景点信息
     *
     * @param jd_id
     * @return
     */
    public int deleteMENPIAO_JINGDIANById(int jd_id);

}
