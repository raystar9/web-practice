package may8;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.naming.NamingException;

import may9.Post;

public class DataGetter extends DataAccessor{
    protected ResultSet getResultSet(String query) throws NamingException, SQLException{
		openConnection("");
		Statement stmt = _connection.createStatement();
		return stmt.executeQuery(query);
	}
	public List<Member> getMember() throws NamingException, SQLException{
		ArrayList<Member> members = new ArrayList<>();
		ResultSet rs = getResultSet("");

		while(rs.next()) {
			Member m = new Member();
			m.setName(rs.getString("name"));
			members.add(m);
		}
		closeConnection();
		return members;
	}

	public List<Post> getPost() throws NamingException, SQLException{
		ArrayList<Post> posts = new ArrayList<>();
		openConnection("");
		ResultSet rs = getResultSet("SELECT * FROM BOARD");

		while(rs.next()) {
			Post p = new Post();
			p.setPostNum(rs.getInt(1));
			p.setPostName(rs.getString(2));
			p.setPostSubject(rs.getString(4));
			p.setPostContent(rs.getString(5));
			p.setPostFile(rs.getString(6));
			p.setPostReRef(rs.getInt(7));
			p.setPostReLev(rs.getInt(8));
			p.setPostReSeq(rs.getInt(9));
			p.setPostReadCount(rs.getInt(10));
			p.setPostDate(rs.getDate(11));
			posts.add(p);
		}
		closeConnection();
		return posts;
	}
}