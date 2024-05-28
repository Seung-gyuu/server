/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import models.User;

/**
 *
 * @author Hussein
 */
public class Service1 extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        HttpSession session = request.getSession(false);
         if (request.getParameter("translate") != null) {
            String language = request.getParameter("translate");
            //utility.setcookie(lan)
            utilities.GetLanguageCookie.setLanguageCookie(request,response,language);
            if(language.equals("kr")){
                response.sendRedirect("/kr/service1");
            }
            else{
                response.sendRedirect("/en/service1");
            }
            return;
        }
            
        String logout = request.getParameter("logout");
    if (logout != null) {
        if (session != null) {
            session.invalidate();
        }
        response.sendRedirect("service1");
        return;
    }
        
        
        String language = utilities.GetLanguageCookie.getLanguageCookie(request,response);
    if (language == null) {
        response.sendRedirect("/welcome");
    } else {
        session = request.getSession(true); // Create a new session
        session.setAttribute("language", language);
        if (language.equals("kr")) {
            getServletContext().getRequestDispatcher("/WEB-INF/kr/s1_accupuncture.jsp").forward(request, response);
        } else if (language.equals("en")) {
            getServletContext().getRequestDispatcher("/WEB-INF/en/s1_accupuncture.jsp").forward(request, response);
        }
    }
        
        

          //getServletContext().getRequestDispatcher("/WEB-INF/s1_accupuncture.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

   

}
