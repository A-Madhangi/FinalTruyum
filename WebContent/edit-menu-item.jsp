<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>



<!Doctype html>
<html>
<head>
<title>Edit Menu Item</title>
<link rel="stylesheet" href="style/style.css">

<script type="text/javascript" src="js/edit-menu.js">

</script>
<style type="text/css">
.body-main th
{
text-align:left;
padding-top:20px;
}
.body-main td
{
text-align:left;
}
button[type="submit"]
{
padding-top:15px;
padding-bottom:15px;
padding-left:15px;
padding-right:15px;
background-color:#004080;
color:white;
border:0;

}              
</style>


</head>
<body>


<header class="header container-fluid">
	<h2 class="header-itemleft">truYum</h2>
	<img src="images/logo.png" class="img_h">
	<a class="header-itemright" href="ShowMenuItemListAdminServlet" style="margin:15px;">Menu</a>	
																																																																																									
</header>	

<section class="body-main" style="overflow-x:auto;">
     
  	<h1 class="body_h1">Edit Menu item</h1>
  <c:set var="dob" scope="request" value="${menuItem.dateOfLaunch}"/>
    <c:set var="categories" value="Fast food,Main course,Dessert,Drinks" scope="application"/>
    <c:set var="selected"  value="${menuItem.category }" scope="application"/>
	
    <form name="editMenuForm" action="EditMenuItemServlet" method="post" onsubmit="return validateMenuItem()">
        <table style="width:100%" id="">
	<tr><th colspan="4"><label for="mname">Name</label><th></tr>
	<tr><td colspan="4"><input type="text" id="mname" style="width:90%" name="mname" value="<c:out value="${menuItem.name}"/>"></td></tr>
	<tr>
	<th><label for="price">Price</label></th>
	<th><label for="active">Active</label></th>
	<th><label for="launch">Date of Launch</label></th>
	<th><label for="category">Category</label></th>
	</tr>


    

	<tr>
	<td><input type="text" name="price"  id="price" value="<c:out value="${menuItem.price}"/>"></td>
     <c:choose>
     <c:when test="${menuItem.active}">
	<td><input type="radio" name="available" value="yes" id="active" checked>Yes
	<input type="radio" name="available" value="no" id="active" >No</td>
	</c:when>
    <c:otherwise >
   
	<td>
	<input type="radio" name="available" value="yes" id="active" >Yes
	<input type="radio" name="available" value="no" id="active" checked>No
	</td>
	</c:otherwise>
    </c:choose>

	<td><input type="date" name="launch" id="launch"  value=<fmt:formatDate pattern="dd/MM/yyyy" value="${dob}" />>
    </td>
	
	<td>
	<select name="category" id="category">
	<option value="${menuItem.category}" selected>${selected}</option>
	<c:forEach items="${categories}" var="category">
    <c:if test="${category!=selected}">
    <option value="${category}">${category }</option>
	 </c:if>
	 </c:forEach> 
	</select></td>
	
   </tr>


	<tr>
	<td><input type="checkbox" name="freedelivery" value="" <c:if test="${menuItem.freeDelivery}"> checked="checked" </c:if> >
    <label>Free Delivery</label></td>
	
	
	</tr>

	<tr>
	<td><a href="edit-menu-item-status.jsp" style="color:white;"><button type="submit" name="save" value="Save">Save</a></td></button>
	</tr>


 	</table>
       

<input type="hidden" id="menuitemid" name="menuitemid" value="${menuItem.id }">
</form>
</section>
<footer class="footer container-fluid">
	<p>&nbsp;&nbsp;Copyright &copy; Madhangi</p>
</footer>
</body>
</html>