package servlet;

import service.Jiekou;
import pojo.User;
import serviceImpl.JieKouShiXian;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by ttc on 18-1-9.
 */
@WebServlet("/ServletXinXi")
public class ServletXinXi extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String phone = request.getParameter("name0");
        System.out.println(phone);
        Jiekou j = new JieKouShiXian();

        List<User> list = new ArrayList();
        list = j.selectUserAll(phone);
        HttpSession hs = request.getSession();
        hs.setAttribute("li",list);
        response.sendRedirect("../page/User.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
