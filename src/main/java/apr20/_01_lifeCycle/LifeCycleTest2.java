package apr20._01_lifeCycle;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LifeCycleTest
 */
@WebServlet("/apr20/_02_memberReg/lifeCycleTest2")
public class LifeCycleTest2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LifeCycleTest2() {
        super();
        // TODO Auto-generated constructor stub
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("euc-kr");
		response.setContentType("text/html; charset=euc-kr"); 
		PrintWriter writer = response.getWriter();
		writer.println("ȸ���� = " + request.getParameter("id"));
		writer.println("�ּ� = " + request.getParameter("addr"));
		writer.println("��ȭ��ȣ = " + request.getParameter("tel"));
		writer.println("��� = " + request.getParameter("hobby"));
		writer.close();
	}

}
