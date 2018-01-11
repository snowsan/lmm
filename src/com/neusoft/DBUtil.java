package com.neusoft;

import java.sql.*;

/**
 * Created by ttc on 17-12-14.
 */
public class DBUtil
{
    public static final String ORACLE="oracle.jdbc.driver.OracleDriver";
    public static final String IP="jdbc:oracle:thin:@10.25.47.152:1521:ORCL";
    public static Connection conn = null;
    public static Connection connedDB() throws ClassNotFoundException, SQLException
    {
        Class.forName(ORACLE);
        String url = IP;
        conn = DriverManager.getConnection(url,"scott","tiger");
        return conn;
    }
    public static void releaseDB(PreparedStatement ps, ResultSet rs)
    {
        if(conn!=null)
        {
            if(ps!=null)
            {
                if(rs!=null)
                {
                    try
                    {
                        rs.close();
                    } catch (SQLException e)
                    {
                        e.printStackTrace();
                    }
                    try
                    {
                        ps.close();
                    } catch (SQLException e)
                    {
                        e.printStackTrace();
                    }
                    try
                    {
                        conn.close();
                    } catch (SQLException e)
                    {
                        e.printStackTrace();
                    }
                }
            }
        }
    }
    public static void releaseDB(PreparedStatement ps)
    {
        if(conn!=null)
        {
            if(ps!=null)
            {
                try
                {
                    ps.close();
                } catch (SQLException e)
                {
                    e.printStackTrace();
                }
                try
                {
                    conn.close();
                } catch (SQLException e)
                {
                    e.printStackTrace();
                }

            }
        }
    }
}
