package servlet;

import com.alibaba.fastjson.JSON;
import pojo.JingDianInfo;
import service.JingDianService;
import serviceImpl.JingDianServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
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
@WebServlet(name = "insertJingDianServlet", urlPatterns = "/insertJingDianServlet")
@MultipartConfig
public class insertJingDianServlet extends HttpServlet
{
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
       //获取表单参数
        String jd_name = request.getParameter("jd_name");
        System.out.println("景点名称："+jd_name);
        String jd_price = request.getParameter("jd_price");
        System.out.println("景点价格："+jd_price);
        String jd_address = request.getParameter("jd_address");
        System.out.println("景点地址："+jd_address);
        String jd_type = request.getParameter("jd_type");
        System.out.println("景点类型："+jd_type);
        String jd_rank = request.getParameter("jd_rank");
        System.out.println("景点等级："+jd_rank);
        String jd_date = request.getParameter("jd_date");
        System.out.println("景点日期："+jd_date);
        String jd_introduction = request.getParameter("jd_introduction");
        System.out.println("景点介绍："+jd_introduction);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        doPost(request, response);
    }
}
