package com.neusoft;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Connection;
import java.util.List;

/**
 * Created by ttc on 18-1-6.
 */
@WebServlet(name = "ServletSearch",urlPatterns = "/ServletSearch")
public class ServletSearch extends HttpServlet
{
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        String startaddress = request.getParameter("input1");
        String endaddress = request.getParameter("input2");
        String date = request.getParameter("input3");
        List list = UserDAO.select(startaddress,endaddress,date);
        HttpSession hs = request.getSession();//创建session
        if(list!=null)
        {
            hs.setAttribute("list",list);//存入数据
            response.sendRedirect("../page/dingpiao.jsp");
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        doPost(request,response);
    }
}
