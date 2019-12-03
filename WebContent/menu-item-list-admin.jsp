<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="com.cognizant.truyum.model.MenuItem"  %>

<!Doctype html>
<head>
<title>Menu item list admin</title>
<link rel="stylesheet" href="style/style.css">
</head>
<body>
<header class="header container-fluid">
     <h2 class="header-itemleft">truYum</h2>
     <img class="img_h" src="images/logo.png">
     <a class="header-itemright" href="ShowMenuItemAdminServlet" style="margin:15px;">Menu </a>
</header>


<section class="body-main" style="overflow-x:auto;">
	<h1 class="body_h1">Menu List</h1>
	<table style="width:100%;" id="books">
		<tr>
			<th class="td_name">Name</th>
			<th class="td_price">Price</th>
			<th>Active</th>
			<th>Date of Launch</th>
			<th>category</th>
			<th>Free Delivery</th>
			<th>Action</th>
		</tr>
		<c:forEach var="item" items="${adminMenuItemList}">
		<tr>
			<td class="td_name">${item.name}</td>
			<td class="td_price"><fmt:setLocale value="en_IN"/><fmt:formatNumber type="currency" value="${item.price }"/></td>
			<td>${item.active ? 'Yes' : 'No'  }</td>
            <td><fmt:formatDate pattern="dd/MM/yyyy"  value="${item.dateOfLaunch }"/></td>
			<td>${item.category}</td>
			<td>${item.freeDelivery ? 'Yes' : 'No' }</td>
			

			<td>
			<a href="ShowEditMenuItemServlet?menuItemId=${item.id}">Edit</a>
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
