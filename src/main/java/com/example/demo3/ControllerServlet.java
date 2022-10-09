package com.example.demo3;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class ControllerServlet extends HttpServlet {
    private String message;
    private static final String DEFAULT_NAME = "World";

    public void init() {
        message = "Hello World!";
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html");
        generateResponse(request, response);
    }

    public void generateResponse(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        Double x = Double.valueOf(request.getParameter("x"));
        Double y = Double.valueOf(request.getParameter("y"));
        Integer r = Integer.valueOf(request.getParameter("r"));

        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        AreaCheckServlet areaCheckServlet = new AreaCheckServlet(x, y, r, response);
        areaCheckServlet.outHtml(request, response);

//        if (areaCheckServlet.validateX() && areaCheckServlet.validateY()) {
//            out.println(x);
//            out.println(y);
//            out.println(r);
//        }

        out.close();
    }

    public void destroy() {
    }
}