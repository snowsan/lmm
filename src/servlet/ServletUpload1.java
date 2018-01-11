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

/**
 * Created by ttc on 18-1-9.
 */
@WebServlet("/ServletUpload1")
@MultipartConfig

public class ServletUpload1 extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String address = request.getParameter("province");
        String address1 = request.getParameter("city");
        String phone = request.getParameter("phone");
        String job = request.getParameter("job");
        String jianjie = request.getParameter("jianjie");
        String email = request.getParameter("email");
        Jiekou j = new JieKouShiXian();
        System.out.println(phone);
       if( j.insertUserAll(address, address1, email, job, jianjie, phone)){
           response.getWriter().write("保存成功");
       }else{
           response.getWriter().write("保存失败");
       }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);

    }
}
