package servlet;

import service.Jiekou;
import pojo.JiuDian;
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
 * Created by ttc on 18-1-6.
 */
@WebServlet("/ServletSouSuo")
public class ServletSouSuo extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String address = request.getParameter("address");
        Jiekou j = new JieKouShiXian();
        List<JiuDian> li = new ArrayList();
        li = j.selectAddress(address);

        HttpSession hs = request.getSession();

        hs.setAttribute("list", li);

        response.sendRedirect("../page/JiuDianYuDing.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);

    }
}
