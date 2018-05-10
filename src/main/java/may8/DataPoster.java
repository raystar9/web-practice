package may8;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Calendar;

import javax.naming.NamingException;

import may9.Post;

public class DataPoster extends DataAccessor{
   	public int postMember(Member member) throws NamingException, SQLException{
		openConnection("");
		String query = "";
		PreparedStatement pstmt = _connection.prepareStatement(query);
		pstmt.setString(1, member.getId());
		pstmt.setString(2, member.getPass());
		pstmt.setString(3, member.getName());
		pstmt.setInt(4, member.getAge());
		pstmt.setString(5, member.getGender());
		pstmt.setString(6, member.getEmail());
		int result = pstmt.executeUpdate();
		closeConnection();
		return result;
	}
    
    public int postPost(Post post) throws NamingException, SQLException{
		openConnection("");
		String query = "INSERT INTO BOARD VALUES(SEQ_BOARD.nextval, ?, ?, ?, ?, ?, ?, ?, ?, ?, SYSDATE)";
		PreparedStatement pstmt = _connection.prepareStatement(query);
		pstmt.setString(1, post.getPostName());
		pstmt.setString(2, post.getPostPass());
		pstmt.setString(3, post.getPostSubject());
		pstmt.setString(4, post.getPostContent());
		pstmt.setString(5, post.getPostFile());
		pstmt.setInt(6, post.getPostReRef());
		pstmt.setInt(7, post.getPostReLev());
		pstmt.setInt(8, post.getPostReSeq());
		pstmt.setInt(9, post.getPostReadCount());
		
		int result = pstmt.executeUpdate();
		closeConnection();
		return result;
	}
}