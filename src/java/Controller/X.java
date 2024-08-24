package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modal.User;

/**
 *
 * @author upekhansaja
 */
public class X extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        ArrayList<User> userList = new ArrayList<User>();
        userList.add(new User("Upek", "0781234567", "Sri Lanka"));
        userList.add(new User("Chanthuli", "0771234567", "Sri Lanka"));
        userList.add(new User("Mudith", "0711234567", "Australia"));

        req.getSession().setAttribute("userList", userList);
        resp.sendRedirect("A.jsp");

    }

}
