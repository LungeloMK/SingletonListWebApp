
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.model.bl.SingletonListSB;
import za.ac.tut.model.bl.SingletonListSBLocal;


public class GetSizeServlet extends HttpServlet {
@EJB SingletonListSBLocal sls;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Integer size = sls.getSize();
        
        request.setAttribute("size", size);
        
        RequestDispatcher disp = request.getRequestDispatcher("get_size_outcome.jsp");
        disp.forward(request, response);
    }

    

}
