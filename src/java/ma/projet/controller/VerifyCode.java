package ma.projet.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "VerifyCode", urlPatterns = {"/VerifyCode"})
public class VerifyCode extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String enteredCode = request.getParameter("verificationCode");
        HttpSession session = request.getSession();
        String storedCode = (String) session.getAttribute("verificationCode");

        if (enteredCode != null && enteredCode.equals(storedCode)) {
            response.sendRedirect("resetPassword.jsp");
        } else {
            request.setAttribute("msg", "Incorrect Code");
            request.getRequestDispatcher("verifyCode.jsp").forward(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Verification Code Servlet";
    }
}
