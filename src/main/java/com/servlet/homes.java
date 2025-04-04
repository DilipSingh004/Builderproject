package com.servlet;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.DAO.DAOconnect;
import com.db.DAOimpl;
import com.entity.house;

/**
 * Servlet implementation class homes
 */
@WebServlet("/homes2")
@MultipartConfig
public class homes extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public homes() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		DAOconnect dao = new DAOconnect(DAOimpl.getConnection());
		HttpSession session = request.getSession();
		String house1 = request.getParameter("house");
		String add = request.getParameter("add");
		String bed = request.getParameter("bed");
		String bath = request.getParameter("bath");
		String area = request.getParameter("area");
		String landmark = request.getParameter("landmark");
		Integer price = Integer.parseInt(request.getParameter("price"));
		String type = request.getParameter("type");
		Part part = request.getPart("pImage");
		String fileName = part.getSubmittedFileName();
		house h = new house();
		h.setHouse(house1);
		h.setAdd(add);
		h.setBed(bed);
		h.setBath(bath);
		h.setArea(area);
		h.setLandmark(landmark);
		h.setPrice(price);
		h.setType(type);
        h.setpImage(fileName);
		boolean d = dao.addhouse(h);
		if (d) {
			String uploadPath = "C:\\Users\\dsing\\eclipse-workspace\\BuilderProject\\src\\main\\webapp\\img";
			File file = new File(uploadPath);
			part.write(file + file.separator+fileName);
			session.setAttribute("succMSG", "DATA SAVED");
			response.sendRedirect("addhouse.jsp");

		} else {
			session.setAttribute("failMSG", "failed to process");
			response.sendRedirect("addhouse.jsp");
		}

	}

}
