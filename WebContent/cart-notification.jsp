<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!Doctype html>
<html>
<head>
<title>Edit book</title>
<link rel="stylesheet" href="style/style.css">
</head>
<body>
<header class="header container-fluid">
	<h2 class="header-itemleft">truYum</h2>
	<img src="images/logo.png" class="img_h">
	<a class="header-itemright" href="ShowCartServlet" style="margin:15px;">Menu</a>	
																																																																																									
</header>	

<section class="body-main" style="overflow-x:auto;">
  <h1 class="body_h1">Cart</h1><br>
  
	<c:if test="${removeCartStatus}">
	 <p class="block_item"><b>Item removed from Cart successfully</b></p>
	</c:if>
	
 

  <table style="width:100%;" id="books">
		<tr>
			<th class="td_name">Name</th>
			<th class="td_delivery">Free Delivery</th>
			
			<th>Price</th>
			
		</tr>
		<c:forEach var="cartt" items="${removeMenuItemList}">
		<tr>
			<td class="td_name">${cartt.name}</td>
			<td class="td_delivery">${cartt.freeDelivery ? 'yes' : 'No' }</td>
			
			<td><fmt:formatNumber type="currency" value="${cartt.price}"/></td>
			<td>
			<a href="RemoveCartServlet?menuItemId=${cartt.id }">Delete</a>
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