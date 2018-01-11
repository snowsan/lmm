package service;


import pojo.JingDianInfo;

import java.util.List;

public interface JingDianService
{
    /**
     * 根据景点id查询景点信息
     *
     * @param jd_id
     * @return
     */
    public List<JingDianInfo> loadJingDianInfo(String jd_id);

    /**
     * 根据地址和类型查询相关景点
     *
     * @param jd_name
     * @param jd_type
     * @return
     */
    public List<JingDianInfo> selectJingDianInfo(String city_name, String jd_type);

    /**
     * 查询所有景点
     *
     * @return
     */
    public List<JingDianInfo> selectJingDianInfo();

    /**
     * 根据用户名查询人员（支持模糊查询）
     *
     * @param name
     * @return
     */
    public List<JingDianInfo> selectJingDianInfoByName(String name);

    /**
     * 添加数据
     *
     * @param id
     * @param name
     * @param password
     * @param email
     * @return
     */
    public int insertJingDianInfo(String JingDianInfo_title, String JingDianInfo_introduce);

    /**
     * 根据景点id，修改景点信息
     *
     * @param name
     * @param password
     * @param email
     * @param id
     * @return
     */
    public int updateJingDianInfoById(String name, String password, String email, int id);

    /**
     * 根据id删除景点信息
     *
     * @param jd_id
     * @return
     */
    public int deleteJingDianInfoById(int jd_id);

}
