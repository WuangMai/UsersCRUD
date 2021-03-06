package pl.coderslab.users;

import pl.coderslab.utils.DbUtil;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/userAdd")
public class UserAdd extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/users/add.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        User user = new User();
        user.setEmail(request.getParameter("email"));
        user.setUserName(request.getParameter("username"));
        user.setPassword(request.getParameter("password"));

        try {
            DbUtil.getConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        UserDAO ud = new UserDAO();
        ud.create(user);

        getServletContext().getRequestDispatcher("/users/add.jsp").forward(request, response);

//        System.out.println(email + username + password);
    }
}