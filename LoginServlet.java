
package ServleteAndDAO;

import java.io.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

/**
 *
 * @author Admin
 */
public class LoginServlet extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
            String username=request.getParameter("eou");
            String pass=request.getParameter("pwd");   
//            out.println("User Name  " + username);
//            out.println("<br>Password  " + pass);
            DAOLogin daologin=new DAOLogin();
            Login log=new Login(username, pass);
            boolean flag=daologin.verfyRecords(log);
            String reason=null;
            HttpSession s=null;
            if(flag == true)
            {
                reason="Successfully Login";
                s=request.getSession(true);
                s.setAttribute("status", reason);
                s.setAttribute("username" , username);
                RequestDispatcher rd=request.getRequestDispatcher("homepage.jsp");
                rd.include(request, response);
                
            }
            else if(flag == false)
            {
                reason="Login Failed";
                s=request.getSession(true);
                s.setAttribute("status", reason);
                //s.setAttribute("username", username);
                response.sendRedirect("login.jsp");
                //RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
                //rd.forward(request, response);
            }
            
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
