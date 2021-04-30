<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>New/Edit Contact</title>
	<jsp:include page="includes.jsp" />
</head>
<body>
	<div align="center" style="margin-top: 10px; padding: 20px">
		<h1>New/Edit Contact</h1>
		<div class="ui divider"></div>
		<form:form action="saveContact" method="post" modelAttribute="contact" class="ui form">
		<table style="width: 60%" align="center">
			<form:hidden path="id"/>
			<tr>
				<td>Name:</td>
				<td class="ui fluid input"><form:input path="name"/></td>
			</tr>
			<tr>
				<td>Email:</td>
				<td class="ui fluid input"><form:input path="email" /></td>
			</tr>
			<tr >
				<td>Address:</td>
				<td class="ui fluid input"><form:textarea path="address" rows="3"/></td>
			</tr>
			<tr >
				<td>Phone:</td>
				<td class="ui fluid input"><form:input path="telephone" /></td>
			</tr>
			<tr style="padding-left: 5%;padding-right: 5%;">
				<td colspan="2" align="center"><button type="submit" value="Save" class="large fluid ui green button" ><i class="save outline icon"></i>Save</button></td>
			</tr>
		</table>
		</form:form>
	</div>
	<style type="text/css">
		th, td { padding: 15px; }
	</style>
</body>
</html>