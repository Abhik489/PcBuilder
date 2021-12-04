import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public interface ConnectionProvider {

	String dburl = "jdbc:postgresql://localhost:5432/recommendationsystem";
	String dbuser = "postgres";
	String dbpassword = "1234";
	String dbdriver = "org.postgresql.Driver";

	public void loadDriver(String dbdriver);
	public Connection getConnection();
}
