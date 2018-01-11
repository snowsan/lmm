package servlet;

import com.alibaba.fastjson.JSON;
import service.Jiekou;
import pojo.DingFang;
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
 * Created by ttc on 18-1-6.
 */
@WebServlet("/ServletJiuDianDingDan")
public class ServletJiuDianDingDan extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String name = request.getParameter("name");

        Jiekou j = new JieKouShiXian();

        List<DingFang> li=new ArrayList<>();

        li = j.selectphone(name);

        String jsonstr = JSON.toJSONString(li);

        response.getWriter().write(jsonstr);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
