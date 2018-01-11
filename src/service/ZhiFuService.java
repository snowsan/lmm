package service;


import pojo.MENPIAO_JINGDIAN;

import java.util.List;

public interface ZhiFuService
{
    /**
     * 根据景点类型id查询
     *
     * @param jd_id
     * @return
     */
    public List<MENPIAO_JINGDIAN> loadMENPIAO_JINGDIAN(int jd_id);

    /**
     * 根据城市名称查询景点类型
     *
     * @param city_name
     * @return
     */
    public List<MENPIAO_JINGDIAN> selectMENPIAO_JINGDIAN(String city_name);

    /**
     * 查询所有景点
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
     * @return
     */
    public int insertMENPIAO_JINGDIAN(String mp_id,
                                      String username,
                                      String mp_qpname,
                                      String mp_sfz,
                                      String mp_count,
                                      String mp_date,
                                      String mp_qpphone,
                                      int mp_status,
                                      String jd_id);

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
