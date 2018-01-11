package servlet;

import service.Jiekou;
import serviceImpl.JieKouShiXian;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet("/ServletDingFang")
@MultipartConfig
public class ServletDingFang extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Jiekou j = new JieKouShiXian();
        String startdate = request.getParameter("startdate");
        String enddate = request.getParameter("enddate");
        String name = request.getParameter("name");
        String number1 = request.getParameter("number1");
        String phone = request.getParameter("phone");
        String price = request.getParameter("price");
        String jiudian = request.getParameter("jiudian");


//        计算两个日期相差多少天
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd");

        Date d1 = null;
        Date d2 = null;

        try {
            d1 = sdf.parse(enddate);
            d2 = sdf.parse(startdate);

        } catch (ParseException e) {
            e.printStackTrace();
        }
        long day = (d1.getTime() - d2.getTime()) / (1000 * 60 * 60 * 24);
        int a = Integer.parseInt(number1);
        int b = Integer.parseInt(price);
//            计算价钱
        long c = day * a * b;
        if (j.insert(name, phone, c, a, startdate, enddate, jiudian)) {

            response.getWriter().write("预订成功！总价格是" + c + "元");
        } else {
            response.getWriter().write("预订失败！");
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
