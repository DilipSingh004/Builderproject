package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.DAOconnect;
import com.db.DAOimpl;

/**
 * Servlet implementation class DeleteToken1
 */
@WebServlet("/deletetoken1")
public class DeleteToken1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteToken1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		try {
			Integer id = Integer.parseInt(request.getParameter("id"));
			DAOconnect dao=new DAOconnect(DAOimpl.getConnection());
			boolean f=dao.deleteToken(id);
			if (f == true) {
				out.println("Updated successfully!!");
				RequestDispatcher rd = request.getRequestDispatcher("appo.jsp");
				rd.forward(request, response);
			} else {
				RequestDispatcher rd1 = request.getRequestDispatcher("appo.jsp");
				rd1.include(request, response);
			}
		}catch (Exception e) {
			out.println(e);
		}
		
	}

}
