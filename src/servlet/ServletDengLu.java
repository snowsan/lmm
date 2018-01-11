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
 * Created by ttc on 18-1-8.
 */
@WebServlet("/ServletDengLu")
public class ServletDengLu extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Jiekou j=new JieKouShiXian();
        String phone=request.getParameter("phone");
        String password=request.getParameter("password");

        HttpSession hs=request.getSession();
        if(j.selectUser(phone,password)){
           String name= j.selectUserName(phone);
            hs.setAttribute("qqqq",name);
            hs.setAttribute("qqq",phone);

            request.getRequestDispatcher("/page/jiuDian.jsp").forward(request, response);
        }else{
            hs.setAttribute("qqq","&nbsp;&nbsp;&nbsp;用户名或密码错误");
            request.getRequestDispatcher("/page/DengLu.jsp").forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request, response);
    }
}
