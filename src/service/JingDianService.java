package service;


import pojo.JingDianInfo;

import java.util.List;

public interface JingDianService
{
    /**
     * ���ݾ���id��ѯ������Ϣ
     *
     * @param jd_id
     * @return
     */
    public List<JingDianInfo> loadJingDianInfo(String jd_id);

    /**
     * ���ݵ�ַ�����Ͳ�ѯ��ؾ���
     *
     * @param jd_name
     * @param jd_type
     * @return
     */
    public List<JingDianInfo> selectJingDianInfo(String city_name, String jd_type);

    /**
     * ��ѯ���о���
     *
     * @return
     */
    public List<JingDianInfo> selectJingDianInfo();

    /**
     * �����û�����ѯ��Ա��֧��ģ����ѯ��
     *
     * @param name
     * @return
     */
    public List<JingDianInfo> selectJingDianInfoByName(String name);

    /**
     * �������
     *
     * @param id
     * @param name
     * @param password
     * @param email
     * @return
     */
    public int insertJingDianInfo(String JingDianInfo_title, String JingDianInfo_introduce);

    /**
     * ���ݾ���id���޸ľ�����Ϣ
     *
     * @param name
     * @param password
     * @param email
     * @param id
     * @return
     */
    public int updateJingDianInfoById(String name, String password, String email, int id);

    /**
     * ����idɾ��������Ϣ
     *
     * @param jd_id
     * @return
     */
    public int deleteJingDianInfoById(int jd_id);

}
