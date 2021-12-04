

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class TestData
 */
@WebServlet("/TestData")
public class TestData extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TestData() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String option= request.getParameter("id");
		
		int num= Integer.parseInt(option);
		Product[] products = new Product[num];
		
	   String[] ptypes= {"cpu","gpu","ram","psu","mb","hdd","ssd"};
		int index=0;
		
		System.out.println("yes it gets executed");
		for(int i=0;i<num;i++)
		{
			Product P= new Product();
			P.setPtype(ptypes[i]);
			P.setProductName(ptypes[i]+"-m101");
			P.setProductPrice(12000);
			products[index] = P;
			index++;	
			
		}
		
		HttpSession session=request.getSession();
		session.setAttribute("products", products);
		request.getRequestDispatcher("Build.jsp").forward(request, response);
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
