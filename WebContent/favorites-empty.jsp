<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html> 
  <head>
     <title>favorites empty</title>
	 <link rel="stylesheet" type="text/css" href="./style/style.css"/>
  </head>
  <body>
    <header>
      <span id ="head">Movie Cruiser </span>
	  <img src="./images/logo.png">
	  <a id="menu" href="ShowFavorite">  Favorite </a>
	  <a id="menu" href="ShowMovieListCustomer"> Movies </a>
    </header>
	  <div>
	    <h3 class="cont">Favorites</h3>
	    <h4 class="cart">No item in Favorite.Use 'Add to Favorite' option in<a id="pvr4" href="ShowMovieListCustomer"> Movie List </a></h4>
	  </div>
	  <footer>Copyright @ 2019</footer>
  </body>
</html>