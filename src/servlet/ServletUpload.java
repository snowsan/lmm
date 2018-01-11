package servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.File;
import java.io.IOException;

/**
 * Created by ttc on 18-1-9.
 */
@WebServlet("/ServletUpload")
@MultipartConfig

public class ServletUpload extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        Part part = request.getPart("file");
        String filename = part.getSubmittedFileName();
        String filepath = request.getServletContext().getRealPath("images");
        String filepath1 = filepath + File.separator + filename;
        part.write(filepath1);
        response.getWriter().write("/images/" + filename);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
