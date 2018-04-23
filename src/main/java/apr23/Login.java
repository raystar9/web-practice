package apr23;

import java.io.IOException;

import javax.servlet.DispatcherType;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Korean
 */
@WebServlet("/apr23/_04_login/login_ok")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Login() {
        super();
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = "java";
		String password = "java";
		HttpSession session =  request.getSession();

		if(!request.getParameter("id").equals(id)){
			session.setAttribute("error", "incorrect_id");
			response.sendRedirect("login.jsp");
		} else if(!request.getParameter("passwd").equals(password)){
			session.setAttribute("error", "incorrect_pw");
			response.sendRedirect("login.jsp");
		} else {
			request.getSession().setAttribute("id", id);
			response.sendRedirect("loginSuccess.jsp");
		}
	}

}
