<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" href="https://png.pngtree.com/png-clipart/20190614/original/pngtree-beer-vector-png-image_3727423.jpg" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet"
	href="https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css">
	
<link rel="stylesheet" href="/css/admin.css">
<%--   <script src="<c:url value="/static/js/main.js" />"></script> --%>
<!-- <script src="js/script.js"></script> -->


<title>Dashboard</title>
</head>
<body>
	<!-- partial:index.partial.html -->
	<nav class="menu">
		<div class="navbar">
			<i class="bx bx-menu"></i>
			<div class="logo">
				<a href="/index">1972 SINCE-BEER</a>
			</div>
			<div class="nav-links">
				<div class="sidebar-logo">
					<span class="logo-name"></span> <i class="bx bx-x"></i>
				</div>
				<ul class="links">
					<li><a href="/index">HOME</a></li>
					<!-- <li><a href="/product">SẢN PHẨM</a> <i
						class="bx bxs-chevron-down htmlcss-arrow arrow "></i>
						<ul class="htmlCss-sub-menu sub-menu">
							<li><a href="#">Web Design</a></li>
							<li><a href="#">Login Forms</a></li>
							<li><a href="#">Card Design</a></li>
							<li class="more"><span><a href="#">More</a> <i
									class="bx bxs-chevron-right arrow more-arrow"></i> </span>
								<ul class="more-sub-menu sub-menu">
									<li><a href="#">Neumorphism</a></li>
									<li><a href="#">Pre-loader</a></li>
									<li><a href="#">Glassmorphism</a></li>
								</ul></li>
						</ul></li> -->
					<!-- <li><a href="#">SẢN PHẨM</a> <i
						class="bx bxs-chevron-down js-arrow arrow "></i>
						<ul class="js-sub-menu sub-menu">
							<li><a href="#">Dynamic Clock</a></li>
							<li><a href="#">Form Validation</a></li>
							<li><a href="#">Card Slider</a></li>
							<li><a href="#">Complete Website</a></li>
						</ul></li> -->
					<li><a href="/product">SẢN PHẨM</a></li>
					<li><a href="#">CONTACT US</a></li>
				</ul>
			</div>
			
		</div>
		
	</nav>
	<!-- partial -->
	<div class="container-fluid">
		<div class="row">
			<div class="listsp col col-md-2" style="margin-top: 10px;">
				<ul class="list-group">
					<div class="card-header bg-primary text-white text-uppercase">
						<i class="fa fa-list"></i> DANH MỤC
					</div>
					<ul class="list-group category_block">
						<li class="list-group-item"><a href="/product/listproduct">Sản
								Phẩm</a></li>
						<li class="list-group-item"><a href="/category/listcategory">Loại
								Sản Phẩm</a></li>
						<li class="list-group-item"><a href="/account/listuser">Người
								Dùng</a></li>
					</ul>
			</div>
		</div>
	</div>
	<c:import url="/WEB-INF/view/admin/footer2.jsp" /> 
	
	<script type="text/javascript">
	// search-box open close js code
	let navbar = document.querySelector(".navbar");
	let searchBox = document.querySelector(".search-box .bx-search");
	// let searchBoxCancel = document.querySelector(".search-box .bx-x");

	searchBox.addEventListener("click", ()=>{
	  navbar.classList.toggle("showInput");
	  if(navbar.classList.contains("showInput")){
	    searchBox.classList.replace("bx-search" ,"bx-x");
	  }else {
	    searchBox.classList.replace("bx-x" ,"bx-search");
	  }
	});

	// sidebar open close js code
	let navLinks = document.querySelector(".nav-links");
	let menuOpenBtn = document.querySelector(".navbar .bx-menu");
	let menuCloseBtn = document.querySelector(".nav-links .bx-x");
	menuOpenBtn.onclick = function() {
	navLinks.style.left = "0";
	}
	menuCloseBtn.onclick = function() {
	navLinks.style.left = "-100%";
	}


	// sidebar submenu open close js code
	let htmlcssArrow = document.querySelector(".htmlcss-arrow");
	htmlcssArrow.onclick = function() {
	 navLinks.classList.toggle("show1");
	}
	let moreArrow = document.querySelector(".more-arrow");
	moreArrow.onclick = function() {
	 navLinks.classList.toggle("show2");
	}
	let jsArrow = document.querySelector(".js-arrow");
	jsArrow.onclick = function() {
	 navLinks.classList.toggle("show3");
	}
	
	</script>

</body>
</html>