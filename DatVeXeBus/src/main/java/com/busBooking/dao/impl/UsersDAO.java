package com.busBooking.dao.impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.busBooking.connect.Connecttion;
import com.busBooking.dao.IUsersDAO;
import com.busBooking.model.UsersRole;
import com.busBooking.model.Users;

public class UsersDAO implements IUsersDAO {

	@Override
	public List<Users> findAll() {
		List<Users> listUser = new ArrayList<Users>();
		String sql = "select * from users";
		Connection conn = Connecttion.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		if (conn != null) {
			try {
				ps = conn.prepareStatement(sql);
				rs = ps.executeQuery();
				while (rs.next()) {
					Users us = new Users();
					us.setId(rs.getInt("id"));
					us.setHoTen(rs.getString("ho_ten"));
					us.setMatKhau(rs.getString("mat_khau"));
					us.setEmail(rs.getString("email"));
					us.setDiaChi(rs.getString("dia_chi"));
					us.setSoCMND(rs.getInt("so_cmnd"));
					us.setSoDienThoai(rs.getString("so_dien_thoai"));
					us.setTrangThai(rs.getBoolean("trang_thai"));
					listUser.add(us);
				}
				return listUser;
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				try {
					if (conn == null) {
						conn.close();
					}
					if (ps == null) {
						ps.close();
					}
					if (rs == null) {
						rs.close();
					}
				} catch (Exception e2) {
					return null;
				}
			}
		}
		return null;
	}

	@Override
	public Users findId(int id) {
		String sql = "select * from users where id= ?";
		Connection conn = Connecttion.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		Users us = new Users();
		if (conn != null) {
			try {				
				ps = conn.prepareStatement(sql);
				ps.setInt(1, id);
				rs = ps.executeQuery();
				while (rs.next()) {					
					us.setId(rs.getInt("id"));
					us.setHoTen(rs.getString("ho_ten"));
					us.setMatKhau(rs.getString("mat_khau"));
					us.setEmail(rs.getString("email"));
					us.setDiaChi(rs.getString("dia_chi"));
					us.setSoCMND(rs.getInt("so_cmnd"));
					us.setSoDienThoai(rs.getString("so_dien_thoai"));
					us.setTrangThai(rs.getBoolean("trang_thai"));
				}
				return us;
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				try {
					if (conn == null) {
						conn.close();
					}
					if (ps == null) {
						ps.close();
					}
					if (rs == null) {
						rs.close();
					}
				} catch (Exception e2) {
					return null;
				}
			}
		}
		return null;
	}

	@Override
	public UsersRole login(String user, String pass) {
		String sql = "select users.id, ho_ten, email, so_dien_thoai, mat_khau, so_cmnd, trang_thai, dia_chi, quyen.ten as quyen from users  inner join phan_quyen on users.id = phan_quyen.id_user inner join quyen on quyen.id = phan_quyen.id_quyen where email = ? and mat_khau = ?";
		Connection conn = Connecttion.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		UsersRole use = null;
		if (conn != null) {
			try {				
				ps = conn.prepareStatement(sql);
				ps.setString(1, user);
				ps.setString(2, pass);
				rs = ps.executeQuery();
				while (rs.next()) {	
					UsersRole us = new UsersRole();
					us.setId(rs.getInt("id"));
					us.setHoTen(rs.getString("ho_ten"));
					us.setMatKhau(rs.getString("mat_khau"));
					us.setEmail(rs.getString("email"));
					us.setDiaChi(rs.getString("dia_chi"));
					us.setSoCMND(rs.getInt("so_cmnd"));
					us.setSoDienThoai(rs.getString("so_dien_thoai"));
					us.setTrangThai(rs.getBoolean("trang_thai"));
					us.setRole(rs.getString("quyen"));
					use = us;
				}
				return use;
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				try {
					if (conn == null) {
						conn.close();
					}
					if (ps == null) {
						ps.close();
					}
					if (rs == null) {
						rs.close();
					}
				} catch (Exception e2) {
					return null;
				}
			}
		}
		return null;
	}

	@Override
	public Users checkEmail(String email) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<UsersRole> getAllUsers(String role) {
		String sql = "select users.id, ho_ten, email, so_dien_thoai, mat_khau, so_cmnd, trang_thai, dia_chi, quyen.ten as quyen from users  inner join phan_quyen on users.id = phan_quyen.id_user inner join quyen on quyen.id = phan_quyen.id_quyen where quyen.ten = ?";
		Connection conn = Connecttion.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<UsersRole> use = new ArrayList<UsersRole>();
		if (conn != null) {
			try {				
				ps = conn.prepareStatement(sql);
				ps.setString(1, role);
				rs = ps.executeQuery();
				while (rs.next()) {	
					UsersRole us = new UsersRole();
					us.setId(rs.getInt("id"));
					us.setHoTen(rs.getString("ho_ten"));
					us.setMatKhau(rs.getString("mat_khau"));
					us.setEmail(rs.getString("email"));
					us.setDiaChi(rs.getString("dia_chi"));
					us.setSoCMND(rs.getInt("so_cmnd"));
					us.setSoDienThoai(rs.getString("so_dien_thoai"));
					us.setTrangThai(rs.getBoolean("trang_thai"));
					us.setRole(rs.getString("quyen"));
					use.add(us);
				}
				return use;
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				try {
					if (conn == null) {
						conn.close();
					}
					if (ps == null) {
						ps.close();
					}
					if (rs == null) {
						rs.close();
					}
				} catch (Exception e2) {
					return null;
				}
			}
			return use;
		}
		return use;
	}



}
