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
		response.setCharacterEncoding("EUC-KR");
		request.setCharacterEncoding("EUC-KR");
		response.getWriter().println("���̵� : " + request.getParameter("id"));
		response.getWriter().println("��й�ȣ : " + request.getParameter("pass"));
		response.getWriter().println("�ֹε�Ϲ�ȣ : " + request.getParameter("jumin1") + "-" + request.getParameter("jumin2"));
		response.getWriter().println("e-mail : " + request.getParameter("email") + "@" + request.getParameter("domain"));
		response.getWriter().println("���� : " + request.getParameter("gender"));
		
		response.getWriter().print("��� : ");
		for(String str : request.getParameterValues("hobby")) {
			response.getWriter().print(str + " ");
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
