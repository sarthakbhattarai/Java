	<% String Total2 = request.getParameter("Total"); %>
	
	<input type = "hidden" name = "Total" value =<%=Total2 %> >
	
	<% String CusName2 = request.getParameter("CusName"); %>
	
	<input type = "hidden" name = "CusName" value =<%=CusName2 %> >
	
	
	

	<%@ include file="validateloginc.jsp" %>

	<div style='margin-left:40% '>
	
	<b style='color: firebrick'>Welcome <%= N%> </b> 
	
	<b>
	<a href="cart.jsp" class="w3-bar-item w3-button" ><img src = images/cart.png height=40px alt=Cart></a>
	<b style="position: relative;
  top: 16px;
  right: 37px;"></b>
	</b>
	<a href="orders.jsp" class="w3-bar-item w3-button" ><b> View Orders List</b></a>
	
	<a href="customerlogin.jsp" class="w3-bar-item w3-button" ><b>Customer Logout</b></a>
	
	<a href="contactusc.jsp" class="w3-bar-item w3-button" ><b>Contact Us</b></a>
	
	</div>
	<center>
	<b class="w3-wide" style="width:250px"> <h3><b>Online Electronic Shopping</b></h3></b>
	
	<div class=" w3-large w3-text-grey" style="font-weight:bold">
	
	<a href="customerhome.jsp" class="w3-bar-item w3-button" >Home</a>&ensp;

	<a href="categoryc.jsp" class="w3-bar-item w3-button" >Category</a>&ensp;

	<a href="viewproductc.jsp" class="w3-bar-item w3-button" >All Product</a>&ensp;
	
	<a href="aboutusc.jsp" class="w3-bar-item w3-button" >About Us</a>&ensp;
	
	<a href="profile.jsp" class="w3-bar-item w3-button" >Profile</a>&ensp;
	<form action="search.jsp" method="GET">
    <!-- Input field for entering search query -->
    <input type="text" name="query" placeholder="Search products...">
    <!-- Button to submit the form -->
    <button type="submit">Search</button>
</form>

	
	
	</div>
	<hr>
	
	