package com.example.demo3;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Calendar;
import java.util.List;
import java.util.logging.Logger;

public class AreaCheckServlet {
    private Double x;
    private Double y;
    private Double r;
    private List<Double> rangeX = Arrays.asList(-2.0, -1.5, -1.0, -0.5, 0.0, 0.5, 1.0, 1.5, 2.0);
    private Boolean out = false;
    private Boolean inputValid = false;
    private HttpServletResponse response;

    public AreaCheckServlet(Double x, Double y, Double r, HttpServletResponse response) {
        this.x = x;
        this.y = y;
        this.r = r;
        this.response = response;
    }
    static Logger logger = Logger.getLogger(AreaCheckServlet.class.getName());

    public boolean validateY() {
        if (y < -5 || y > 3) {
            return false;
        } else
            return true;
    }

    public boolean validateX() {
        if (x == -2 || x == -1.5 || x == -1 || x == -0.5 || x == 0 || x == 0.5 || x == 1 || x == 1.5 || x == 2) {
            return true;
        }
        return false;
    }

    public void checkX() {
        if (((x * x + y * y) <= r * r && x <= 0 && y >= 0) ||
                (y + x <= r && x >= 0 && y <= 0) ||
                (y / 2 >= (x - r / 2) && x >= 0 && y >= 0)) {
            out = true;
        }
    }


    public Result outHtml(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        long startTime = System.nanoTime();
        if  (validateY() && validateX()) {
            inputValid = true;
        }
        checkX();
//        request.setAttribute("x", x);
//        request.setAttribute("y", y);
//        request.setAttribute("r", r);
//
//        request.getServletContext().getRequestDispatcher("/Result.jsp").forward(request, response);
        if (inputValid) {
            SimpleDateFormat dateFormat = new SimpleDateFormat("hh:mm:ss");
            Calendar calendar = Calendar.getInstance();
            String currTime = dateFormat.format(calendar.getTime());
            String execTime = String.valueOf((double) (System.nanoTime() - startTime) / (double) 1000000);
            return new Result(x, y, r, currTime, execTime, out);
        } else {
            request.getRequestDispatcher("/index.jsp").forward(request, response);
        }
        return null;
    }

}

