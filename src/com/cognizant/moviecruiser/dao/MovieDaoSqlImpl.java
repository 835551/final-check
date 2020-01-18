package com.cognizant.moviecruiser.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.cognizant.moviecruiser.model.Movie;

public class MovieDaoSqlImpl implements MovieDao {

	@Override
	public List<Movie> getMovieListAdmin() {
		List<Movie> movieList = new ArrayList<>();
		Connection con = ConnectionHandler.getConnection();
		String sql = "select * from movie";
		try {
			PreparedStatement ps = con.prepareStatement(sql);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Movie m = new Movie();
				m.setId(rs.getInt(1));
				m.setTitle(rs.getString(2));
				m.setBoxOffice(rs.getLong(3));
				m.setActive(rs.getString(4).equalsIgnoreCase("Yes"));
				m.setDateOfLaunch(rs.getDate(5));
				m.setGenre(rs.getString(6));
				m.setHasTeaser(rs.getString(7).equalsIgnoreCase("Yes"));
				movieList.add(m);
			}
		} catch (SQLException e) {

			e.printStackTrace();
		}
		return movieList;
	}

	@Override
	public List<Movie> getMovieListCustomer() {
		List<Movie> custmerList = new ArrayList<>();
		Connection con = ConnectionHandler.getConnection();
		try {
			String sql = "select  * from movie where m_active=? and m_date_of_launch <?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, "Yes");
			ps.setDate(2, new java.sql.Date(System.currentTimeMillis()));
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Movie m = new Movie();
				m.setId(rs.getInt(1));
				m.setTitle(rs.getString(2));
				m.setBoxOffice(rs.getLong(3));
				m.setActive(rs.getString(4).equalsIgnoreCase("Yes"));
				m.setDateOfLaunch(rs.getDate(5));
				m.setGenre(rs.getString(6));
				m.setHasTeaser(rs.getString(7).equalsIgnoreCase("Yes"));
				custmerList.add(m);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (SQLException e) {

				e.printStackTrace();
			}
		}

		return custmerList;

	}

	@Override
	public void modifyMovie(Movie movie) {
		List<Movie> result = new ArrayList<>();
		Connection con = ConnectionHandler.getConnection();
		try {
			String sql = "update movie set m_title=?,m_box_office=?,m_active=?,m_date_of_launch=?,m_genre=?,m_has_teaser=? where m_id=?";
			PreparedStatement ps = con.prepareStatement(sql);

			ps.setString(1, movie.getTitle());
			ps.setDouble(2, movie.getBoxOffice());
			ps.setString(3, movie.isActive() ? "Yes" : "NO");
			ps.setDate(4, new java.sql.Date(movie.getDateOfLaunch().getTime()));
			ps.setString(5, movie.getGenre());
			ps.setString(6, movie.isHasTeaser() ? "Yes" : "NO");
			ps.setLong(7, movie.getId());
			int count = ps.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

	}

	@Override
	public Movie getMovie(long movieId) {
		Movie movieList = new Movie();
		Connection con = ConnectionHandler.getConnection();
		try {
			String sql = "select  * from  movie";
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Movie m = new Movie();
				m.setId(rs.getInt(1));
				m.setTitle(rs.getString(2));
				m.setBoxOffice(rs.getLong(3));
				m.setActive(rs.getString(4).equalsIgnoreCase("Yes"));
				m.setDateOfLaunch(rs.getDate(5));
				m.setGenre(rs.getString(6));
				m.setHasTeaser(rs.getString(7).equalsIgnoreCase("Yes"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
		}
		return movieList;

	}

}
