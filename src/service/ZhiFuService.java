package service;


import pojo.MENPIAO_JINGDIAN;

import java.util.List;

public interface ZhiFuService
{
    /**
     * ���ݾ�������id��ѯ
     *
     * @param jd_id
     * @return
     */
    public List<MENPIAO_JINGDIAN> loadMENPIAO_JINGDIAN(int jd_id);

    /**
     * ���ݳ������Ʋ�ѯ��������
     *
     * @param city_name
     * @return
     */
    public List<MENPIAO_JINGDIAN> selectMENPIAO_JINGDIAN(String city_name);

    /**
     * ��ѯ���о���
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
