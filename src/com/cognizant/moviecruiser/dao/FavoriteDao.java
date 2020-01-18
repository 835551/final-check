package com.cognizant.moviecruiser.dao;

import java.text.ParseException;
import java.util.List;

import com.cognizant.moviecruiser.model.Movie;


public interface FavoriteDao {
	public void addFavorite(long userId, long movieId) throws ParseException;

	public List<Movie> getAllFavorite(long userId)throws FavoriteEmptyException;

	public void removeFavorite(long userId, long movieId) throws FavoriteEmptyException;
}
