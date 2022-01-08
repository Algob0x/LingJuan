package fr.lingjuan.mvc.controller;

import fr.lingjuan.mvc.bean.RegisterMBean;
import fr.lingjuan.mvc.dao.RegisterMDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.DriverManager;

public class RegisterMServlet extends HttpServlet {

    public RegisterMServlet() {
        DriverManager.getDrivers();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String fullName = request.getParameter("fullname");
        String email = request.getParameter("email");
        String userName = request.getParameter("username");
        String password = request.getParameter("password");
        String role = request.getParameter("role");

        RegisterMBean registerMBean = new RegisterMBean();
        registerMBean.setFullName(fullName);
        registerMBean.setEmail(email);
        registerMBean.setUserName(userName);
        registerMBean.setPassword(password);
        registerMBean.setRole(role);

        RegisterMDao registerMDao = new RegisterMDao();
        String userRegistered = registerMDao.registerUser(registerMBean);

        if(userRegistered.equals("Connexion réussie"))
        {
            request.getRequestDispatcher("/Homem.jsp").forward(request, response);
        }
        else
        {
            request.setAttribute("errMessage", userRegistered);
            request.getRequestDispatcher("/Register.jsp").forward(request, response);
        }
    }
}
