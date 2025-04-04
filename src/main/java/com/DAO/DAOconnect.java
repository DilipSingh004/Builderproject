package com.DAO;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.entity.*;
import com.servlet.upcomes;

public class DAOconnect {

	private Connection con;

	public DAOconnect() {
		super();
	}

	public DAOconnect(Connection con) {
		this.con = con;
	}

	public boolean RegisterUser(register rg) {
		boolean f = false;
		try {
			String sql = "insert into customerinfo (name, date, email, pwd) values (?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, rg.getName());
			ps.setString(2, rg.getDate());
			ps.setString(3, rg.getEmail());
			ps.setString(4, rg.getPwd());

			int r = ps.executeUpdate();
			if (r == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}

	public User loginuser(String email, String pass) {
		User us = null;
		try {
			String sql = "select * from customerinfo where email=? and pwd=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, email);
			ps.setString(2, pass);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				us = new User();
				us.setId(rs.getInt(1));
				us.setName(rs.getString(2));
				us.setEmail(rs.getString(4));
				us.setPwd(rs.getString(5));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return us;
	}

	public boolean addhouse(house h) {
		boolean f = false;
		try {
			String sql = "insert into property (name,address,area,bed,bath,landmark,price,type,img) values(?,?,?,?,?,?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, h.getHouse());
			ps.setString(2, h.getAdd());
			ps.setString(3, h.getArea());
			ps.setString(4, h.getBed());
			ps.setString(5, h.getBath());
			ps.setString(6, h.getLandmark());
			ps.setInt(7, h.getPrice());
			ps.setString(8, h.getType());
			ps.setString(9, h.getpImage());

			int r = ps.executeUpdate();

			if (r > 0) {
				f = true;

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;

	}

	public List<house> getHouse() {
		List<house> list = new ArrayList<house>();
		house h = null;
		try {
			String sql = "select * from property";
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				h = new house();
				h.setId(rs.getInt(1));
				h.setHouse(rs.getString(2));
				h.setAdd(rs.getString(3));
				h.setArea(rs.getString(4));
				h.setBed(rs.getString(8));
				h.setBath(rs.getString(9));
				h.setLandmark(rs.getString(7));
				h.setPrice(rs.getInt(5));
				h.setType(rs.getString(6));
				h.setpImage(rs.getString(10));
				list.add(h);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public house getHousebyId(int id) {
		house h = null;
		try {
			String sql = "select * from property where propertyid=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				h = new house();
				h.setId(rs.getInt(1));
				h.setHouse(rs.getString(2));
				h.setAdd(rs.getString(3));
				h.setArea(rs.getString(7));
				h.setBed(rs.getString(8));
				h.setBath(rs.getString(9));
				h.setLandmark(rs.getString(4));
				h.setPrice(rs.getInt(5));
				h.setType(rs.getString(6));
				h.setpImage(rs.getString(10));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return h;
	}

	public boolean employee(Employee a) {
		boolean k = false;
		try {
			String sql = "insert into employeetable (name,address,dob,mobileno,email,dateofjoining,pass,repass,position,status) values(?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, a.getName());
			ps.setString(2, a.getAdd());
			ps.setString(3, a.getDob());
			ps.setString(4, a.getMno());
			ps.setString(5, a.getEmail());
			ps.setString(6, a.getDoj());
			ps.setString(7, a.getPass());
			ps.setString(8, a.getRepass());
			ps.setString(9, a.getPosi());
			ps.setString(10, a.getStatus());

			int r = ps.executeUpdate();

			if (r > 0) {
				k = true;

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return k;
	}

	public List<Employee> getEmployees() {
		List<Employee> list = new ArrayList<Employee>();
		Employee s = null;
		try {
			String sql = "select * from employeetable ";
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				s = new Employee();
				s.setId(rs.getInt(1));
				s.setName(rs.getString(2));
				s.setAdd(rs.getString(3));
				s.setDob(rs.getString(4));
				s.setMno(rs.getString(5));
				s.setEmail(rs.getString(6));
				s.setDoj(rs.getString(7));
				s.setPass(rs.getString(8));
				s.setRepass(rs.getString(9));
				s.setPosi(rs.getString(10));
				s.setStatus(rs.getString(11));
				list.add(s);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public boolean appointuser(apoint b) {
		boolean i = false;
		try {
			String sql = "insert into token(userid,name, email, mobileno, date, time) values (?,?,?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, b.getUserId());
			ps.setString(2, b.getName());
			ps.setString(3, b.getEmail());
			ps.setString(4, b.getMobileno());
			ps.setString(5, b.getDate());
			ps.setString(6, b.getTime());

			int r = ps.executeUpdate();
			if (r == 1) {
				i = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return i;
	}

	public List<apoint> getapoint(int id) {
		List<apoint> list = new ArrayList<apoint>();
		apoint j = null;
		try {
			String sql = "select * from token where userid=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				j = new apoint();
				j.setId(rs.getInt(1));
				j.setName(rs.getString(3));
				j.setEmail(rs.getString(4));
				j.setMobileno(rs.getString(5));
				j.setDate(rs.getString(6));
				j.setTime(rs.getString(7));
				list.add(j);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public List<apoint> getapoints() {
		List<apoint> list = new ArrayList<apoint>();
		apoint v = null;
		try {
			String sql = "select * from token";
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				v = new apoint();
				v.setId(rs.getInt(1));
				v.setName(rs.getString(3));
				v.setEmail(rs.getString(4));
				v.setMobileno(rs.getString(5));
				v.setDate(rs.getString(6));
				v.setTime(rs.getString(7));
				list.add(v);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public boolean Upcoming(upcome w) {
		boolean f = false;
		try {
			String sql = "insert into upcoming (project,city,area,landmark,bed,bath,price,type,img1,img2,img3,img4,img5,img6,stat,dics) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, w.getProject());
			ps.setString(2, w.getAdd());
			ps.setString(3, w.getArea());
			ps.setString(4, w.getLandmark());
			ps.setString(5, w.getBed());
			ps.setString(6, w.getBath());
			ps.setString(7, w.getPrice());
			ps.setString(8, w.getType());
			ps.setString(9, w.getImg1());
			ps.setString(10, w.getImg2());
			ps.setString(11, w.getImg3());
			ps.setString(12, w.getImg4());
			ps.setString(13, w.getImg5());
			ps.setString(14, w.getImg6());
			ps.setString(15, w.getStat());
			ps.setString(16, w.getDics());

			int r = ps.executeUpdate();
			if (r > 1) {
				f = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}

	public List<upcome> getupcome() {
		List<upcome> list = new ArrayList<upcome>();
		upcome w = null;
		try {
			String sql = "select * from upcoming ";
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				w = new upcome();
				w.setProjectid(rs.getInt(1));
				w.setProject(rs.getString(2));
				w.setAdd(rs.getString(3));
				w.setArea(rs.getString(4));
				w.setLandmark(rs.getString(5));
				w.setBed(rs.getString(6));
				w.setBath(rs.getString(7));
				w.setPrice(rs.getString(8));
				w.setType(rs.getString(9));
				w.setImg1(rs.getString(10));
				w.setImg2(rs.getString(11));
				w.setImg3(rs.getString(12));
				w.setImg4(rs.getString(13));
				w.setImg5(rs.getString(14));
				w.setImg6(rs.getString(15));
				w.setStat(rs.getString(16));
				w.setDics(rs.getString(17));
				list.add(w);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public apoint getapointsById(int id) {
		apoint v = null;
		try {
			String sql = "select * from token where idtoken=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				v = new apoint();
				v.setId(rs.getInt(1));
				v.setName(rs.getString(3));
				v.setEmail(rs.getString(4));
				v.setMobileno(rs.getString(5));
				v.setDate(rs.getString(6));
				v.setTime(rs.getString(7));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return v;
	}

	public boolean updateToken(int id, apoint a) {
		boolean f = false;
		try {
			String sql = "update token set name=?,email=?,mobileno=?,date=?,time=? where idtoken=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, a.getName());
			ps.setString(2, a.getEmail());
			ps.setString(3, a.getMobileno());
			ps.setString(4, a.getDate());
			ps.setString(5, a.getTime());
			ps.setInt(6, id);
			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	public boolean deleteToken(int id) {
		boolean f = false;
		try {
			String sql = "delete from token where idtoken=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	public boolean setInactive(int id) {
		boolean f = false;
		try {
			String sql = "update employeetable set status=? where id=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, "INACTIVE");
			ps.setInt(2, id);
			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	public boolean setcompleted(int projectid) {
		boolean f = false;
		try {
			String sql = "update upcoming set stat=? where projectid=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, "COMPLETED");
			ps.setInt(2, projectid);
			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}
}
