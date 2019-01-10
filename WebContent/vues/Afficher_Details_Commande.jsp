<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/styles/bootstrap.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/styles/styles.css" />

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<%@include file="Menu_C.html"%>
	</div>
	<div id="divParent" class="container">
		<p style="color: red">${empty msg ? '' : msg }</p>

		<h1>${empty IdArticle ? '' : IdArticle}</h1>
		<c:forEach items="${listArticles}" var="article">
			<div class="table table-hover" style="width: 18rem;">
				<table class="table table-striped table-responsive-md btn-table">
					<tbody>
						<tr>
							<td><img alt="Image de ${article.getLibelle()}"
								src="file://${sessionScope.path_image}${article.getNomImage()}"
								class="img-fluid" height="auto"></td>
						</tr>
						<tr>
							<th>Libell� :</th>
							<td>${article.getLibelle()}</td>
						</tr>
						<tr>
							<th>Prix :</th>
							<td>${article.getPrix()}</td>
						</tr>
						<tr>
							<th>Description :</th>
							<td>${article.getDescriptif()}</td>
						</tr>
					</tbody>
				</table>
				</div>
		</c:forEach>
		<!-- 	session.getAttribute("path_image") + "//"+ article.getNomImage() -->
	</div>
</body>
</html>