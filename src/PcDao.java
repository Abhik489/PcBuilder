import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class PcDao {

	
	
	public List<Product> reccomendProducts(Product P)
	{
		ConnectionImplementer cni = new ConnectionImplementer();
		cni.loadDriver(ConnectionProvider.dbdriver);
		Connection con = cni.getConnection();
		
		
		//String sql="INSERT INTO public.product(pbrand, price) VALUES (?,?)";
		String sql=" SELECT * FROM public. product   WHERE  price<=?";
		List<Product> Pro= new ArrayList<Product>();
		
		try
		{
		PreparedStatement st= con.prepareStatement(sql);
		st.setLong(1,P.getProductPrice());
		//st.setString(1,P.getProductName());
		//st.setLong(2,P.getProductPrice());
		
		
		
		ResultSet rs= st.executeQuery();
		
			while (rs.next())
			{
				Product myPro= new Product();
				
				int pid = rs.getInt("pid"); // fetch the values present in database
				String name = rs.getString("pbrand");
				long price= rs.getLong("price");
				
				myPro.setProductID(pid);
				myPro.setProductName(name);
				myPro.setProductPrice(price);
				
				Pro.add(myPro);
	
				System.out.println(pid+" "+name+" "+price);
			}
		}
		 catch (SQLException e)
		 {
			 e.printStackTrace();
		 }
		return Pro;
	 }
}
