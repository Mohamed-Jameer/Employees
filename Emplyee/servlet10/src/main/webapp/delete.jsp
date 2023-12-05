<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
	crossorigin="anonymous">

</head>
<a href="ad.html"><div style="text-align: left;">
		<img src="Thunivu title.png" alt="nature view" height="100px"
			width="1500px" object-fit="cover">
	</div></a>


<h1 class="display-1" style="text-align: center;">EMPLOYEE
	MANAGEMENT SYSTEM</h1>
<body class="p-3 mb-2 bg-light text-dark">
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
		crossorigin="anonymous"></script>
	<ul
		class="nav nav-pills nav-fill gap-2 p-1 small bg-primary rounded-5 shadow-sm"
		id="pillNav2" role="tablist"
		style="--bs-nav-link-color: var(--bs-white); --bs-nav-pills-link-active-color: var(--bs-primary); --bs-nav-pills-link-active-bg: var(--bs-white);">
		<li class="nav-item" role="presentation"><a href="ad.html">
				<button class="nav-link active rounded-5" id="home-tab2"
					data-bs-toggle="tab" type="button" role="tab" aria-selected="true">Home</button>
		</a></li>
		<li class="nav-item" role="presentation"><a href="ad.html">
				<button class="nav-link rounded-5" id="profile-tab2"
					data-bs-toggle="tab" type="button" role="tab" aria-selected="false">Menu</button>
		</a></li>
		<li class="nav-item" role="presentation">
			<button class="nav-link rounded-5" id="contact-tab2"
				data-bs-toggle="tab" type="button" role="tab" aria-selected="false">Contact</button>
		</li>
	</ul>
	<br>
	<br>

	<button class="btn btn-outline-success" onclick="history.back()">
		<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
			fill="currentColor" class="bi bi-menu-button-wide-fill"
			viewBox="0 0 16 16">
        <path
				d="M1.5 0A1.5 1.5 0 0 0 0 1.5v2A1.5 1.5 0 0 0 1.5 5h13A1.5 1.5 0 0 0 16 3.5v-2A1.5 1.5 0 0 0 14.5 0h-13zm1 2h3a.5.5 0 0 1 0 1h-3a.5.5 0 0 1 0-1zm9.927.427A.25.25 0 0 1 12.604 2h.792a.25.25 0 0 1 .177.427l-.396.396a.25.25 0 0 1-.354 0l-.396-.396zM0 8a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v5a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V8zm1 3v2a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1v-2H1zm14-1V8a1 1 0 0 0-1-1H2a1 1 0 0 0-1 1v2h14zM2 8.5a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9a.5.5 0 0 1-.5-.5zm0 4a.5.5 0 0 1 .5-.5h6a.5.5 0 0 1 0 1h-6a.5.5 0 0 1-.5-.5z" />
      </svg>
		Back
	</button>
	<br>
	<br>
	<%@page import="java.sql.DriverManager"%>
	<%@page import="java.sql.ResultSet"%>
	<%@page import="java.sql.PreparedStatement"%>
	<%@page import="java.sql.Connection"%>
	<%!ResultSet rs;%>
	<%!PreparedStatement ps;%>
	<%!Connection conn;%>
	<h2 align="center">
		<font><strong>Delete Database</strong></font>
	</h2>
	<%
	    int deleteId=Integer.parseInt(request.getParameter("d"));
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/tasksdb", "root", "");
		PreparedStatement prt = conn.prepareStatement("DELETE FROM `users` WHERE id=?");
		prt.setInt(1, deleteId);
		int co=prt.executeUpdate();
		if(co>0){%>
		<%="Delete SuccessFully"%>
		<% }
		else{%>
			<%="Not Delete SuccessFully"%>
		<% }%>
	


</body>
</html>