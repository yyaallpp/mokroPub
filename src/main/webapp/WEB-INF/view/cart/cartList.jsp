<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="dao.*"%>
<%@ page import="vo.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cartList</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Wish shop project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/bootstrap4/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/main_styles.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/responsive.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/animate.css">
<link href="plugins/colorbox/colorbox.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="super_container">
	<!-- Header -->		
	<jsp:include page="../../../WEB-INF/inc/navBar.jsp"></jsp:include>
	<!-- contents -->
	<div class="nullbox">
	</div>
	
	<!--  구현영역  -->
	<div class="container">
	<div class="row">
				<div class="col">
					<div class="section_title_container text-center">
						<div class="section_subtitle">목로주점</div>
						<div class="section_title">장바구니</div>
					</div>
				</div>
			</div>
      <div class="row">
         <div class="col">
         <div class="float-right">
         	<a href="${pageContext.request.contextPath}/deleteProductInCartController">
				<div class="btn btn-outline-secondary btn-sm">모두삭제</div>
			</a>
		</div>
					<table class ="table table-bordered">
					<c:forEach items="${cartList}" var="item">
						<form method="post" action="${pageContext.request.contextPath}/deleteProductInCartController">
						<tr>

							<td>
								<input type="hidden" value="${item.cartNo}" name="cartNo" >
								<input type="hidden" value="${item.productNo}" name="cartNo">
								<img src="images/product_1.jpg" width="150px">
							<br>
								${item.picture}
							</td>
							
							<td>
								${item.name}
							</td>
							
							<td>
								${item.price}원
							</td>
							<td>
								<div class="selectCount">
									<ul class="countList">
										<li class="currentCount">현재수량 : ${item.count}
											<ul class="submitCount">
												<li>
												<a href="${pageContext.request.contextPath}/updateProductInCartController?count=1&productNo=${item.productNo}">1</a>
												</li>
												<li>
												<a href="${pageContext.request.contextPath}/updateProductInCartController?count=2&productNo=${item.productNo}">2</a>
												</li>
												<li>
												<a href="${pageContext.request.contextPath}/updateProductInCartController?count=3&productNo=${item.productNo}">3</a>
												</li>
												<li>
												<a href="${pageContext.request.contextPath}/updateProductInCartController?count=4&productNo=${item.productNo}">4</a>
												</li>
												<li>
												<a href="${pageContext.request.contextPath}/updateProductInCartController?count=5&productNo=${item.productNo}">5</a>
												</li>
											</ul>
										</li>
									</ul>
								</div>
							</td>
							<td>
								<button type="submit">x</button>
							</td>
						</tr>
						</form>
						
					</c:forEach>
				</table>  
			</div>  
	</div>
	
</div>
	<!-- Footer -->	
	<jsp:include page="../../../WEB-INF/inc/footer.jsp"></jsp:include>
</div>
</body>
</html>