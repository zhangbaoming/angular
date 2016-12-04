package com.pusimedia.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by zhangbaoming on 16/11/28.
 */
public class RedirectServlet extends Dispatcher {

    public void redirectTo(HttpServletRequest req, HttpServletResponse resp) {
        String pageURL = req.getParameter("pageURL");
        System.out.println("pageURL = " + pageURL);
        try {
            req.getRequestDispatcher("/WEB-INF/html/" + pageURL).forward(req, resp);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
