package fr.lingjuan.mvc.controller;

import fr.lingjuan.mvc.bean.RegisterBean;
import fr.lingjuan.mvc.dao.RegisterDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.DriverManager;

public class RegisterServlet extends HttpServlet {

    public RegisterServlet() {
        DriverManager.getDrivers();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String fullName = request.getParameter("fullname");
        String email = request.getParameter("email");
        String userName = request.getParameter("username");
        String password = request.getParameter("password");

        RegisterBean registerBean = new RegisterBean();
        registerBean.setFullName(fullName);
        registerBean.setEmail(email);
        registerBean.setUserName(userName);
        registerBean.setPassword(password);

        RegisterDao registerDao = new RegisterDao();
        String userRegistered = registerDao.registerUser(registerBean);

        if(userRegistered.equals("Connection réussie"))
        {
            request.getRequestDispatcher("/Home.jsp").forward(request, response);
        }
        else
        {
            request.setAttribute("errMessage", userRegistered);
            request.getRequestDispatcher("/Register.jsp").forward(request, response);
        }
    }
}
