
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.model.bl.SingletonListSB;
import za.ac.tut.model.bl.SingletonListSBLocal;

public class ViewServlet extends HttpServlet {
@EJB SingletonListSBLocal sls;

@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<Integer> list = sls.getList();
        
        request.setAttribute("list", list);
        
        RequestDispatcher disp = request.getRequestDispatcher("get_list_outcome.jsp");
        disp.forward(request, response);
        
        
    }

   

}
