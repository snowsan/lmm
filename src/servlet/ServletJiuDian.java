package servlet;

import service.Jiekou;
import pojo.JiuDian;
import serviceImpl.JieKouShiXian;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 17-12-31.
 */
@WebServlet("/ServletJiuDian")

public class ServletJiuDian extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        JiuDian j = new JiuDian();

        String id1 = request.getParameter("name");

        int id = Integer.parseInt(id1);

        Jiekou jiekou = new JieKouShiXian();

        j = jiekou.selectName(id);

        List l = new ArrayList();
        l.add(j);

        HttpSession session = request.getSession();

        session.setAttribute("list", j);

        response.sendRedirect("page/jiuDianXiangQing.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
