package util;

import java.sql.*;
import java.util.UUID;


public class DButil
{
    public static Connection conn;
    public static final String ORADIRVER = "oracle.jdbc.driver.OracleDriver";
    public static final String URL = "jdbc:oracle:thin:@localhost:1521:orcl";

    /**
     * 建立数据库链接
     *
     * @return
     * @throws ClassNotFoundException
     * @throws SQLException
     */
    public static Connection getConnection() throws ClassNotFoundException, SQLException
    {
        //1.加载驱动
        Class.forName(ORADIRVER);
        //2.创建url
        //String url = "jdbc:oracle:thin:@localhost:1521:orcl";
        //3.建立连接
        conn = DriverManager.getConnection(URL, "scott", "tiger");
        return conn;
    }

    /**
     * 关闭资源
     *
     * @param ps
     * @param rs
     */
    public static void closeConn(PreparedStatement ps, ResultSet rs)
    {
        if (ps != null && rs != null)
        {
            try
            {
                rs.close();
                ps.close();
                conn.close();
            } catch (SQLException e)
            {
                e.printStackTrace();
            }
        }
    }

    public static void closeConn(PreparedStatement ps)
    {
        if (ps != null)
        {
            try
            {
                ps.close();
                conn.close();
            } catch (SQLException e)
            {
                e.printStackTrace();
            }
        }
    }

    /**
     * 获得UUID
     *
     * @return
     */
    public static String getUuid()
    {
        UUID uuid = UUID.randomUUID();
        return uuid.toString().replaceAll("-", "");
    }
}
