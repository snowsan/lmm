package service;


import pojo.JDTYPE;

import java.util.List;

public interface JDTypeService
{
    /**
     * 根据景点类型id查询
     *
     * @param jd_id
     * @return
     */
    public List<JDTYPE> loadJDTYPE(int jd_id);

    /**
     * 根据城市名称查询景点类型
     *
     * @param city_name
     * @return
     */
    public List<JDTYPE> selectJDTYPE(String city_name);

    /**
     * 查询所有景点
     *
     * @return
     */
    public List<JDTYPE> selectJDTYPE();

    /**
     * 根据用户名查询人员（支持模糊查询）
     *
     * @param name
     * @return
     */
    public List<JDTYPE> selectJDTYPEByName(String name);

    /**
     * 添加数据
     *
     * @return
     */
    public int insertJDTYPE(String JDTYPE_title, String JDTYPE_introduce);

    /**
     * 根据景点id，修改景点信息
     *
     * @param name
     * @param password
     * @param email
     * @param id
     * @return
     */
    public int updateJDTYPEById(String name, String password, String email, int id);

    /**
     * 根据id删除景点信息
     *
     * @param jd_id
     * @return
     */
    public int deleteJDTYPEById(int jd_id);

}
