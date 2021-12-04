package practice;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class AdminProductDao {

	ConnectionImplementer cni = new ConnectionImplementer();
	
	public String addProduct(Product P)
	{
		cni.loadDriver(ConnectionProvider.dbdriver);
		Connection con = cni.getConnection();
		
		String result = "SUCCESS";
		String sql = "INSERT INTO public.products(product_type, product_brand, product_model, product_ram_cpu_gpu_speed, product_cpu_cores, product_mb_socket, product_info, product_mb_gpu_chipset, product_mb_slot, product_ram_gpu_size, product_ram_gpu_type, product_hdd_rpm, product_hdd_gpu_interface, product_psu_watts, product_psu_efficiency)  VALUES ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";
		
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1,P.getProduct_type());
			ps.setString(2, P.getProduct_brand());
			ps.setString(3, P.getProduct_model());
			ps.setString(4,P.getProduct_speed() );
			ps.setInt(5,P.getProduct_cores() );
			ps.setString(6,P.getProduct_info() );
			ps.setString(7,P.getProduct_ram_gpu_type() );
			ps.setString(8,P.getProduct_hdd_gpu_interface() );
			ps.setString(9,P.getProduct_psu_efficiency() );
			

			ps.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			result = "FAIL";
		}
		return result;
	}
}
