import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDao {
	ConnectionImplementer cni = new ConnectionImplementer();

	
	//--------update user info--------------------------------
	public String update(User newinfo, User oldinfo) {
		
		cni.loadDriver(ConnectionProvider.dbdriver);
		Connection con = cni.getConnection();
		
		// need old data of user
		String sql="SELECT  * FROM public.users WHERE  username=?";
	
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			
			ps.setString(1, oldinfo.getUsername());
			
	    	ResultSet result = ps.executeQuery();
	    	
			while(result.next())
			{
				
				if(newinfo.getUsername()==null) { newinfo.setUsername(result.getString("username"));}
				if(newinfo.getEmail()==null) { newinfo.setEmail(result.getString("email"));}
				if(newinfo.getPassword()==null) { newinfo.setPassword(result.getString("username"));}
			}
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		
		String status="success";
		sql= "UPDATE public.users SET email=?, password=?,username=? WHERE username=?";
		
		
		try
		{
			PreparedStatement ss = con.prepareStatement(sql);
			ss.setString(1, newinfo.getEmail());
			ss.setString(2, newinfo.getUsername());
			ss.setString(3, newinfo.getPassword());
			ss.setString(4, oldinfo.getUsername());
			
			int result = ss.executeUpdate(sql);
			if(result!=0) return status; 
		}
		
		catch(SQLException e)
		{
			return "fail";
		}
		
		return "fail";
	}
//-------------------------------------------------------------------------
}
