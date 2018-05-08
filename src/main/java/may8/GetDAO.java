package may8;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class GetDAO extends DAO {
	protected ResultSet getResultSet(String query) {
		try {
			Connection conn = getConnection("");
			Statement stmt = conn.createStatement();
			return stmt.executeQuery(query);
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
	public List<Member> getMember() {
		ArrayList<Member> members = new ArrayList<>();
		ResultSet rs = getResultSet("");
		try {
			while(rs.next()) {
				Member m = new Member();
				m.setName(rs.getString("name"));
				members.add(m);
			}
			return members;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
}