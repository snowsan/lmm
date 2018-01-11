package servlet;

import service.Jiekou;
import pojo.JiuDianName;
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
 * Created by ttc on 18-1-5.
 */
@WebServlet("/ServletDingFang1")
public class ServletDingFang1 extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<JiuDianName> li = new ArrayList();

        String id1 = request.getParameter("name");

        int id = Integer.parseInt(id1);

        Jiekou j = new JieKouShiXian();

        li = j.selectJiuDian1(id);

        HttpSession hs = request.getSession();

        hs.setAttribute("li", li);

        response.sendRedirect("../page/DingFang.jsp");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }


}
