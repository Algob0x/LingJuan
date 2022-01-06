package fr.lingjuan.mvc.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

public class LogoutServlet extends HttpServlet
{
    private static final long serialVersionUID = 1L;
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        HttpSession session = request.getSession(false); //On récupère la session

        if(session!=null)
        {
            session.invalidate(); //On reset tout ce qui est en rapport avec la session en cours
            request.setAttribute("errMessage", "Vous vous êtes déconnecté avec succès");
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("/Login.jsp");
            requestDispatcher.forward(request, response);
            System.out.println("Logged out");
        }
    }
}
