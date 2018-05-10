package may9;

import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.util.Calendar;

import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import may8.DataGetter;
import may8.DataPoster;

/**
 * Servlet implementation class BoardMain
 */
@WebServlet("/board/set")
public class BoardSet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardSet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String page = request.getParameter("page");
		if(page == null) {
			page = "1";
		}
		
		DataPoster poster = new DataPoster();
		Post post = new Post();
		post.setPostName("koo");
		post.setPostPass("1234");
		post.setPostSubject("title");
		post.setPostContent("content");
		post.setPostFile("notInclude");
		post.setPostReRef(0);
		post.setPostReLev(1);
		post.setPostReSeq(0);
		post.setPostReadCount(0);
		post.setPostDate(new Date(Calendar.getInstance().getTimeInMillis()));
		try {
			poster.postPost(post);
			System.out.println("성공");
		} catch (NamingException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
