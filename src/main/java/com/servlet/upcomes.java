package com.servlet;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

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
import com.entity.upcome;

/**
 * Servlet implementation class upcome
 */
@WebServlet("/upcomings")
@MultipartConfig
public class upcomes extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public upcomes() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		DAOconnect dao = new DAOconnect(DAOimpl.getConnection());
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		String project = request.getParameter("project");
		String add = request.getParameter("add");
		String bed = request.getParameter("bed");
		String bath = request.getParameter("bath");
		String area = request.getParameter("area");
		String landmark = request.getParameter("landmark");
		String price = request.getParameter("price");
		String type = request.getParameter("type");
		Part part = request.getPart("img1");
		String fileName = part.getSubmittedFileName();
		Part part1 = request.getPart("img2");
		String fileName1 = part1.getSubmittedFileName();
		Part part2 = request.getPart("img3");
		String fileName2 = part2.getSubmittedFileName();
		Part part3 = request.getPart("img4");
		String fileName3 = part3.getSubmittedFileName();
		Part part4 = request.getPart("img5");
		String filename4 = part4.getSubmittedFileName();
		Part part5 = request.getPart("img6");
		String filename5 = part5.getSubmittedFileName();
		String stat = request.getParameter("stat");
		String dics = request.getParameter("dics");
		

		upcome w = new upcome();
		w.setProject(project);
		w.setAdd(add);
		w.setBed(bed);
		w.setBath(bath);
		w.setArea(area);
		w.setLandmark(landmark);
		w.setPrice(price);
		w.setType(type);
		w.setImg1(fileName);
		w.setImg2(fileName1);
		w.setImg3(fileName2);
		w.setImg4(fileName3);
		w.setImg5(filename4);
		w.setImg6(filename5);
		w.setStat(stat);
		w.setDics(dics);
		boolean d = dao.Upcoming(w);

		if (d) {

			String uploadPath = "C:\\Users\\dsing\\eclipse-workspace\\BuilderProject\\src\\main\\webapp\\img1";
			File file = new File(uploadPath);
			part.write(file + file.separator + fileName);
			part1.write(file + file.separator + fileName1);
			part2.write(file + file.separator + fileName2);
			part3.write(file + file.separator + fileName3);
			part4.write(file + file.separator + filename4);
			part5.write(file + file.separator + filename5);

			session.setAttribute("succMSG", "DATA SAVED");
			response.sendRedirect("upcome.jsp");

		} else {
			session.setAttribute("failMSG", "failed to process");
			response.sendRedirect("upcome.jsp");
		}

	}

}
