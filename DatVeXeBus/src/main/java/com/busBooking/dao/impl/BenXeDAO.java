package com.busBooking.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.busBooking.connect.Connecttion;
import com.busBooking.dao.IBenXeDAO;
import com.busBooking.model.BenXe;

public class BenXeDAO implements IBenXeDAO{

	@Override
	public List<BenXe> danhSach() {
		List<BenXe> listBx = new ArrayList<BenXe>();
		String sql = "select * from ben_xe";
		Connection conn = Connecttion.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		if (conn != null) {
			try {
				ps = conn.prepareStatement(sql);
				rs = ps.executeQuery();
				while (rs.next()) {
					BenXe bx = new BenXe();
					bx.setId(rs.getInt("id"));
					bx.setTenBenXe(rs.getString("ten_ben"));
					bx.setMaTinh(rs.getString("ma_tinh"));					
					listBx.add(bx);
				}
				return listBx;
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
