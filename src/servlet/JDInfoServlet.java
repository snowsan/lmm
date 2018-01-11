package servlet;

import com.alibaba.fastjson.JSON;
import pojo.JDTYPE;
import pojo.JingDianInfo;
import service.JDTypeService;
import service.JingDianService;
import serviceImpl.JDTYPEImpl;
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
@WebServlet(name = "JDInfoServlet", urlPatterns = "/JDInfoServlet")
public class JDInfoServlet extends HttpServlet
{
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        String jd_id = request.getParameter("jd_id");

        //����jd_id��ѯ������Ϣ����תҳ��

        JingDianService jingDianService = new JingDianServiceImpl();
        List<JingDianInfo> list = jingDianService.loadJingDianInfo(jd_id);

        HttpSession session = request.getSession();
        if (list.size() != 0)
        {
            session.setAttribute("jingdianinfo", list);
            response.sendRedirect("/page/jd_info.jsp");
        } else
        {
            session.setAttribute("message", "������ϸ��Ϣ");
            response.sendRedirect("/page/jingdian.jsp");
        }
     /*   HttpSession session = request.getSession();
        session.setAttribute("city_name",city_name);
        JDTypeService jdTypeService = new JDTYPEImpl();
        List<JDTYPE> list = jdTypeService.selectJDTYPE(city_name);

        //�����صļ���ת����JSON��ʽ���ַ���
        String listStr = JSON.toJSONString(list);

        response.getWriter().write(listStr);*/
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        doPost(request, response);
    }
}
