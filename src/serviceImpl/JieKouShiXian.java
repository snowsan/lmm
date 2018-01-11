package serviceImpl;

import service.Jiekou;
import pojo.DingFang;
import pojo.JiuDian;
import pojo.JiuDianName;
import pojo.User;
import util.DButil;
import util.MD5Util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class JieKouShiXian implements Jiekou {

    Connection conn;
    String sql;
    PreparedStatement ps;
    ResultSet rs;
    List list;


    //    通过id查询酒店的所有信息
    @Override
    public JiuDian selectName(int id) {
        JiuDian j = new JiuDian();
        try {
            conn = DButil.getConnection();
            sql = "SELECT * FROM jiudian_xinxi WHERE  id =?";
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            if (rs.next()) {
                j.setId(rs.getInt("Id"));
                j.setName(rs.getString("Name"));
                j.setType(rs.getString("Type"));
                j.setPrice(rs.getDouble("Price"));
                j.setAddress(rs.getString("Address"));
                j.setRight(rs.getDouble("Right"));
                j.setCommentnumber(rs.getInt("Commentnumber"));
                j.setCommentt(rs.getString("Commentt"));
                j.setManagersay(rs.getString("Managersay"));
                j.setImages(rs.getString("Images"));

            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DButil.closeConn(ps, rs);
        }
        return j;
    }

    //    通过查询地址来获取酒店
    @Override
    public List<JiuDian> selectAddress(String address) {
        List list = new ArrayList();
        try {
            conn = DButil.getConnection();
            sql = "SELECT * FROM jiudian_xinxi WHERE  address like '%" + address + "%'";
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
//每次循环要新建一个对象，否则找到的都是最后一个
                JiuDian j = new JiuDian();
                j.setId(rs.getInt("Id"));
                j.setName(rs.getString("Name"));
                j.setType(rs.getString("Type"));
                j.setPrice(rs.getDouble("Price"));
                j.setAddress(rs.getString("Address"));
                j.setRight(rs.getDouble("Right"));
                j.setCommentnumber(rs.getInt("Commentnumber"));
                j.setCommentt(rs.getString("Commentt"));
                j.setManagersay(rs.getString("Managersay"));
                j.setImages(rs.getString("Images"));
                list.add(j);
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DButil.closeConn(ps, rs);
        }
        return list;
    }

    //    通过type查询这个酒店所有的房间信息
    @Override
    public List<JiuDianName> selectJiuDian(int type) {

        try {
            conn = DButil.getConnection();
            sql = "SELECT * FROM jiudian_xilaideng where type=?";
            ps = conn.prepareStatement(sql);
            ps.setInt(1, type);
            rs = ps.executeQuery();
            list = new ArrayList();
            while (rs.next()) {
                JiuDianName j = new JiuDianName();
                j.setJiudian(rs.getString("Jiudian"));
                j.setImages(rs.getString("Images"));
                j.setName(rs.getString("Name"));
                j.setBed(rs.getString("bed"));
                j.setPrice(rs.getInt("Price"));
                j.setNumber1(rs.getInt("Number1"));
                j.setId(rs.getInt("id"));
                list.add(j);
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DButil.closeConn(ps, rs);
        }
        return list;
    }


    //    通过id查询这个房间信息
    @Override
    public List<JiuDianName> selectJiuDian1(int id) {

        try {
            conn = DButil.getConnection();
            sql = "SELECT * FROM jiudian_xilaideng where id=?";
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            list = new ArrayList();
            if (rs.next()) {
                JiuDianName j = new JiuDianName();
                j.setJiudian(rs.getString("Jiudian"));
                j.setImages(rs.getString("Images"));
                j.setName(rs.getString("Name"));
                j.setBed(rs.getString("bed"));
                j.setPrice(rs.getInt("Price"));
                j.setNumber1(rs.getInt("Number1"));
                j.setId(rs.getInt("id"));
                list.add(j);
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DButil.closeConn(ps, rs);
        }
        return list;
    }


    //    用户订房  插入到数据库
    @Override
    public boolean insert(String name, String phone, long price, int number1, String startdate, String enddate, String jiudianname) {
        try {
            conn = DButil.getConnection();
            sql = "INSERT INTO Jiudian_Dingfang VALUES (?,?,?,?,?,?,?)";
            ps = conn.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, phone);
            ps.setLong(3, price);
            ps.setInt(4, number1);
            ps.setString(5, startdate);
            ps.setString(6, enddate);
            ps.setString(7, jiudianname);
            int a = ps.executeUpdate();
            if (a > 0) {
                return true;
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DButil.closeConn(ps, rs);
        }
        return false;
    }


    //    通过phone 查询这个用户的订单信息
    @Override
    public List<DingFang> selectphone(String phone) {
        List li = new ArrayList();
        try {
            conn = DButil.getConnection();
            sql = "SELECT * FROM JIUDIAN_DINGFANG where phone=?";
            ps = conn.prepareStatement(sql);
            ps.setString(1, phone);
            rs = ps.executeQuery();
            while (rs.next()) {
                DingFang d = new DingFang();
                d.setName(rs.getString("name"));
                d.setPhone(rs.getString("phone"));
                d.setPrice(rs.getInt("price"));
                d.setNumber1(rs.getInt("number1"));
                d.setStartdate(rs.getString("startdate"));
                d.setEnddate(rs.getString("enddate"));
                d.setJiudianname(rs.getString("jiudianname"));
                li.add(d);
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DButil.closeConn(ps, rs);
        }
        return li;
    }


    //    注册时查询是否有同名
    @Override
    public boolean select(String phone) {
        try {
            conn = DButil.getConnection();
            sql = "select * from user_lmm where phone=?";
            ps = conn.prepareStatement(sql);
            ps.setString(1, phone);
            rs = ps.executeQuery();
            if (rs.next()) {
                return true;
            }
            DButil.closeConn(ps, rs);

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }


    //    注册，插入到数据库
    @Override
    public boolean insert1(String name, String phone, String password) {
        String pa = MD5Util.getMD5(password);
        try {
            conn = DButil.getConnection();
            sql = "INSERT INTO USER_LMM (id,name,phone,pssword) VALUES(5,?,?,?)";
            ps = conn.prepareStatement(sql);

            ps.setString(1, name);
            ps.setString(2, phone);
            ps.setString(3, pa);
            int a = ps.executeUpdate();
            if (a > 0) {
                return true;
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DButil.closeConn(ps, rs);
        }
        return false;
    }

    //登录   查询用户名密码是否正确
    @Override
    public boolean selectUser(String phone, String password) {
        String pa = MD5Util.getMD5(password);
        try {
            conn = DButil.getConnection();
            sql = "select * from user_lmm where phone=? and pssword=?";
            ps = conn.prepareStatement(sql);
            ps.setString(1, phone);
            ps.setString(2, pa);
            rs = ps.executeQuery();
            if (rs.next()) {
                return true;
            }
            DButil.closeConn(ps, rs);

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }


    @Override
    public String selectUserName(String phone) {
        try {
            conn = DButil.getConnection();
            sql = "select name from user_lmm where phone=?";
            ps = conn.prepareStatement(sql);
            ps.setString(1, phone);
            rs = ps.executeQuery();
            if (rs.next()) {
                String name = rs.getString("name");
                return name;
            }
            DButil.closeConn(ps, rs);

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<User> selectUserAll(String phone) {
        User u = new User();
        List li = new ArrayList();
        try {
            conn = DButil.getConnection();
            sql = "select * from user_lmm where phone=?";
            ps = conn.prepareStatement(sql);
            ps.setString(1, phone);
            rs = ps.executeQuery();

            if (rs.next()) {
                u.setName(rs.getString("name"));
                u.setAddress(rs.getString("address"));
                u.setEmail(rs.getString("email"));
                u.setPassword(rs.getString("pssword"));
                u.setPhone(rs.getString("phone"));
                u.setAddress1(rs.getString("address1"));
                u.setJob(rs.getString("job"));
                u.setJianjie(rs.getString("jianjie"));
                u.setSex(rs.getString("sex"));
                li.add(u);
            }
            DButil.closeConn(ps, rs);

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return li;
    }

    @Override
    public boolean insertUserAll(String address, String address1, String phone, String job, String jianjie, String email) {
        try {
            conn = DButil.getConnection();
            sql = " update user_lmm set address=?,address1=?,email=?,job=?,jianjie=? where phone=?";
            ps = conn.prepareStatement(sql);
            ps.setString(1, address);
            ps.setString(2, address1);
            ps.setString(3, email);
            ps.setString(4, job);
            ps.setString(5, jianjie);
            ps.setString(6, phone);
            int r = ps.executeUpdate();
            if (r > 0) {
                return true;

            }
            DButil.closeConn(ps);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }

}


//    //删除
//    //传入一个id，删除
//    @Override
//    public void delete(int id) {
//        try {
//            conn = DButil.getConnection();
//            sql = " delete yonghu where id=?";
//            ps = conn.prepareStatement(sql);
//            ps.setInt(1, id);
//            int r1 = ps.executeUpdate();
//            if (r1 > 0) {
//                System.out.println("删除成功");
//            }
//            DBUtil.releaseDB(ps);
//        } catch (ClassNotFoundException e) {
//            e.printStackTrace();
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//    }
//
//
////修改
//
//    //  普通用户  修改name=name1的用户的name，password，email
//    @Override
//    public void update(String name, String password, String email, String name1) {
//        try {
//            conn = DButil.getConnection();
//            sql = " update yonghu set name=?,password=?,email=? where name=?";
//            ps = conn.prepareStatement(sql);
//            ps.setString(1, name);
//            ps.setString(2, password);
//            ps.setString(3, email);
//            ps.setString(4, name1);
//            int r = ps.executeUpdate();
//            if (r > 0) {
//                System.out.println("修改成功");
//            }
//            DBUtil.releaseDB(ps);
//        } catch (ClassNotFoundException e) {
//            e.printStackTrace();
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//    }
//
//    //管理员   传入一个id修改该用户的name，password，email，quanxian
//    @Override
//    public void update(String name, String password, String email, String quanxian, int id) {
//        try {
//            conn = DButil.getConnection();
//            sql = " update yonghu set name=?,password=?,email=?,quanxian=? where id=?";
//            ps = conn.prepareStatement(sql);
//            ps.setString(1, name);
//            ps.setString(2, password);
//            ps.setString(3, email);
//            ps.setString(4, quanxian);
//            ps.setInt(5, id);
//            int r = ps.executeUpdate();
//            if (r > 0) {
//                System.out.println("修改成功");
//            }
//            DBUtil.releaseDB(ps);
//        } catch (ClassNotFoundException e) {
//            e.printStackTrace();
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//    }
//
//
////查询
//
//    //查询所有用户信息
//    @Override
//    public List<User> select() {
//        try {
//            conn = DButil.getConnection();
//            sql = "select * from yonghu ";
//            ps = conn.prepareStatement(sql);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                User user = new User(rs.getString("name"), rs.getString("password"), rs.getString("email"), rs.getInt("id"), rs.getString("quanxian"));
//                list.add(user);
//            }
//            DButil.closeConn(ps,rs);
//
//        } catch (ClassNotFoundException e) {
//            e.printStackTrace();
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return list;
//    }
//
//    //传入一个name ，查询该用户所有信息
//    @Override
//    public List<User> select(String name) {
//        try {
//            conn = DButil.getConnection();
//            sql = " select *from yonghu where name=?";
//            ps = conn.prepareStatement(sql);
//            ps.setString(1, name);
//            rs = ps.executeQuery();
//            if (rs.next()) {
//                User user = new User(rs.getString("name"), rs.getString("password"), rs.getString("email"), rs.getInt("id"), rs.getString("quanxian"));
//                list.add(user);
//            }
//            DButil.closeConn(ps,rs);
//        } catch (ClassNotFoundException e) {
//            e.printStackTrace();
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return list;
//    }
//
//    //传入一个name，password，返回该name所有信息一个list
//    @Override
//    public List<User> select(String name, String password) {
//        try {
//            conn = DButil.getConnection();
//            sql = "select * from yonghu where name=? and password=?";
//            ps = conn.prepareStatement(sql);
//            ps.setString(1, name);
//            ps.setString(2, password);
//            rs = ps.executeQuery();
//            if (rs.next()) {
//                User user = new User(rs.getString("name"), rs.getString("password"), rs.getString("email"), rs.getInt("id"), rs.getString("quanxian"));
//                list.add(user);
//            }
//            DButil.closeConn(ps,rs);
//        } catch (ClassNotFoundException e) {
//            e.printStackTrace();
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return list;
//    }
//
//    //传入一个ID  返回此id的所有信息的list
//    @Override
//    public List<User> select(int id) {
//        try {
//            conn = DButil.getConnection();
//            sql = " select * from yonghu where id=?";
//            ps = conn.prepareStatement(sql);
//            ps.setInt(1, id);
//            rs = ps.executeQuery();
//            if (rs.next()) {
//                User user = new User(rs.getString("name"), rs.getString("password"), rs.getString("email"), rs.getInt("id"), rs.getString("quanxian"));
//                list.add(user);
//            }
//            DButil.closeConn(ps,rs);
//        } catch (ClassNotFoundException e) {
//            e.printStackTrace();
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return list;
//    }
//
//    //模糊id查询
//    @Override
//    public List<User> select(int id,int a) {
//        try {
//            conn = DButil.getConnection();
//            sql = " select * from yonghu where id like '%" + id + "%'";
//            ps = conn.prepareStatement(sql);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                User user = new User(rs.getString("name"), rs.getString("password"), rs.getString("email"), rs.getInt("id"), rs.getString("quanxian"));
//                list.add(user);
//            }
//            DButil.closeConn(ps,rs);
//        } catch (ClassNotFoundException e) {
//            e.printStackTrace();
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return list;
//    }
//
//    //模糊名字查询
//    @Override
//    public List<User> select(String name,int a) {
//        try {
//            conn = DButil.getConnection();
//            sql = " select *from yonghu where name like '%" + name + "%'";
//            ps = conn.prepareStatement(sql);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                User user = new User(rs.getString("name"), rs.getString("password"), rs.getString("email"), rs.getInt("id"), rs.getString("quanxian"));
//                list.add(user);
//            }
//            DButil.closeConn(ps,rs);
//        } catch (ClassNotFoundException e) {
//            e.printStackTrace();
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return list;
//    }



