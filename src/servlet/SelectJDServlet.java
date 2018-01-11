package servlet;


import pojo.JingDianInfo;
import service.JingDianService;
import serviceImpl.JingDianServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "SelectJDServlet", urlPatterns = "/SelectJDServlet")
public class SelectJDServlet extends HttpServlet
{
    //查询所有景点信息
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        //不需要参数直接查询所有景点信息
        JingDianService jingDianService = new JingDianServiceImpl();
        List<JingDianInfo> selectJingDianInfoList = jingDianService.selectJingDianInfo();
        //将查询到的数据放入session中
        HttpSession session = request.getSession();
        session.setAttribute("selectJingDianInfoList", selectJingDianInfoList);
        //跳转页面到editJingDianinfo
        response.sendRedirect("/page/editjingdian.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        doPost(request, response);
    }
}

