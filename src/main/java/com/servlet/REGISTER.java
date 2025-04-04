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
import com.entity.register;


@WebServlet("/Signup")
public class REGISTER extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public REGISTER() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		String name=request.getParameter("name");
		String date=request.getParameter("date");
		String email=request.getParameter("email");
		String pass=request.getParameter("pwd");
		
		
		register rg =new register();
		rg.setName(name);
		rg.setDate(date);
		rg.setEmail(email);
		rg.setPwd(pass);
		
		
		DAOconnect dao=new DAOconnect(DAOimpl.getConnection());
		boolean f=dao.RegisterUser(rg);
		if(f==true){
			out.println("register successfully!!");
			
			RequestDispatcher rd= request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);
		}
		else {
			RequestDispatcher rd1= request.getRequestDispatcher("register.jsp");
			rd1.include(request, response);
		}
	}

}
