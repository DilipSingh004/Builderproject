package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.DAO.DAOconnect;
import com.entity.*;
import com.db.DAOimpl;

/**
 * Servlet implementation class login
 */
@WebServlet("/loginserv")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public login() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String email = request.getParameter("email");
		String pass = request.getParameter("pass");
		DAOconnect dao = new DAOconnect(DAOimpl.getConnection());

		User us = dao.loginuser(email, pass);
		if (email.equalsIgnoreCase("gaman@gmail.com") && pass.equals("pass@123")) {

			response.sendRedirect("admin.jsp");
		} else if (us != null) {
			session.setAttribute("userobj", us);
			response.sendRedirect("index.jsp");
		} else {
			RequestDispatcher rd1 = request.getRequestDispatcher("login.jsp");
			rd1.include(request, response);
		}
	}
}
