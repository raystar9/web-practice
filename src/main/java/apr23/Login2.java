package apr23;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login2
 */
@WebServlet("/apr23/_06_include/login")
public class Login2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = "jsp";
		String password = "jsp";
		HttpSession session =  request.getSession();

		if(!request.getParameter("id").equals(id)){
			session.setAttribute("error", "incorrect_id");
			response.sendRedirect("login.jsp");
		} else if(!request.getParameter("passwd").equals(password)){
			session.setAttribute("error", "incorrect_pw");
			response.sendRedirect("login.jsp");
		} else {
			session.setAttribute("error", null);
			request.getSession().setAttribute("id", id);
			response.sendRedirect("templete.jsp");
		}
	}
}
