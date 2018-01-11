package com.neusoft;

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
@WebServlet(name = "Servletd",urlPatterns = "/Servletd")
public class Servletd extends HttpServlet
{
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        String name = request.getParameter("name");
        System.out.println(name+"aaaaa");
        List list = UserDAO.select(name);
        HttpSession hs = request.getSession();
        System.out.println(list);
        if(list!=null)
        {
            hs.setAttribute("list",list);
            response.sendRedirect("../page/dingdan.jsp");
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        doPost(request,response);

    }
}
