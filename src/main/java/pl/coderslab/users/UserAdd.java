package pl.coderslab.users;

import pl.coderslab.utils.DbUtil;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.Arrays;

@WebServlet("/userAdd")
public class UserAdd extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/users/add.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        String[] action = request.getParameterValues("action");
        UserDAO ud = new UserDAO();

        try {
            DbUtil.getConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        if (action[0].equals("back")) {
            response.sendRedirect("/user/list");
        } else if (action[0].equals("add")) {
            User user = new User(request.getParameter("username"), request.getParameter("email"), request.getParameter("password"));
            ud.create(user);

            getServletContext().getRequestDispatcher("/users/add.jsp").forward(request, response);
        }

    }
}
