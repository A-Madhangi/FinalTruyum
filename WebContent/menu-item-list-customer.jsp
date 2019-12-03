
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="com.cognizant.truyum.model.MenuItem"  %>

<!Doctype html>
<html>
<head>
<title>Menu item customer</title>
<link rel="stylesheet" href="style/style.css">

</head>
<body>	
<header class="header container-fluid">
	<h2 class="header-itemleft">Menu Items</h2>
	<img src="images/logo.png" class="img_h">
	<a class="header-itemright" href="ShowMenuItemListCustomerServlet" style="margin:15px;">Menu</a>	
	<a class="header-itemright" href="ShowCartServlet" style="margin:15px;">Cart</a>																																																																																									
</header>	

<section class="body-main" style="overflow-x:auto;">
	<h1 class="body_h1">Menu List</h1>
	<c:if test="${addCartStatus}">
	<div class="alert">
      
        <center><strong>Item added to cart successfully</strong></center>
	</div>	
	</c:if>
	<table style="width:100%;" id="books">
		<tr>
			<th class="td_name">Name</th>
			<th class="td_delivery">Free Delivery</th>
			
			<th>Price</th>
			<th>Category</th>
			<th>Action</th>
		</tr>
		<c:forEach var="item" items="${customerMenuItemList}">
		<tr>
			<td class="td_name">${item.name}</td>
			<td class="td_delivery">${item.freeDelivery ? 'Yes' : 'No' }</td>
			
			<td><fmt:setLocale value="en_IN"/><fmt:formatNumber type="currency" value="${item.price }"/></td>
			<td>${item.category}</td>
			<td>
			<a href="AddToCartServlet?menuItemId=${item.id}">Add to cart</a>
			</td>
		</tr>
        </c:forEach>

		</table>
</section>
			
<footer class="footer container-fluid">
	<p>&nbsp;&nbsp;Copyright &copy; Madhangi</p>
</footer>






  		
</body>
</html>