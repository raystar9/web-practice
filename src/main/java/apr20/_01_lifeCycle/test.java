package apr20._01_lifeCycle;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class test
 */
@WebServlet("/apr20/test/result")
public class test extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public test() {
        super();
        // TODO Auto-generated constructor stub
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.getWriter().println("아이디 : " + request.getParameter("id") + "<br>");
		response.getWriter().println("비밀번호 : " + request.getParameter("pass"));
		response.getWriter().println("주민등록번호 : " + request.getParameter("jumin1") + "-" + request.getParameter("jumin2"));
		response.getWriter().println("e-mail : " + request.getParameter("email") + "@" + request.getParameter("domain"));
		response.getWriter().println("성별 : " + request.getParameter("gender"));
		
		response.getWriter().print("취미 : ");
		for(String str : request.getParameterValues("hobby")) {
			response.getWriter().print(str + " ");
		}
		response.getWriter().close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
