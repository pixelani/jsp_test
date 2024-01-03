package action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TestAction
 */
@WebServlet("/TestAction")

public class TestAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	//변수선언
	int a;
	
	Calendar c = Calendar.getInstance();
	
	//메소드선언
	int plus(int a,int b) {
		return a+b;
	}
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TestAction() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#serivce(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int year = c.get(Calendar.YEAR);
		
		PrintWriter out = response.getWriter();
		out.println("IP" + request.getRemoteAddr());
	}

	

}
