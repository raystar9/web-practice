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
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.getWriter().print("아이디 : " + request.getParameter("id") + "<br>");
		response.getWriter().print("비밀번호 : " + request.getParameter("pass")+ "<br>");
		response.getWriter().print("주민등록번호 : " + request.getParameter("jumin1") + "-" + request.getParameter("jumin2")+ "<br>");
		response.getWriter().print("e-mail : " + request.getParameter("email") + "@" + request.getParameter("domain")+ "<br>");
		response.getWriter().print("성별 : " + request.getParameter("gender")+ "<br>");
		
		response.getWriter().print("취미 : ");
		for(String str : request.getParameterValues("hobby")) {
			response.getWriter().print(str + " ");
		}
		
		response.getWriter().print("<br>우편 번호 : " + request.getParameter("post1") + "-" + request.getParameter("post2") + "<br>");
		response.getWriter().print("주소 : " + request.getParameter("address") + "<br>");
		response.getWriter().print("자기소개 : " + request.getParameter("introduce") + "<br>");
		response.getWriter().close();
	}

}
