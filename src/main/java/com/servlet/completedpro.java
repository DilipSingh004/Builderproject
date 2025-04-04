package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.DAOconnect;
import com.db.DAOimpl;

/**
 * Servlet implementation class completedpro
 */
@WebServlet("/completed")
public class completedpro extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public completedpro() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Integer id=Integer.parseInt(request.getParameter("id"));
		HttpSession session = request.getSession();
		DAOconnect dao = new DAOconnect(DAOimpl.getConnection());
		boolean f=dao.setcompleted(id);
		if (f) {
			session.setAttribute("succMSG", "DATA UPDATED");
			response.sendRedirect("upcome.jsp");

		} else {
			session.setAttribute("failMSG", "failed to process");
			response.sendRedirect("upcome.jsp");
		}
	}
}
