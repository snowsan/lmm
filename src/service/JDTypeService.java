package service;


import pojo.JDTYPE;

import java.util.List;

public interface JDTypeService
{
    /**
     * ���ݾ�������id��ѯ
     *
     * @param jd_id
     * @return
     */
    public List<JDTYPE> loadJDTYPE(int jd_id);

    /**
     * ���ݳ������Ʋ�ѯ��������
     *
     * @param city_name
     * @return
     */
    public List<JDTYPE> selectJDTYPE(String city_name);

    /**
     * ��ѯ���о���
     *
     * @return
     */
    public List<JDTYPE> selectJDTYPE();

    /**
     * �����û�����ѯ��Ա��֧��ģ����ѯ��
     *
     * @param name
     * @return
     */
    public List<JDTYPE> selectJDTYPEByName(String name);

    /**
     * �������
     *
     * @return
     */
    public int insertJDTYPE(String JDTYPE_title, String JDTYPE_introduce);

    /**
     * ���ݾ���id���޸ľ�����Ϣ
     *
     * @param name
     * @param password
     * @param email
     * @param id
     * @return
     */
    public int updateJDTYPEById(String name, String password, String email, int id);

    /**
     * ����idɾ��������Ϣ
     *
     * @param jd_id
     * @return
     */
    public int deleteJDTYPEById(int jd_id);

}
