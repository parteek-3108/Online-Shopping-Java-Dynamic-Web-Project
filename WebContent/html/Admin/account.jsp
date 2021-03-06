<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@ page import="com.onlineStore.bean.Product,com.onlineStore.util.DBUtil,java.io.InputStream,java.sql.Connection,java.sql.PreparedStatement,java.sql.ResultSet" %>
    
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
				<h2>My Information </h4>
				<hr/>
				<div class="row justify-content-center">
					<div class="col-12">
						<h3 class="my-2">Name: Anish Rajan / Parteek Adlakha</h3>
						<h3 class="my-2">E-mail: anishrajan2708@gmail.com / ssparteek470@gmail.com</h3>
						<h3 class="my-2">Phone Number: 7888823191 / 9050243219</h3>
						<h3 class="mt-1" style="text-decoration: underline;">Address:</h3>
						<address style="color: black; font-size: large;">
							Plot No. 8055<br>
							Rajiv Gandhi Technology Park<br>
							Chandigarh<br>
							India
						</address>
					</div>
				</div>
			</div>
			<div id="merchants" class="container tab-pane fade"><br>
				<h3>Merchants</h3>
				<hr/>
				<div class="table-responsive">
                    <table class="table table-hover">
                        <thead>
                          <tr>
                            <th scope="col">#</th>
                            <th scope="col">Name</th>
                            <th scope="col">Email</th>
                            <th scope="col">Phone No.</th>
                            <th scope="col">Address</th>
                            <th scope="col">Aadhar Number</th>
                          </tr>
                        </thead>
                        <tbody>
                        <%
                		Connection con=DBUtil.getConnection();
                		PreparedStatement ps=con.prepareStatement("SELECT * FROM SELLER_FOR_SHOPPINGPROJECT");
                    	ResultSet rs=ps.executeQuery();
                        %>
							<%
                                int i = 1;
                                while(rs.next()) { %>
	                                <tr>
	                                    <th scope="row"><%= i++ %></th>
	                                    <td><a href="/Online_Shopping_Web/html/Admin/merchantInfo.jsp?name=<%= rs.getString(3) %>" style="text-decoration: none; color: black" ><%= rs.getString(1)+" "+rs.getString(2) %></a></td>
	                                    <td><%= rs.getString(3) %></td>
	                                    <td><%= rs.getString(4) %></td>
	                                    <td><%= rs.getString(5) %></td>
	                                    <td><%= rs.getString(7) %></td>
                                    </tr>
                               	<% }%>
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
                            <th scope="col">Name</th>
                            <th scope="col">Email</th>
                            <th scope="col">Phone No.</th>
							<th scope="col">Address</th>
							<th scope="col">Delete Account</th>
                          </tr>
                        </thead>
                        <tbody>
                        <%
                		PreparedStatement ps2=con.prepareStatement("SELECT * FROM CUSTOMER_FOR_SHOPPINGPROJECT");
                    	ResultSet rs2=ps2.executeQuery();
                        %>
 <%
                                i = 1;
                                while(rs2.next()) { %>
                                <tr>
                                    <th scope="row"><%= i++ %></th>
                                    <td><%= rs2.getString(1)+" "+rs2.getString(2) %></td>
                                    <td><%= rs2.getString(3) %></td>
                                    <td><%= rs2.getString(4) %></td>
									<td><%= rs2.getString(5) %></td>
									<td><a class="text-danger" href="/Online_Shopping_Web/ConsumerDelete?UserId=<%= rs2.getString(3) %>">Delete</a></td>
                                </tr>
                                <% }
                            %>
                        </tbody>
                      </table>
                </div>
			</div>
		</div>
	</div>
	
	<%@ include file="../Public/footer.jsp" %>
</body>
</html>