package com.cognizant.moviecruiser.dao;

import java.text.ParseException;
import java.util.List;

import com.cognizant.moviecruiser.model.Movie;
import com.cognizant.moviecruiser.util.DateUtil;

public class MoviesDaoCollectionImplTest {
	public static void main(String args[]) throws ParseException {
		testMovieListAdmin();
		testMovieListCustomer();
		testModifyMovie();
		System.out.println("After modifying the movie");
		testMovieListAdmin();
	}

	public static void testMovieListAdmin() throws ParseException {
		MovieDao movieDao = new MovieDaoCollectionImpl();
		List<Movie> movieList = movieDao.getMovieListAdmin();
		for (Movie x : movieList) {
			System.out.println(x);
		}
	}

	public static void testMovieListCustomer() throws ParseException {
		MovieDao movieDao = new MovieDaoCollectionImpl();
		List<Movie> movieList = movieDao.getMovieListCustomer();
		for (Movie x : movieList) {
			System.out.println(x);
		}
	}

	public static void testModifyMovie() throws ParseException {
		Movie item = new Movie(3l, "Hero", 76548943, true, DateUtil.convertToDate("20/12/2019"), "Science Fiction",
				true);
		MovieDao movieDao = new MovieDaoCollectionImpl();
		movieDao.modifyMovie(item);
		Movie modifyMovie = movieDao.getMovie(item.getId());

	}

}
