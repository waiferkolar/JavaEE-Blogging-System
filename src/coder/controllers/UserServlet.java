package coder.controllers;

import coder.Impls.UserImpl;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

@WebServlet(name = "UserServlet")
public class UserServlet extends HttpServlet {

    DataSource ds;

    @Override
    public void init() throws ServletException {
        InitialContext context = null;

        try {
            context = new InitialContext();
            Context env = (Context) context.lookup("java:comp/env");
            ds = (DataSource) env.lookup("jdbc/TestDB");
        } catch (NamingException e) {
            e.printStackTrace();
        }

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        UserImpl impl = new UserImpl();

        Connection con = null;
        String msg = "";
        boolean success = false;
        try {
            con = ds.getConnection();
            boolean bol = impl.checkEmailInUse(con, email);
            if (!bol) {
                boolean ok = impl.insertUser(con, username, email, password);
                if (ok) {
                    success = true;
                    msg = "Register Successful";
                } else {
                    msg = "User Registration Fail";
                }
            } else {
                msg = "Email is in use!";
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        request.setAttribute("msg", msg);

        if (success) {
            request.getRequestDispatcher("/admin_home.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("/register.jsp").forward(request, response);
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
