package com.neusoft;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by ttc on 18-1-8.
 */
@WebServlet(name = "Servletgo",urlPatterns = "/Servletgo")
public class Servletgo extends HttpServlet
{
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        String username = request.getParameter("username");
        String sfzheng = request.getParameter("shenfenzheng");
        String qupiaoname = request.getParameter("qupiaoname");
        String qupiaophone = request.getParameter("qupiaophone");
        String trainnum = request.getParameter("trainnum");
        String startaddress = request.getParameter("startaddress");
        String starttime = request.getParameter("starttime");
        String date = request.getParameter("date");
        String time = request.getParameter("time");
        String endaddress = request.getParameter("endaddress");
        String endtime = request.getParameter("endtime");
        String enddate = request.getParameter("enddate");
        String seattype = request.getParameter("seattype");
        String price = request.getParameter("price");
        System.out.println(trainnum);
        System.out.println(seattype);
        train t = new train(trainnum,startaddress,starttime,date,time,endaddress,endtime,enddate,seattype,price);
        HttpSession hs = request.getSession();
        boolean result = UserDAO.Add(username,sfzheng,qupiaoname,qupiaophone,t);
        if(result)
        {
            response.sendRedirect("../page/chenggong.jsp");
        }
        else
        {
            response.sendRedirect("../page/shibai.jsp");
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        doPost(request,response);

    }
}
