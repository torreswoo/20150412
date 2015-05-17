<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*, com.school.vo.*"
    %>
<% 
 String contextPath = request.getContextPath();
%>    
<% List<UsersVo> list = (List)request.getAttribute("list"); %>
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
					<li><a href="/bankweb/springmvc/ajax/list">목록</a></li>
					<li><a href="/bankweb/springmvc/ajax/hello">hello</a></li>
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
						메뉴1 <small>목록</small>
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
			
				<input type="button" value="ajax실행" id="ajaxBtn"/>
				<table class="table table-striped table-hover">
					<thead>
						<tr>
							<th>SEQ</th>
							<th>이름</th>
							<th>아이디</th>
						</tr>
					</thead>
					<tbody id="listBody">
					</tbody>
				</table>


			</div>
		</div>

		<div class="row">
			<div class="col-md-12 text-center">
				<nav>
					<ul class="pagination">
						<li><a href="#" aria-label="Previous"> <span
								aria-hidden="true">&laquo;</span>
						</a></li>
						<li><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#" aria-label="Next"> <span
								aria-hidden="true">&raquo;</span>
						</a></li>
					</ul>
				</nav>
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
	
	
	<script>
var ajaxData ;

function ajaxBtnClick(){
	$.ajax({
		url: '/bankweb/springmvc/ajax/getAjaxList',
		success : function(data, status, jqXHR){
			for(var i=0; i < data.length; i++){
				$('#listBody').append(
					$('<tr></tr>')
						.append(
							$('<td></td>').text(data[i].id)		
						).append(
							$('<td></td>').text(data[i].userId)	
						).append(
							$('<td></td>').text(data[i].name)	
						)
				)	
			}
					
		}
	})
}	

$('#ajaxBtn').click(ajaxBtnClick);
	
	
	</script>	
</body>
</html>