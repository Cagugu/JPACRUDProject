<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="bootstrap.jsp" %>
<form action="updateCoffee.do" method="POST">
		<input type= "hidden" name= "id" value = "${coffee.id }"/>

	<div class="form-group row">
		<Label class="col-sm-2 col-form-label">Name your creation:</Label>
	 <div class="col-sm-10">	 <input type="text" name="name" /></div>
	</div>
		
	<div class="form-group row">
		<label for="size" class="col-sm-2 col-form-label">Select a size:</label> <br> 
		<input type="radio" name="size" id="small" value= "Small"/>
		 <label for="small">Small</label> 
		 
		 <input	type="radio" name="size" id="medium" value= "Medium"/> 
			<label for="medium">Medium</label>

		<input type="radio" name="size" id="large" value= "Large"/>
		 <label for="large">Large</label><br>
	</div>
	<div class="form-group row">
		<label class="col-sm-2 col-form-label">Hot or Iced?</label>
		 <input type="radio" name="hotOrIced" id="hot"
			value="Hot" /> 
			<label for="hot">Hot</label> 
			<input type="radio" name="hotOrIced" id="iced" value="Iced" /> 
			<label for="iced">Iced</label>
			</div>
			
			<div class="form-group row">
		<br> <label for="flavor" class="col-sm-2 col-form-label">Pick your flavor:</label> 
		<select name= "flavor">
			<option  value="Caramel">Caramel</option>
			<option value="Vanilla">Vanilla</option>
			<option value="White Chocolate">White Chocolate</option>
			<option  value="Honey">Honey</option>
			<option  value="Lavender">Lavender</option>
			<option  value="Plain">No Flavor</option>
		</select><br> 
		</div>
		
		<div class="form-group row">
		<label for="milk" class="col-sm-2 col-form-label">Pick your milk:</label> 
		<select name = "milkOption">
			<option value="Oat">Oat</option>
			<option value="Almond">Almond</option>
			<option value="Soy">Soy</option>
			<option value="Lactaid">Lactaid</option>
			<option value="Fat free">Fat-Free</option>
			<option value="Whole">Whole</option>
		</select><br> <input type="submit" value="Submit">
		</div>
	</form>
	

</body>
</html>