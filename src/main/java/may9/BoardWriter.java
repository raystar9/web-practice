package may9;

import java.io.IOException;
import java.lang.ProcessBuilder.Redirect;
import java.sql.SQLException;

import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import may8.DataPoster;

/**
 * Servlet implementation class BoardWriter
 */
@WebServlet("/board/writer")
public class BoardWriter extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardWriter() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/may9/_01_board/writePost.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Post post = new Post();
		post.setPostName(request.getParameter("writer"));
		post.setPostPass(request.getParameter("password"));
		post.setPostSubject(request.getParameter("title"));
		post.setPostContent(request.getParameter("content"));
		post.setPostFile("none");
		post.setPostReRef(0);
		post.setPostReLev(0);
		post.setPostReSeq(0);
		post.setPostReadCount(0);
		
		DataPoster poster = new DataPoster();
		try {
			poster.postPost(post);
		} catch (NamingException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
