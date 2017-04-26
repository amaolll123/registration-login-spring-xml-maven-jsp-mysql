<%@include file="common/header.jspf" %>
<%@include file="common/navbar.jspf" %>
<style>
.table tbody tr td{
	padding-top:14px;
}
</style>

 <body style="background-color: #eee">

<div class="container" >
<br>

<table class="table table-striped table-hover table-responsive">
	<caption style="font-size: xx-large;">Accounts Management</caption>
	<thead>
		<tr style="font-size: large;">
			<th>ID</th>
			<th>Name</th>
			<th>Role</th>
			<th>Action</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="user" items="${userList.getUserList() }">
			<tr>
				<td>${user.id }</td>
				<td>${user.username}</td>
				<td>
					<c:choose>
						<c:when test="${user.id==8 }">ADMIN</c:when>
						<c:when test="${user.id==7 }">Manager</c:when>
						<c:otherwise>User</c:otherwise>
					</c:choose>
					
				</td>
				<td><a class="btn btn-danger" href="/account/delete-user?id=${user.id }" >DELETE</a>
				</td>
				
			</tr>
		</c:forEach>
	</tbody>
</table>
<br>

	
</div>
<%@include file="common/footer.jspf" %>