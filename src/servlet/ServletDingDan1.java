package servlet;

import com.alibaba.fastjson.JSON;
import service.Jiekou;
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
 * Created by ttc on 18-1-8.
 */
@WebServlet("/ServletDingDan1")
public class ServletDingDan1 extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        HttpSession hs = request.getSession();
        hs.setAttribute("qqqqq", name);
        List li = new ArrayList();
        Jiekou j = new JieKouShiXian();
        li = j.selectphone(name);
        String jsonstr = JSON.toJSONString(li);
        response.sendRedirect(jsonstr);
//        response.sendRedirect("../page/order.jsp");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
