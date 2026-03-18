
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import za.ac.tut.model.bl.SingletonListSB;
import za.ac.tut.model.bl.SingletonListSBLocal;

public class AddServlet extends HttpServlet {
@EJB SingletonListSBLocal sls;


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        int num = Integer.parseInt(request.getParameter("num"));
        sls.add(num);
        
        request.setAttribute("num", num);
        
        RequestDispatcher disp = request.getRequestDispatcher("add_outcome.jsp");
        disp.forward(request, response);
        
        
        
    }

    

}
