

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/editProfile")
public class UserServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
    public UserServlet() { super();}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		
		// option for edit details or change password
		String option= request.getParameter("editOption");
		
		
		// newinfo is new info taken from form
		User newinfo = new User();
		newinfo.setUsername(null);
		newinfo.setEmail(null);
		newinfo.setPassword(null);
		
		
		// old info is current user info needed for updation
		User oldinfo= new User();
		
		HttpSession session=request.getSession();
		String olduserName=(String)session.getAttribute("uname");
		oldinfo.setUsername(olduserName);
		
		if(option.equalsIgnoreCase("editDetails"))
		{
			System.out.println("editDetalis is choosen");
			String user= request.getParameter("username");
			String email= request.getParameter("email");
			
			newinfo.setUsername(user);
			newinfo.setEmail(email);
			
		}
		
		if(option.equalsIgnoreCase("editPassword"))
		{
			System.out.println("editPassword is choosen");
			String newPassword= request.getParameter("newpassword");
			newinfo.setPassword(newPassword);
		}
		
		System.out.println("Connecting to UserDao...");
		UserDao udao= new UserDao();
		System.out.println("Connected to UserDao...");
		
		try
		{
			System.out.println("Updating user info...");
			String result= udao.update(newinfo,oldinfo);
			
			if(result.equalsIgnoreCase("success"))
			{
				System.out.println("user updated successfully");
			}
			else
			{
				System.out.println("user update failed");
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		request.getRequestDispatcher("/profile.jsp").forward(request, response);
		doGet(request, response);
	}

}
