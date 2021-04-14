<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="spring" %>
    <%@ taglib uri = "http://www.springframework.org/tags/form"prefix="form"%>
    
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<!DOCTYPE html>
<html>
<head>
<!-- <meta charset="UTF-8"> -->
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859">
<title>Article Form</title>
<!-- LIAT DEPEDENCY BUAT SAMAIN DIRECTORY BOOTSTRAP & JS-->
<link href="../../webjars/bootstrap/4.6.0.1/css/bootstrap.min.css" rel="stylesheet">
<script src="../../webjars/bootstrap/4.6.0.1/js/bootstrap.min.js"></script>
<script src="../../webjars/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	<div class ="container">
		<spring:url value= "/article/saveArticle" var="saveURL"/>
		<h2>Article</h2>
		<form:form modelAttribute="articleForm" method="post"action="${saveURL}"cssClass="form">
		<form:hidden path="td"/>
		<div class="form-group">
		<label>Title</label>
		<form:input path="title"cssClass="form-control"id="title"/>
		</div>
		
		<div class="form-group">
		<label>Category</label>
		<form:input path="category"cssClass="form-control"id="category"/>
		</div>
		<button type="submit" class="btn btn-primary">Save</button>
		
		</form:form>
		
		
	
	</div>
</body>
</html>