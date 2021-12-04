

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



@WebServlet("/Build")
public class PcBuilder extends HttpServlet {
	private static final long serialVersionUID = 1L;

    

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		//String pname = request.getParameter("brandname");
		//long price = (long) Double.parseDouble(request.getParameter("price"));
		String price = request.getParameter("price");
		System.out.println("price taken"+price);
		Product myChoice= new Product();
		
		//myChoice.setProductName(pname);
		myChoice.setProductPrice(price);
		
		PcDao myPc= new PcDao();
		
		List<Product> products= new ArrayList<Product>();
		products=myPc.reccomendProducts(myChoice);
        
		//request.setAttribute("products", products);
		HttpSession session=request.getSession();
		session.setAttribute("products", products);
		request.getRequestDispatcher("searchresult.jsp").forward(request, response);

		doGet(request, response);
	}

}
