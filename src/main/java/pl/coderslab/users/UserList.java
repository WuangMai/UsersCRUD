package pl.coderslab.users;

import pl.coderslab.utils.DbUtil;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.List;

@WebServlet("/user/list")
public class UserList extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserDAO userDAO = new UserDAO();
        request.setAttribute("userTab", userTab());


        getServletContext().getRequestDispatcher("/users/list.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("userTab", userTab());
        getServletContext().getRequestDispatcher("/users/list.jsp").forward(request, response);
    }

    User[] userTab() {
        try {
            Connection conn = DbUtil.getConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        UserDAO ud = new UserDAO();
//        User[] result = ud.findAll();
//        List<User>userList = Arrays.asList(ud.findAll());
//        userList.subList(userList.size()-10,userList.size());
        return ud.findAll();
    }
}
