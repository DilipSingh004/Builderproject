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
import com.entity.apoint;

/**
 * Servlet implementation class EditToken
 */
@WebServlet("/edit_token")
public class EditToken extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EditToken() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();

		try {
			Integer id = Integer.parseInt(request.getParameter("id"));
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String mobileno = request.getParameter("mobileno");
			String date = request.getParameter("date");
			String time = request.getParameter("time");

			apoint b = new apoint();
			b.setUserId(id);
			b.setName(name);
			b.setEmail(email);
			b.setMobileno(mobileno);
			b.setDate(date);
			b.setTime(time);

			DAOconnect dao = new DAOconnect(DAOimpl.getConnection());
			boolean f = dao.updateToken(id, b);
			if (f == true) {
				out.println("Updated successfully!!");
				RequestDispatcher rd = request.getRequestDispatcher("token.jsp");
				rd.forward(request, response);
			} else {
				RequestDispatcher rd1 = request.getRequestDispatcher("updatetoken.jsp");
				rd1.include(request, response);
			}
		} catch (Exception e) {
			out.println(e);
		}
	}

}
