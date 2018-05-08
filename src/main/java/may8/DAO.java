package may8;

import javax.naming.*;
import javax.sql.*;
import java.sql.*;

public abstract class DAO{
	/**
	 * @return 1. success : return connection.<br>
	 * 2. fail : null.
	 */
	protected Connection getConnection(String oracleAccount){
		try {
			Context init = new InitialContext();
			DataSource source;
			source = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
			Connection conn = source.getConnection();
			return conn;
		} catch (NamingException e) {
			e.printStackTrace();
			return null;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
}
