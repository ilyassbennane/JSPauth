package ma.projet.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import ma.projet.service.UserService;
@WebServlet(name = "ResetPassword", urlPatterns = {"/ResetPassword"})
public class ResetPassword extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String newPassword = request.getParameter("newPassword");
        String confirmPassword = request.getParameter("confirmPassword");

        if (newPassword.equals(confirmPassword)) {
            HttpSession session = request.getSession();
            String userEmail = (String) session.getAttribute("email");

            if (userEmail != null) {
                UserService userService = new UserService();

                boolean passwordUpdateSuccess = userService.resetPassword(userEmail, newPassword);

                if (passwordUpdateSuccess) {
                    response.sendRedirect("auth.jsp");
                    return;
                } else {
                    session.setAttribute("msg", "Password reset failed. Please try again.");
                }
            } else {
                session.setAttribute("msg", "Invalid request");
            }
        } else {
            HttpSession session = request.getSession();
            session.setAttribute("msg", "Passwords do not match");
        }

        response.sendRedirect("resetPassword.jsp");
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
        return "Reset Password Servlet";
    }
}
