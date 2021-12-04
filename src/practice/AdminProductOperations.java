package practice;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ProductOperation")
public class AdminProductOperations extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public AdminProductOperations() { super();}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		response.getWriter().append("Served at: here testing").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	        	// Check if request from Admin,-needs to be added, idont know what logic u have so take care of it.
				String option= request.getParameter("option");
				//using front -controller bcz add,view ,delete can be handled in this one only.
			
				 
				if(option.equalsIgnoreCase("add"))
				{
					String ptype=request.getParameter("ptype");
                    String brand=request.getParameter("brand");
                    String mname=request.getParameter("mname");
                    String speed=request.getParameter("speed");
                    int cores=Integer.parseInt(request.getParameter("cores"));
                    String info=request.getParameter("info");
                    String pgtype=request.getParameter("pgtype");
                    String interfac=request.getParameter("interface");
                    String efficiecy=request.getParameter("efficiency");
					
                    Product P= new Product();
                    P.setProduct_type(ptype);
                    P.setProduct_brand(brand);
                    P.setProduct_model(mname);
                    P.setProduct_speed(speed);
                    P.setProduct_cores(cores);
                    P.setProduct_info(info);
                    P.setProduct_ram_gpu_type(pgtype);
                    P.setProduct_hdd_gpu_interface(interfac);
                    P.setProduct_psu_efficiency(efficiecy);
                    
                    AdminProductDao adp= new AdminProductDao();
                    System.out.println("AdminProductDao connected!");
                    
                    
                    try {
                    	adp.addProduct(P);
                    }
                    catch (Exception e) {
            			// TODO Auto-generated catch block
            			e.printStackTrace();
            		}
                    
					
				 }
			
		doGet(request, response);
	}

}
