

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/viewproduct")
public class ViewProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public ViewProduct() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		long pid=Long.parseLong(request.getParameter("pid"));
		Product selectedProduct= new Product();
		List<Product> product= new ArrayList<Product>();
		HttpSession session=request.getSession();
	
		
		product=(ArrayList)session.getAttribute("products");
		if(product!=null) {
			for(Product P: product)
			{
					if(P.getProductID()==pid)
					{
						selectedProduct.setProductID(P.productID);
						selectedProduct.setProductName(P.productName);
						selectedProduct.setProductPrice(P.productPrice);
					}
			}
		}
		request.setAttribute("selected",selectedProduct);
		
		
		request.getRequestDispatcher("ProductProfile.jsp").forward(request, response);
	}

	

}
