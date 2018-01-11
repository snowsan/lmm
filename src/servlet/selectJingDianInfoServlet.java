package servlet;

import com.alibaba.fastjson.JSON;
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

/**
 * Created by ttc on 17-12-29.
 */
@WebServlet(name = "selectJingDianInfoServlet", urlPatterns = "/selectJingDianInfoServlet")
public class selectJingDianInfoServlet extends HttpServlet
{
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        //��ѯ���о�������
        JingDianService jingDianService = new JingDianServiceImpl();
        List<JingDianInfo> list = jingDianService.selectJingDianInfo();

        //������ת���Json�ַ���
        if(list.size() != 0){
            String listJson = JSON.toJSONString(list);
            //��Json���ص�ҳ��
            response.getWriter().write(listJson);
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        doPost(request, response);
    }
}
