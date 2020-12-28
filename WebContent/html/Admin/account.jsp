<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>My Account</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<style>
	.nav-item .active {
    	background-color: rgba(72, 72, 72, 0.6) !important;
    }
    .nav-item .nav-link {
    	color: #000
	}
	/* #main {
		background-color: rgba(154, 154, 154, 0.3);
	} */
	#addProduct input, textarea,
	#deleteProduct input,
	#updateProduct input{
		width: 85%;
		border: none;
		padding: 15px 20px;
		border-radius: 25px;
		background: rgba(87, 87, 87, 0.1)
	}
	#addProduct label,
	#updateProduct label,
	#deleteProduct label {
		font-size: large;
	}
	#addProduct input[type="submit"],
	#deleteProduct input[type="submit"],
	#updateProduct input[type="submit"] {
		width: auto;
		background: rgb(39, 38, 38);
		color: white;
	}
	::placeholder {
		color: #8f8c8c
	}
</style>
<body>
	<%@ include file="../Public/header.jsp" %>
	
	<div class="container my-3" id="main">
		<!-- Nav pills -->
		<ul class="nav nav-pills" role="tablist">
			<li class="nav-item">
				<a class="nav-link active" data-toggle="pill" href="#outline-primary">My Information</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" data-toggle="pill" href="#merchants">View Merchants</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" data-toggle="pill" href="#consumers">View Consumers</a>
			</li>
		</ul>
		  
		<!-- Tab panes -->
		<div class="tab-content">
			<div id="outline-primary" class="container tab-pane active"><br>
				<h3>My Information</h3>
			</div>
			<div id="merchants" class="container tab-pane fade"><br>
				<h3>Merchants</h3>
				<hr/>
				<div class="table-responsive">
                    <table class="table table-hover">
                        <thead>
                          <tr>
                            <th scope="col">#</th>
                            <th scope="col">First</th>
                            <th scope="col">Last</th>
                            <th scope="col">Handle</th>
                          </tr>
                        </thead>
                        <tbody>
                        	<!-- <%
                                int i = 1;
                                while(rs.next()) { %>
                                    <th scope="row"><%= i++ %></th>
                                    <td><a target="_blank" href="/Online_Shopping_Web/ConsumerDisplay?id=<%= res.getString("id") %>"><%= %></a></td>
                                    <td><%= %></td>
                                    <td><%= %></td>
                                <% }
                            %> -->
                        </tbody>
                      </table>
                </div>
			</div>
			<div id="consumers" class="container tab-pane fade"><br>
				<h3>Consumers</h3>
				<hr/>
				<div class="table-responsive">
                    <table class="table table-hover">
                        <thead>
                          <tr>
                            <th scope="col">#</th>
                            <th scope="col">First</th>
                            <th scope="col">Last</th>
                            <th scope="col">Handle</th>
                          </tr>
                        </thead>
                        <tbody>
                        	<!-- <%
                                i = 1;
                                while(rs.next()) { %>
                                    <th scope="row"><%= i++ %></th>
                                    <td><a target="_blank" href="/Online_Shopping_Web/ConsumerDisplay?id=<%= res.getString("id") %>"><%= %></a></td>
                                    <td><%= %></td>
                                    <td><%= %></td>
                                <% }
                            %> -->
                        </tbody>
                      </table>
                </div>
			</div>
		</div>
	</div>
	
	<%@ include file="../Public/footer.jsp" %>
</body>
</html>