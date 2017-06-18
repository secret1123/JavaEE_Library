package demo.util;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by AnLu on
 * 2017/6/16 09:33.
 * JavaEE_Library
 */
public class Error {
    public static void showError(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException{
        request.setAttribute("message","Error");
        response.sendRedirect("default.jsp");
    }
}
