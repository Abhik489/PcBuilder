
import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;


	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		//response.sendRedirect("/login.jsp");
		
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String email = request.getParameter("email");
		String password = request.getParameter("password");

		User user = new User("tempuser", email, password);

		LoginDAO ld = new LoginDAO();
		System.out.println("LoginDAO connected!");
		String userValidate;
		try {
			userValidate = ld.AuthenticateUser(user);

			if (userValidate.equals("SUCCESS")) {
				response.getWriter().print(userValidate);
				
				HttpSession session=request.getSession();
				session.setAttribute("uname", email);
			    session.setAttribute("pass", password);
			    session.setMaxInactiveInterval(30*60);
				
				request.getRequestDispatcher("/home.jsp").forward(request, response);
			} else {
				response.getWriter().print(userValidate);
				request.getRequestDispatcher("/login.jsp").forward(request, response);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		doGet(request, response);
	}

}
