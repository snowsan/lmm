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
    //��ѯ���о�����Ϣ
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        //����Ҫ����ֱ�Ӳ�ѯ���о�����Ϣ
        JingDianService jingDianService = new JingDianServiceImpl();
        List<JingDianInfo> selectJingDianInfoList = jingDianService.selectJingDianInfo();
        //����ѯ�������ݷ���session��
        HttpSession session = request.getSession();
        session.setAttribute("selectJingDianInfoList", selectJingDianInfoList);
        //��תҳ�浽editJingDianinfo
        response.sendRedirect("/page/editjingdian.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        doPost(request, response);
    }
}

