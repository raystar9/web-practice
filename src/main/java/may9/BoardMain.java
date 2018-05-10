package may9;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.NamingException;
import javax.servlet.RequestDispatcher;
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
@WebServlet("/board")
public class BoardMain extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardMain() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int page = 1;
		int lastPage;
		try {
			page = Integer.parseInt(request.getParameter("page"));
		} catch (NumberFormatException e){
			page = 1;
			System.out.println("page에 잘못된 값이 입력되었습니다.");
		}
		DataGetter getter = new DataGetter();
		try {
			ArrayList<Post> posts = (ArrayList<Post>) getter.getPostList(page);
			int articleCount = getter.getArticleCount();
			lastPage = (articleCount-1)/10 + 1;
			request.setAttribute("articleCount", articleCount);
			request.setAttribute("posts", posts);
			request.setAttribute("page", page);
			request.setAttribute("lastPage", lastPage);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/may9/_01_board/boardMain.jsp");
			dispatcher.forward(request, response);
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
