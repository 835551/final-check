<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html> 
  <head>
     <title>Movie List Admin</title>
	 <link rel="stylesheet" type="text/css" href="./style/style.css"/>
  </head>
  <body>
    <header>
      <span id ="head">Movie Cruiser </span>
	  <img src="./images/logo.png">
	  <a id="menu" href="ShowMovieListAdmin">Movies</a>
   </header>
	  <div>
	  <h3 class="cont">Movies</h3>
	  <table class="cont">
	   <tr>
	     <th class="title">Title</th>
		 <th class="box"> Box Ofice</th>
		 <th class="active">Active</th>
		 <th class="date">Date Of Launch</th>
         <th class="gen">Genre</th>
		 <th class="teaser">Has Teaser</th>
		 <th class="link">Action</th>
	   </tr>
	   <c:forEach items="${movieList}" var="movie">
	   <tr>
	     <td class="title">${movie.title}</td>
	     <td class="box">${movie.boxOffice}</td>
	     <td class="active"><c:if test="${movie.active}">Yes</c:if><c:if test="${!movie.active}">No</c:if></td>
	     <td class="date"><fmt:formatDate pattern="dd/MM/yyyy" value="${movie.dateOfLaunch}"></fmt:formatDate></td>
	     <td class="gen">${movie.genre}</td>
	     <td class="teaser"><c:if test="${movie.hasTeaser}">Yes</c:if><c:if test="${!movie.hasTeaser}">No</c:if></td>
	     <td class="link"><a href="ShowEditMovieList?movieId=${movie.id}" target="_blank">Edit</a></td>
	   </tr>
	   </c:forEach>
	  </table>
	</div>
	<footer>Copyright @ 2019</footer>
</html>