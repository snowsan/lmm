package service;

import pojo.DingFang;
import pojo.JiuDian;
import pojo.JiuDianName;
import pojo.User;

import java.util.List;


public interface Jiekou {

    //酒店
    public JiuDian selectName(int id);

    public List<JiuDian> selectAddress(String address);

    public List<JiuDianName> selectJiuDian(int type);

    public List<JiuDianName> selectJiuDian1(int id);

    public boolean insert(String name, String phone, long price, int number1, String startdate, String enddate, String jiudianname);

    public List<DingFang> selectphone(String phone);

    public boolean select(String phone);

    public boolean insert1(String name, String phone, String password);

    public boolean selectUser(String phone, String password);

    public String selectUserName(String phone);

    public List<User> selectUserAll(String phone);

    public boolean insertUserAll(String address, String address1, String phone, String job, String jianjie, String email);


}
