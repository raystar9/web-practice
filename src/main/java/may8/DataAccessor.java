package may8;

import javax.naming.*;
import javax.sql.*;
import java.sql.*;

public abstract class DataAccessor{
	protected Connection _connection;
	
	protected void openConnection(String oracleAccount) throws NamingException, SQLException{
		Context init = new InitialContext();
		DataSource source;
		source = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
		_connection = source.getConnection();
	}
	
	protected void closeConnection() throws SQLException{
		_connection.close();
	}
}
