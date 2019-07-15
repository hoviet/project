package com.busBooking.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.busBooking.connect.Connecttion;
import com.busBooking.dao.ITuyenXeDAO;
import com.busBooking.model.TuyenXe;

public class TuyenXeDAO implements ITuyenXeDAO{

	@Override
	public List<TuyenXe> danhSach() {
		List<TuyenXe> dsTuyenXe = new ArrayList<TuyenXe>();
		String sql = "select * from tuyen_xe";
		Connection conn = Connecttion.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		if (conn != null) {
			try {
				ps = conn.prepareStatement(sql);
				rs = ps.executeQuery();
				while (rs.next()) {
					TuyenXe tuyen = new TuyenXe();
					tuyen.setId(rs.getInt("id"));
					tuyen.setIdBenXeDi(rs.getInt("id_ben_xe_di"));	
					tuyen.setIdBenXeDen(rs.getInt("id_ben_xe_den"));
					tuyen.setBangGia(rs.getFloat("bang_gia"));
					dsTuyenXe.add(tuyen);
				}
				return dsTuyenXe;
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
				}
			}
		}
		return null;
	}

	@Override
	public TuyenXe layMot(int idDi, int idDen) {
		TuyenXe tuyen = new TuyenXe();
		String sql = "select * from tuyen_xe where id_ben_xe_di = ? and id_ben_xe_den = ?";
		Connection conn = Connecttion.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		if (conn != null) {
			try {
				ps = conn.prepareStatement(sql);
				ps.setInt(1, idDi);
				ps.setInt(2, idDen);
				rs = ps.executeQuery();
				while (rs.next()) {
					tuyen.setId(rs.getInt("id"));
					tuyen.setIdBenXeDi(rs.getInt("id_ben_xe_di"));	
					tuyen.setIdBenXeDen(rs.getInt("id_ben_xe_den"));
					tuyen.setBangGia(rs.getFloat("bang_gia"));
				}
				return tuyen;
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
				}
			}
		}
		return null;
	}

	@Override
	public List<TuyenXe> danhSach(int idDi) {
		List<TuyenXe> dsTuyenXe = new ArrayList<TuyenXe>();
		String sql = "select * from tuyen_xe where id_ben_xe_di = ?";
		Connection conn = Connecttion.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		if (conn != null) {
			try {
				ps = conn.prepareStatement(sql);
				ps.setInt(1, idDi);
				rs = ps.executeQuery();
				while (rs.next()) {
					TuyenXe tuyen = new TuyenXe();
					tuyen.setId(rs.getInt("id"));
					tuyen.setIdBenXeDi(rs.getInt("id_ben_xe_di"));	
					tuyen.setIdBenXeDen(rs.getInt("id_ben_xe_den"));
					tuyen.setBangGia(rs.getFloat("bang_gia"));
					dsTuyenXe.add(tuyen);
				}
				return dsTuyenXe;
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
				}
			}
		}
		return null;
	}

}
