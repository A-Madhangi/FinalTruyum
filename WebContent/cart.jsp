
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!Doctype html>
<html>
<head>
<title>View cart details</title>
<link rel="stylesheet" href="style/style.css">
</head>
<body>	
<header class="header container-fluid">
	<h2 class="header-itemleft">truYum</h2>
	<img src="images/logo.png" class="img_h">

	<a class="header-itemright" href="ShowMenuItemListCustomerServlet" style="margin:15px;">Menu</a>	
	<a class="header-itemright" href="ShowCartServlet" style="margin:15px;">Cart</a>																																																																																									
</header>	
<section class="body-main" style="overflow-x:auto;">
	<h1 class="body_h1">Cart</h1>
	
	<c:if test="${removeCartStatus}">
	 <p class="block_item"><b>Item removed from Cart successfully</b></p>
	</c:if>
	
	
	
	<table style="width:100%;" id="books">
		<tr>
			<th class="td_name">Name</th>
			<th class="td_delivery">Free Delivery</th>
			
			<th>Price</th>
			
		</tr>
		<c:set var="total" value="${0}"></c:set>
		<c:forEach var="cart" items="${cartMenuList}">
		<tr>
			<td class="td_name">${cart.name}</td>
			<td class="td_delivery">${cart.freeDelivery ? 'yes' : 'No' }</td>
			
			<td><fmt:setLocale value="en_IN"/><fmt:formatNumber type="currency" value="${cart.price}"/></td>
			<c:set var="total" value="${total+cart.price}"></c:set>
			<td>
			<a href="RemoveCartServlet?menuItemId=${cart.id}">Delete</a>
			</td>
		</tr>
		</c:forEach>
		<tr>
		<td></td>
		<td>Total:</td>
		<td><fmt:setLocale value="en_IN"/><fmt:formatNumber type="currency" value="${total}"/>
		</td></tr>
		</table>
</section>
			
<footer class="footer container-fluid">
	<p>&nbsp;&nbsp;Copyright &copy; Madhangi</p>
</footer>






  		
</body>
</html>
        