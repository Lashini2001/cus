<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix ="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>useraccount page</title>
<style type="text/css">

body {
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;
    background-image: url("b8.png")
    
}

 .formbold-main-wrapper {

	display: flex;

	align-items: center;

	justify-content: center;

	padding: 48px;

}



.formbold-form-wrapper {

	margin: 0 auto;

	max-width: 550px;

	width:100%;

	background: white;

}



.formbold-btn {

	text-align: center;

	font-size: 16px;

	border-radius: 6px;

	padding: 14px 32px;

	border: none;

	font-weight: 600;

	background-color: #6a64f1;

	color: white;

	width: 100%;

	cursor: pointer;

}



	.formbold-btn:hover {

		box-shadow: 0px 3px 8px rgba(0, 0, 0, 0.05);

	}
	

#about{

    color:#EFEFEF;

    background-color:rgb(73, 73, 158);

    border-color: rgb(73, 73, 158); 

    font-size: 30px;

    border-radius: 8px;

    margin: 10px;

    inline-size: 200px;

    margin-bottom: 50px;

	padding: 5px 0 0 0;

    

}

#contact{

    float: right;

    color:white;

    font-size: 30px;

    font-family: 'Times New Roman', Times, serif;

    margin-top:15px;

    margin-right:10px;

}

#icon{

    text-align:right;

    margin-right: 20px;

    margin-bottom: 10px;

    color:white;

    

}



fieldset{

margin: 500px;

 margin-top:150px;





}

</style>
</head>
<body>


<table>
<c:forEach var="cus" items="${cusDetails}">


<c:set var="id" value="${cus.id }"/>
<c:set var="name" value="${cus.name }"/>
<c:set var="email" value="${cus.email }"/>
<c:set var="phone" value="${cus.phone }"/>
<c:set var="username" value="${cus.username }"/>
<c:set var="password" value="${cus.password }"/>

<tr>
    <td>Customer ID : </td>
	<td>${cus.id}</td>
</tr>
	
<tr>
    <td>Customer Name : </td>
	<td>${cus.name}</td>
</tr>
	
<tr>
    <td>Customer Email : </td>
	<td>${cus.email}</td>
</tr>
	
<tr>
    <td>Customer Phone : </td>
	<td>${cus.phone}</td>
</tr>
	
<tr>
    <td>Customer Name : </td>
	<td>${cus.username}</td>
</tr>
	
<tr>
    <td>Customer Password : </td>
	<td>${cus.password}</td>
</tr>
	
	
	</c:forEach>
	
	</table>
	
	<c:url value="updatecustomer.jsp" var="cusupdate" >
	
	    <c:param name="id" value="${id}"/>
        <c:param name="name" value="${name}"/>
        <c:param name="email" value="${email}"/>
        <c:param name="phone" value="${phone}"/>
        <c:param name="username" value="${username}"/>
        <c:param name="password" value="${password}"/>
	
	</c:url>
	
	<a href="${cusupdate}">
	<button type="submit" name="submit" class="formbold-btn formbold-btn-primary formbold-btn-lg">Update</button>
	</a><br><br>
	
	<c:url value="deletecustomer.jsp" var="cusdelete" >
	
	    <c:param name="id" value="${id}"/>
        <c:param name="name" value="${name}"/>
        <c:param name="email" value="${email}"/>
        <c:param name="phone" value="${phone}"/>
        <c:param name="username" value="${username}"/>
        <c:param name="password" value="${password}"/>
        
        </c:url>
        
        <a href="${cusdelete}">
        
        <input type="button" name="delete" value="Delete" class="formbold-btn formbold-btn-primary formbold-btn-lg">
        
        </a><br>
        
       	
	
</body>
</html>