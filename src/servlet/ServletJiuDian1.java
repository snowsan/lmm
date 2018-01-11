package servlet;

import com.alibaba.fastjson.JSON;
import service.Jiekou;
import serviceImpl.JieKouShiXian;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by ttc on 18-1-3.
 */
@WebServlet("/ServletJiuDian1")
public class ServletJiuDian1 extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String id1 = request.getParameter("name");

        int id = Integer.parseInt(id1);

        Jiekou jiekou = new JieKouShiXian();

        List l = new ArrayList();

        l = jiekou.selectJiuDian(id);

        String jsonstr = JSON.toJSONString(l);

        response.getWriter().write(jsonstr);


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
