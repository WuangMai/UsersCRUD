package pl.coderslab.users;

import pl.coderslab.utils.DbUtil;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/userDelete")
public class UserDelete extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            DbUtil.getConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        UserDAO ud = new UserDAO();
        request.setAttribute("user", ud.read(Integer.parseInt(request.getParameter("id"))));
        getServletContext().getRequestDispatcher("/users/delete.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        UserDAO ud = new UserDAO();
        ud.delete(Integer.parseInt(request.getParameter("id")));
        response.sendRedirect("/user/list");

    }
}
