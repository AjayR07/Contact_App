<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact Manager</title>
		<jsp:include page="includes.jsp" />
	</head>
    <body>
    	<div align="center" style="margin-top: 10px; padding: 20px">
			<h1 class="ui huge header"><i class="address card outline icon"></i> <div class="content">Spring Contacts</div></h1>
			<div class="ui divider"></div>
			<div class="ui container">
	        <table class="ui selectable celled table">
				<thead>
				<tr>
					<th>No</th><th>Name</th><th>Email</th><th>Address</th><th>Phone</th><th>Action</th>
				</tr>
				</thead>
				<tbody>
				<c:forEach var="contact" items="${listContact}" varStatus="status">
	        	<tr>
	        		<td>${status.index + 1}</td>
					<td>${contact.name}</td>
					<td>${contact.email}</td>
					<td>${contact.address}</td>
					<td>${contact.telephone}</td>
					<td>
						<div class="ui buttons">
							<a href="editContact?id=${contact.id}"><button class="ui teal button"><i class="edit outline icon"></i>Edit</button></a>
							<div class="or"></div>
							<button class="ui orange button" id="delete${contact.id}"><i class="trash alternate outline icon"></i>Delete</button>
							<div class="large ui popup"  id="popup${contact.id}">
								<div class="header" style="margin-bottom: 3px">Are you Sure?</div>
								<div class="ui divider" style="margin-bottom: 5px"></div>
								<a href="deleteContact?id=${contact.id}"><button class="compact ui negative button">Yes</button></a>
							</div>
							<script type="text/javascript">
								$(document).ready(function() {
									$('#delete${contact.id}').popup({popup: '#popup${contact.id}', hoverable:true});
								});
							</script>
						</div>

					</td>
							
	        	</tr>
				</c:forEach>
				</tbody>
				<tfoot class="full-width">
					<tr>
						<th colspan="6">
							<a href="newContact">
								<div class="ui right floated small purple labeled icon button">
									<i class="user icon"></i> Add Contact
								</div>
							</a>
						</th>
					</tr>
				</tfoot>
			</table>
			</div>
    	</div>
<%--    <script type="text/javascript">--%>
<%--		$(document).ready(function() {--%>
<%--			$('.ui.orange.button.delete').popup({popup: '.popup',hoverable:true});--%>
<%--		});--%>
<%--	</script>--%>
	</body>
</html>
