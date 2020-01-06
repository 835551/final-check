package com.cognizant.moviecruiser.dao;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.cognizant.moviecruiser.model.Movie;
import com.cognizant.moviecruiser.util.DateUtil;

public class MovieDaoCollectionImpl implements MovieDao {

	private static List<Movie> movieList;

	public MovieDaoCollectionImpl() throws ParseException {
		super();
		if (movieList == null) {
			movieList = new ArrayList<>();
			movieList.add(new Movie(1l, "Avatar", 2787965087l, true, DateUtil.convertToDate("15/03/2017"),
					"Science Fiction", true));
			movieList.add(new Movie(2l, "The Avangers", 1518812988l, true, DateUtil.convertToDate("23/12/2017"),
					"Superhero", false));
			movieList.add(new Movie(3l, "Titanic", 2187463944l, true, DateUtil.convertToDate("21/08/2017"), "Romance",
					false));
			movieList.add(new Movie(4l, "Jurassic World", 1671713208l, false, DateUtil.convertToDate("02/07/2017"),
					"Science Fiction", true));
			movieList.add(new Movie(5l, "Avangers:End Game", 2750760348l, true, DateUtil.convertToDate("02/11/2022"),
					"Superhero", true));
		}
	}

	@Override
	public List<Movie> getMovieListAdmin() {

		return movieList;
	}

	@Override
	public List<Movie> getMovieListCustomer() {
		ArrayList<Movie> customerMovies = new ArrayList<Movie>();
		Date today=new Date();
		for (Movie movies : movieList) {
			if (movies.getDateOfLaunch().before(today)) {
				customerMovies.add(movies);
			}

		}
		return customerMovies;
	}

	@Override
	public void modifyMovie(Movie m) {
		Movie x = getMovie(m.getId());
		x.setTitle(m.getTitle());
		x.setBoxOffice(m.getBoxOffice());
		x.setActive(m.isActive());
		x.setDateOfLaunch(m.getDateOfLaunch());
		x.setGenre(m.getGenre());
		x.setHasTeaser(m.isHasTeaser());
	}

	@Override
	public Movie getMovie(long movieId) {
		Movie m = null;
		for (Movie x : movieList) {
			if (x.getId() == movieId) {
				m = x;
			}
		}
		return m;
	}
}
