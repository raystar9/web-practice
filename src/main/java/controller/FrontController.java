package controller;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class FrontController
 */
@WebServlet("*.net")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FrontController() {
        super();
        // TODO Auto-generated constructor stub
    }
    private String buildPath(HttpServletRequest request) {
    	String directPath = request.getRequestURI();
    	return directPath
    			.substring(request.getContextPath().length())
    			.substring(0, directPath.lastIndexOf(".")-request.getContextPath().length()) 
    			+ ".jsp";
    }
    protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String path = buildPath(request);
    	System.out.println(path);
    	ActionForward forward = new ActionForward();
    	forward.setRedirect(false);
    	forward.setPath(path);
    	
    	HttpURLConnection conn = (HttpURLConnection)new URL(path).openConnection();
    	conn.setRequestMethod("post");
    	RequestDispatcher dispatcher = request.getRequestDispatcher(path);
    	
    	dispatcher.forward(request, response);
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
		switch(request.getParameter("_method")) {
		case "":
		}
	}

}
