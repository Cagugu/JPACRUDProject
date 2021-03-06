<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<style>
.fa {
  padding: 10px;
  font-size: 15px;
  width: 30px;
  text-align: center;
  text-decoration: none;
}
.fa:hover {
    opacity: 0.7;
}
/* Facebook */
.fa-facebook {
  background: #3B5998;
  color: white;
}
#searchbutton {
background-color: #f6e7cb;
color: #582f0e;
border-color:#582f0e;
}
.navbar {
background-color: #ddb892;
}
#subinput {
background-color: #f6e7cb;
}
</style>
<body>


<nav class="navbar navbar-expand-lg navbar-light">
  <a class="navbar-brand" href="#">Pick Your Roast</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="home.do">Take Me Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="create.do">Make Your Own Creation</a>
      </li>
      <li >
        <a class="fa fa-facebook" href="https://www.facebook.com/profile.php?id=100069380861737"></a>
      </li>
      
    </ul>
    <form class="form-inline my-2 my-lg-0" action="search.do">
      <input id= "subinput" class="form-control mr-sm-2" name="id" type="search" placeholder="Search" aria-label="Search">
      <button id= "searchbutton" class="btn btn-outline-success my-2 my-sm-0" type="submit">Search by Id or Keyword</button>
    </form>
  </div>
</nav>


<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>

</html>