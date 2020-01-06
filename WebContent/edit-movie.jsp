<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html> 
  <head>
     <title>Edit movie</title>
	 <link rel="stylesheet" type="text/css" href="./style/style.css"/>
	 <script  src="./js/script.js" type="text/javascript"></script>
  </head>
  <body>
     <header>
       <span id ="head">Movie Cruiser </span>
	   <img src="./images/logo.png">
	   <a id="menu" href="ShowMovieListAdmin"> Movies </a>
     </header>
	  <div>
	    <h3 class="cont">Edit Movie</h3>
	  <form name="Form" method="post" action="EditMovie?movieId=${movieList.id }"	 onsubmit="return validation()">
	  <table class="cont">
	      <tr>
		       <td>Title</td>
	      </tr>
		  <tr>
		       <td><input type="text" name="game"  value="${movieList.title }" /></td>
		  </tr>
		  <tr>
		      <td>Gross($)</td>
		      <td>Active</td>
		      <td>Date Of Launch</td>
		      <td>Genre</td>
		  </tr>
		  <tr>
		      <td><input type="text" name="price" value="${movieList.boxOffice}" /></td>
		      <td>
		          <input type="radio" name="active" value="yes"<c:if test="${movieList.active eq 'true'}">checked ="checked"</c:if> />Yes 
				  <input type="radio" name="active" value="yes"<c:if test="${movieList.active eq 'false'}">checked ="checked"</c:if> />No
		       </td>
			   <td><input type="text" name="dol" value="<fmt:formatDate type="date" pattern="dd/MM/yyyy" value="${movieList.dateOfLaunch }"></fmt:formatDate>" /></td>
		       <td>
		            <select name="genre">
	                  <option><c:if test="${movieList.genre eq ScienceFiction}"></c:if>ScienceFiction</option>
				      <option><c:if test="${movieList.genre eq Superhero}"></c:if>Superhero</option>
					  <option><c:if test="${movieList.genre eq Romance}"></c:if>Romance</option>
					  <option><c:if test="${movieList.genre eq Comedy}"></c:if>Comedy</option>
					  <option><c:if test="${movieList.genre eq Adventure}"></c:if>Adventure</option>
					  <option><c:if test="${movieList.genre eq Thriller}"></c:if>Thriller</option>
					</select>
			   </td>
		  </tr>
		  <tr> 
		       <td>
		       <input type="checkbox" name="ch" <c:if test="${movieList.hasTeaser eq 'true'}">checked</c:if>
		       <c:if test="${movieList.hasTeaser eq 'false'}"></c:if>/>Has Teaser
		       </td>
		  </tr>
		  <tr>
		       <td> <input type="submit"  value="save" id="pvr1"></td>
		   </tr>
	     </table>
		 </form>
	 </div>
	   <footer>Copyright @ 2019</footer>
  </body>
</html>