package servlet;

import com.alibaba.fastjson.JSON;
import pojo.JDTYPE;
import service.JDTypeService;
import serviceImpl.JDTYPEImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

/**
 * Created by ttc on 17-12-29.
 */
@WebServlet(name = "JDTypeServlet", urlPatterns = "/JDTypeServlet")
public class JDTypeServlet extends HttpServlet
{
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        String city_name = request.getParameter("city_name");
        HttpSession session = request.getSession();
        session.setAttribute("city_name",city_name);
        JDTypeService jdTypeService = new JDTYPEImpl();
        List<JDTYPE> list = jdTypeService.selectJDTYPE(city_name);

        //将返回的集合转换成JSON格式的字符串
        String listStr = JSON.toJSONString(list);

        response.getWriter().write(listStr);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        doPost(request, response);
    }
}
