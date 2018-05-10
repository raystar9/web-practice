package may8;

import java.io.Closeable;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.naming.NamingException;

import may9.Post;

public class DataGetter extends DataAccessor implements Closeable{
	@Override
	public void close() throws IOException {
		try {
			_stmt.close();
			closeConnection();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private Statement _stmt;
    protected ResultSet getResultSet(String query) throws NamingException, SQLException{
		openConnection("");
		_stmt = _connection.createStatement();
		return _stmt.executeQuery(query);
	}
    
    private void closeGetter() {
    	try {
			_stmt.close();
			closeConnection();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }

	public List<Member> getMember() throws NamingException, SQLException{
		ArrayList<Member> members = new ArrayList<>();
		ResultSet rs = getResultSet("");

		while(rs.next()) {
			Member m = new Member();
			m.setName(rs.getString("name"));
			members.add(m);
		}
		closeGetter();
		return members;
	}

	public List<Post> getPostList(int page) throws NamingException, SQLException {
		ArrayList<Post> posts = new ArrayList<>();
		openConnection("");
		ResultSet rs = getResultSet("SELECT BOARD_NUM, BOARD_NAME, BOARD_SUBJECT, BOARD_CONTENT, BOARD_RE_REF, BOARD_RE_LEV, BOARD_RE_SEQ, BOARD_READCOUNT, BOARD_DATE " + 
				"FROM (SELECT ROWNUM AS \"PAGE\", BOARD_NUM, BOARD_NAME, BOARD_SUBJECT, BOARD_CONTENT, BOARD_FILE, BOARD_RE_REF, BOARD_RE_LEV, BOARD_RE_SEQ, BOARD_READCOUNT, BOARD_DATE " + 
				"FROM (SELECT BOARD_NUM, BOARD_NAME, BOARD_SUBJECT, BOARD_CONTENT, BOARD_FILE, BOARD_RE_REF, BOARD_RE_LEV, BOARD_RE_SEQ, BOARD_READCOUNT, BOARD_DATE " + 
				"FROM BOARD " + 
				"ORDER BY BOARD_NUM DESC) " + 
				") " + 
				"WHERE PAGE >= "+((page-1)*10+1)+" AND PAGE < "+((page)*10+1));

		while(rs.next()) {
			Post p = new Post();
			p.setPostNum(rs.getInt(1));
			p.setPostName(rs.getString(2));
			p.setPostSubject(rs.getString(3));
			p.setPostContent(rs.getString(4));
			p.setPostReRef(rs.getInt(5));
			p.setPostReLev(rs.getInt(6));
			p.setPostReSeq(rs.getInt(7));
			p.setPostReadCount(rs.getInt(8));
			p.setPostDate(rs.getDate(9));
			posts.add(p);
		}
		closeGetter();
		return posts;
	}
	
	public Post getPost(int page) throws NamingException, SQLException {
		Post post = new Post();
		openConnection("");
		ResultSet rs = getResultSet("SELECT BOARD_NUM, BOARD_NAME, BOARD_SUBJECT, BOARD_CONTENT, BOARD_FILE, BOARD_RE_REF, BOARD_RE_LEV, BOARD_RE_SEQ, BOARD_READCOUNT, BOARD_DATE " +
		"FROM BOARD " +
		"WHERE BOARD_NUM = " + page);
		rs.next();
		post.setPostNum(rs.getInt(1));
		post.setPostName(rs.getString(2));
		post.setPostSubject(rs.getString(3));
		post.setPostContent(rs.getString(4));
		post.setPostFile(rs.getString(5));
		post.setPostReRef(rs.getInt(6));
		post.setPostReLev(rs.getInt(7));
		post.setPostReSeq(rs.getInt(8));
		post.setPostReadCount(rs.getInt(9));
		post.setPostDate(rs.getDate(10));
		closeGetter();
		
		return post;
	}
	
	public int getArticleCount() throws NamingException, SQLException {
		int result = 0;
		openConnection("");
		ResultSet rs = getResultSet("SELECT COUNT(*) FROM Board");
		rs.next();
		result = rs.getInt(1);
		closeGetter();
		return result;
	}
}