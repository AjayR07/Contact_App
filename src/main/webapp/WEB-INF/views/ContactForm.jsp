<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<%String id=request.getParameter("id"); %>
	<%if(id == null || id.length() == 0){
		out.print("<title>New Contact</title>");
	}
	else {
		out.print("<title>Edit Contact</title>");
	} %>

	<jsp:include page="includes.jsp" />
</head>
<body>
	<div align="center" style="margin-top: 10px; padding: 20px">
		<%if(id == null || id.length() == 0){
			out.print("<h1 class='ui huge header'>New Contact</h1>");
		}
		else {
			out.print("<h1 class='ui huge header'>Edit Contact</h1>");
		} %>
		<div class="ui divider"></div>
		<form:form action="saveContact" method="post" modelAttribute="contact" class="ui form">
		<table style="width: 60%" align="center">
			<form:hidden path="id"/>
			<tr>
				<td>Name:</td>
				<td class="ui fluid input"><form:input path="name" required="required"/></td>
			</tr>
			<tr>
				<td>Email:</td>
				<td class="ui fluid input"><form:input path="email" type="email" required="required"/></td>
			</tr>
			<tr >
				<td>Address:</td>
				<td class="ui fluid input"><form:textarea path="address" rows="3" required="required"/></td>
			</tr>
			<tr >
				<td>Phone:</td>
				<td class="ui fluid input"><form:input path="telephone" maxlength="10" required="required"/></td>
			</tr>
			<tr style="padding-left: 5%;padding-right: 5%;">
				<td align="center"><button type="submit" value="Save" class="large ui green button"><i class="save outline icon"></i>Save</button></td>
				<td align="center"><a href="${pageContext.request.contextPath}/"><button type="button" class="large ui negative button"><i class="times circle outline icon"></i>Close</button></a></td>
			</tr>
		</table>
		</form:form>
	</div>
	<style type="text/css">
		th, td { padding: 15px; }
	</style>
</body>
</html>