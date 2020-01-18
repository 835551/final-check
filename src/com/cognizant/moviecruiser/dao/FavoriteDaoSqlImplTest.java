package com.cognizant.moviecruiser.dao;

import java.text.ParseException;
import java.util.List;

import com.cognizant.moviecruiser.model.Movie;

public class FavoriteDaoSqlImplTest {
	public static void main(String args[]) throws FavoriteEmptyException, ParseException {

		testGetAllFavorite();
		testAddFavorite();
		testGetAllFavorite();
		testRemoveFavorite();
	}

	public static void testAddFavorite() throws FavoriteEmptyException, ParseException {
		FavoriteDao favoriteDao = new FavoriteDaoSqlImpl();
		long totalGross = 0l;
		favoriteDao.addFavorite(1, 2l);
		favoriteDao.addFavorite(1, 5l);
		favoriteDao.addFavorite(1, 1l);
		favoriteDao.addFavorite(1, 4l);
		List<Movie> movieListCustomer = favoriteDao.getAllFavorite(1);
		System.out.println("User added favorite");
		for (Movie movies : movieListCustomer) {
			System.out.println(movies);
			totalGross += movies.getBoxOffice();
		}
	}

	public static void testRemoveFavorite() throws FavoriteEmptyException {
		FavoriteDao favoriteDao = new FavoriteDaoSqlImpl();
		favoriteDao.removeFavorite(1, 2L);
		try {
			List<Movie> movieListCustomer = favoriteDao.getAllFavorite(1);
			System.out.println("Removed favorite");
			for (Movie movies : movieListCustomer) {
				System.out.println(movies);

			}
		} catch (Exception e) {
			e.getMessage();
		}
	}

	public static void testGetAllFavorite() throws FavoriteEmptyException {
		FavoriteDao favoriteDao = new FavoriteDaoSqlImpl();
		try {

			List<Movie> movieListCustomer = favoriteDao.getAllFavorite(1);
			System.out.println("All favorite movie");
			for (Movie movies : movieListCustomer) {
				System.out.println(movies);
			}
		} catch (Exception e) {
			e.getMessage();

		}
	}
}
