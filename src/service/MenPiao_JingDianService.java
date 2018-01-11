package service;


import pojo.MENPIAO_JINGDIAN;

import java.util.List;

public interface MenPiao_JingDianService
{
    /**
     * ����id��ѯ������Ϣ
     *
     * @param jd_id
     * @return
     */
    public List<MENPIAO_JINGDIAN> loadMENPIAO_JINGDIAN(String jd_id);

    /**
     * ���ݵ�ַ�����Ͳ�ѯ��ؾ���
     *
     * @param jd_name
     * @param jd_type
     * @return
     */
    public List<MENPIAO_JINGDIAN> selectMENPIAO_JINGDIAN(String city_name, String jd_type);

    /**
     * ��ѯ���о�����Ʊ����
     *
     * @return
     */
    public List<MENPIAO_JINGDIAN> selectMENPIAO_JINGDIAN();

    /**
     * �����û�����ѯ��Ա��֧��ģ����ѯ��
     *
     * @param name
     * @return
     */
    public List<MENPIAO_JINGDIAN> selectMENPIAO_JINGDIANByName(String name);

    /**
     * �������
     *
     * @param id
     * @param name
     * @param password
     * @param email
     * @return
     */
    public int insertMENPIAO_JINGDIAN(String MENPIAO_JINGDIAN_title, String MENPIAO_JINGDIAN_introduce);

    /**
     * ���ݾ���id���޸ľ�����Ϣ
     *
     * @param name
     * @param password
     * @param email
     * @param id
     * @return
     */
    public int updateMENPIAO_JINGDIANById(String name, String password, String email, int id);

    /**
     * ����idɾ��������Ϣ
     *
     * @param jd_id
     * @return
     */
    public int deleteMENPIAO_JINGDIANById(int jd_id);

}
