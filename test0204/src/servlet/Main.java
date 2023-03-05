package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.RegisterDAO;
import model.GetRegisterListLogic;
import model.Register;

/**
 * Servlet implementation class Main
 */
@WebServlet("/Main")
public class Main extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Main() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		GetRegisterListLogic getRegisterListLogic = new GetRegisterListLogic();
		List<Register> registerList;
		try {
			registerList = getRegisterListLogic.execute();
			request.setAttribute("registerList", registerList);
			
		} catch (ClassNotFoundException e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/registerList.jsp");
		dispatcher.forward(request, response);
		
//		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		
		String name = request.getParameter("name");
		String kanaName = request.getParameter("kanaName");
		String address = request.getParameter("address");
		String tel = request.getParameter("tel");
		String message = request.getParameter("message");
		
		Register register = new Register(name,kanaName,address,tel,message);
		RegisterDAO dao = new RegisterDAO();
		System.out.println(name);
		dao.create(register);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/finish.jsp");
		dispatcher.forward(request, response);
	}

}
