package demo.servlet;

import demo.util.Error;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by AnLu on
 * 2017/6/16 09:17.
 * JavaEE_Library
 */
    @WebServlet(urlPatterns = "/book")
    public class BookAction extends HttpServlet {
        @Override
        protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            String action = req.getParameter("action");

            if ("add".equals(action)) {
                add(req,resp);
                return;
            }

            if ("queryAll".equals(action)) {
                queryAll(req,resp);
                return;
            }

            if ("queryById".equals(action)) {
                queryById(req,resp);
                return;
            }

            if ("remove".equals(action)) {
                remove(req,resp);
                return;
            }

            if ("modify".equals(action)) {
                modify(req,resp);
                return;
            }

            if ("query".equals(action)) {
                query(req,resp);
                return;
            }

            Error.showError(req,resp);

        }

        private void add(HttpServletRequest req, HttpServletResponse resp) {
        }

        private void queryAll(HttpServletRequest req, HttpServletResponse resp) {
        }

        private void queryById(HttpServletRequest req, HttpServletResponse resp) {
        }

        private void remove(HttpServletRequest req, HttpServletResponse resp) {
        }

        private void modify(HttpServletRequest req, HttpServletResponse resp) {
        }

        private void query(HttpServletRequest req, HttpServletResponse resp) {
        }







        @Override
        protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        }
    }
