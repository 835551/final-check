<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>favorites</title>
<link rel="stylesheet" type="text/css" href="./style/style.css" />
</head>
<body>
	<header> <span id="head">Movie Cruiser </span> <img
		src="./images/logo.png"> <a id="menu" href="ShowFavorite">
		Favorite </a> <a id="menu" href="ShowMovieListCustomer"> Movies </a> </header>
	<div>
		<h3 class="cont">Movies</h3>
		<table class="cont">
			<tr>
				<th class="title">Title</th>
				<th class="box">Box Office</th>
				<th class="gen">Genre</th>
				<th class="teaser">Has Teaser</th>

			</tr>
			<c:forEach items="${MovieList}" var="movie">
				<tr>
					<td class="title">${movie.title}</td>
					<td class="box">${movie.boxOffice}</td>
					<td class="gen">${movie.genre}</td>
					<td class="teaser"><c:if test="${movie.hasTeaser}">Yes</c:if>
						<c:if test="${!movie.hasTeaser}">No</c:if></td>
					<td class="link"><a href="RemoveFavorite?movieId=${movie.id}">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
		<h3 id="pvrn">
			<b>No. of favorites:${fn:length(MovieList)}</b>
		</h3>
	</div>
	<footer>Copyright @ 2019</footer>
</body>
</html>