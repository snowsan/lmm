package servlet;

import pojo.JingDianInfo;
import service.JingDianService;
import service.ZhiFuService;
import serviceImpl.JingDianServiceImpl;
import serviceImpl.ZhiFuServiceImpl;
import util.DButil;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Date;
import java.util.List;

/**
 * Created by ttc on 17-12-29.
 */
@WebServlet(name = "ZhiFuServlet", urlPatterns = "/ZhiFuServlet")
@MultipartConfig
public class ZhiFuServlet extends HttpServlet
{
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        String mp_id = DButil.getUuid();

        String username = "z3";

        String mp_qpname = request.getParameter("qupiaoname");

        String mp_sfz = request.getParameter("shenfenzheng");

        String mp_count = request.getParameter("count");

        String mp_date = request.getParameter("date");

        String mp_qpphone = request.getParameter("phonenumber");

        int mp_status = 1;

        HttpSession session = request.getSession();
        List<JingDianInfo> list = (List) session.getAttribute("jingdianinfo");
        String jd_id = list.get(0).getJd_id();

        ZhiFuService zhiFuService = new ZhiFuServiceImpl();
        int count = zhiFuService.insertMENPIAO_JINGDIAN(mp_id, username, mp_qpname, mp_sfz, mp_count, mp_date, mp_qpphone, mp_status, jd_id);

        if (count != 0)
        {
            response.getWriter().write("订购成功");
        } else
        {
            response.getWriter().write("订购失败");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        doPost(request, response);
    }
}
