<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*, com.school.vo.*"
    isELIgnored="false"
    %>
<%@ taglib prefix="form"  uri="http://www.springframework.org/tags/form" %>

    
<% String contextPath = request.getContextPath(); %>    
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Bootstrap 101 Template</title>

<!-- Bootstrap -->
<link href="<%=contextPath %>/css/bootstrap.min.css" rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

<style>
body {
	padding-top: 50px;
}
.footer {
  position: absolute;
  bottom: 0;
  width: 100%;
  /* Set the fixed height of the footer here */
  height: 60px;
  background-color: #f5f5f5;
}
.footer > .container {
  padding-right: 15px;
  padding-left: 15px;
}
</style>

</head>
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">BankWeb</a>
			</div>
			<div id="navbar" class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">메뉴1</a></li>
					<li><a href="#about">메뉴2</a></li>
					<li><a href="#contact">메뉴3</a></li>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</nav>

	<div class="container">
		<div class="row">
			<div class="col-md-offset-2 col-md-8">
				<div class="page-header">
					<h1>
						메뉴1 <small>사용자 추가</small>
					</h1>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-offset-2 col-md-8">
				<ol class="breadcrumb">
					<li><a href="#">Home</a></li>
					<li><a href="#">Library</a></li>
					<li class="active">Data</li>
				</ol>
			</div>
		</div>

		<div class="row">
			<div class="col-md-offset-2 col-md-8">
				<%-- <form action="<%=contextPath%>/springmvc/user/create/action" method="post">
				  <div class="form-group">
				    <label for="userid">사용자 ID</label>
				    <input type="text" class="form-control" id="userid" name="userId" placeholder="아이디를 입력해주세요">
				  </div>
				  <div class="form-group">
				    <label for="name">사용자명</label>
				    <input type="text" class="form-control" id="name" name="name" placeholder="이름을 입력해주세요">
				  </div>
				  <button type="submit" class="btn btn-default">Submit</button>
				</form> --%>
				<form:form action="${pageContext.request.contextPath }/springmvc/user/create/action" 
						method="post" 
						modelAttribute="usersVo">
					<div class="form-group">
					    <label for="userid">사용자 ID</label>
					    <form:input path="userId" cssClass="form-control" placeholder="아이디를 입력해주세요"/>
					    <form:errors path="userId" cssStyle="color:red" element="span" />
   				    </div>
   				    <div class="form-group">
					    <label for="name">사용자명</label>
					    <form:input path="name" cssClass="form-control" placeholder="이름을 입력해주세요"/>
					    <form:errors path="name" cssStyle="color:red" element="span" />
					</div>
				    <button type="submit" class="btn btn-default">Submit</button>
				</form:form>
				

			</div>
		</div>
	</div>
	
	<footer class="footer">
      <div class="container">
        <p class="text-muted">Place sticky footer content here.</p>
      </div>
    </footer>







	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="<%=contextPath %>/js/bootstrap.min.js"></script>
</body>
</html>