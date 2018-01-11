package com.neusoft;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

/**
 * Created by ttc on 18-1-8.
 */
@WebServlet(name = "Servletding",urlPatterns = "/Servletding")
public class Servletding extends HttpServlet
{
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        String title = request.getParameter("name");
        String name = request.getParameter("id");
        List list = UserDAO.select(title,name);
        HttpSession hs = request.getSession();//创建session
        if(list!=null)
        {
            hs.setAttribute("list",list);//存入数据
            response.sendRedirect("../page/yuding.jsp");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
       doPost(request,response);
    }
}
