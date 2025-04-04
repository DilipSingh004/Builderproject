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
import com.entity.Employee;
import com.entity.house;

@WebServlet("/employee1")
public class employee extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public employee() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DAOconnect dao = new DAOconnect(DAOimpl.getConnection());
		HttpSession session = request.getSession();
		String name = request.getParameter("name");
		String add = request.getParameter("add");
		String dob = request.getParameter("dob");
		String mno = request.getParameter("mno");
		String email = request.getParameter("email");
		String doj = request.getParameter("doj");
		String pass=request.getParameter("pass");
		String repass=request.getParameter("repass");
		String posi = request.getParameter("posi");
		String status =request.getParameter("status");

		Employee a = new Employee();
	   a.setName(name);
	   a.setAdd(add);
	   a.setDob(dob);
	   a.setMno(mno);
	   a.setEmail(email);
	   a.setDoj(doj);
	   a.setPass(pass);
	   a.setRepass(repass);
	   a.setPosi(posi);
	   a.setStatus(status);
	   
	   boolean j = dao.employee(a);
		if (j) {
			session.setAttribute("succMSG", "DATA SAVED");
			response.sendRedirect("addemployee.jsp");

		} else {
			session.setAttribute("failMSG", "failed to process");
			response.sendRedirect("addemployee.jsp");
		}
	}

}
