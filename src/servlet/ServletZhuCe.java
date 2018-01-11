package servlet;


import service.Jiekou;
import serviceImpl.JieKouShiXian;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by ttc on 17-12-21.
 */
@WebServlet("/ServletZhuCe")
public class ServletZhuCe extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String phone = request.getParameter("SouJiHao");
        String password = request.getParameter("MiMa");
        String name = request.getParameter("name1");

        Jiekou j=new JieKouShiXian();
        HttpSession hs=request.getSession();

        if(j.select(phone)){
           hs.setAttribute("qq","这个手机号已经注册过，请直接登录！");
            request.getRequestDispatcher("/page/register.jsp").forward(request, response);
       }else{
           if(j.insert1(name, phone,password)){
               response.sendRedirect("/page/DengLu.jsp");
           }else {
               hs.setAttribute("qq","注册失败！");
               request.getRequestDispatcher("/page/register.jsp").forward(request, response);
           }
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
