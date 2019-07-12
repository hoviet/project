package com.busBooking.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.busBooking.connect.Connecttion;
import com.busBooking.dao.IChuyenXeDAO;
import com.busBooking.model.BenXe;
import com.busBooking.model.ChuyenXe;

public class ChuyenXeDAO implements IChuyenXeDAO{

	@Override
	public List<ChuyenXe> getListId(int id) {
		List<ChuyenXe> listChuyenXe = new ArrayList<ChuyenXe>();
		String sql = "select * from chuyen_xe where id_tuyen_xe = ?";
		Connection conn = Connecttion.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		if (conn != null) {
			try {
				ps = conn.prepareStatement(sql);
				ps.setInt(1, id);
				rs = ps.executeQuery();
				while (rs.next()) {
					ChuyenXe chuyen = new ChuyenXe();
					chuyen.setId(rs.getInt("id"));
					chuyen.setIdTuyenXe(rs.getInt("id_tuyen_xe"));
					chuyen.setIdTaiXe(rs.getInt("id_tai_xe"));
					chuyen.setIdXe(rs.getInt("id_xe"));
					chuyen.setGioDi(rs.getTime("gio_di"));
					listChuyenXe.add(chuyen);
				}
				return listChuyenXe;
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

}
