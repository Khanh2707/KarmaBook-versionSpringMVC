<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Nhà sách trực tuyến Karma</title>
<link rel="icon" type="image/x-icon" href="resources/image/logo/Karma-logo.png">
<link rel="stylesheet" href="resources/css/detail_book.css">
</head>
<body>
	<jsp:include page="../base.jsp" />
	<jsp:include page="header.jsp" />
	<c:set var="bookById" value="${bookById }" />
	<div class="body">
		<div class="body__path_category_product">
			<a href="<c:url value="/" />">Trang chủ</a>
			<span class="t">/</span>
			<c:forEach var="categoriesBookById" items="${bookById.categories }">
				<a href="#">${categoriesBookById.nameCategory }</a>
			</c:forEach>
			<span class="t">/</span>
			<span>${bookById.nameBook }</span>
		</div>
		<div class="body__detail_product">
			<div class="detail_product__img_and_info">
				<div class="detail_product__img">
					<div id="carouselExample" class="carousel slide">
				  		<div class="carousel-inner">
				  			<c:forEach var="imagesBookById" items="${bookById.images }" varStatus="loop">
						  		<div class="carousel-item ${loop.index == 0 ? 'active' : '' }">
									<img src="${imagesBookById.pathImage }" class="d-block w-100" alt="">
								</div>
							</c:forEach>
						</div>
						<button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
						    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
						    <span class="visually-hidden">Previous</span>
					  	</button>
					  	<button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
						    <span class="carousel-control-next-icon" aria-hidden="true"></span>
						    <span class="visually-hidden">Next</span>
					  	</button>
					</div>
					<span class="div_out-label_sale"> -${bookById.promotions[0].discountPromotion }% </span>
				</div>
				<div class="detail_product__info">
					<div class="detail_product__info-title">
						<span> ${bookById.nameBook } </span>
					</div>
					<div class="detail_product__info-price">
						<span class="detail_product__info-price-sale"> <fmt:formatNumber type="number" value="${(bookById.priceBook * (100 - bookById.promotions[0].discountPromotion)) / 100 }" /><ins>đ</ins>
						</span> <span class="detail_product__info-price-origin"> 
							<del>${bookById.priceBook }<ins>đ</ins></del>
						</span>
					</div>
					<div class="detail_product__info-description">
						<div class="detail_product__info-description-author info-description-container">
							<span class="detail_product__info-description-author-key info-description-key"> Tác giả: </span>
							<c:forEach var="authorsBookById" items="${bookById.authors }">
								<a href="#" class="detail_product__info-description-author-value"> ${authorsBookById.nameAuthor } </a>
							</c:forEach>
						</div>
						<div class="detail_product__info-description-supplier info-description-container">
							<span class="detail_product__info-description-supplier-key info-description-key"> Công ty phát hành: </span> 
							<span class="detail_product__info-description-supplier-value"> ${bookById.supplier.nameSupplier } </span>
						</div>
						<div class="detail_product__info-description-publishing_company info-description-container">
							<span class="detail_product__info-description-publishing_company-key info-description-key"> Nhà xuất bản: </span> 
							<span class="detail_product__info-description-publishing_company-value"> ${bookById.publisher.namePublisher } </span>
						</div>
						<div class="detail_product__info-description-publishing_year info-description-container">
							<span class="detail_product__info-description-publishing_year-key info-description-key"> Năm xuất bản: </span>
							<span class="detail_product__info-description-publishing_year-value"> ${bookById.yearPublicationBook } </span>
						</div>
					</div>
					<div class="detail_product__info-content">
						<span class="detail_product__info-content-key info-description-key"> Nội dung: </span> <br> 
						<span class="detail_product__info-content-value"> ${bookById.fullDescriptionBook } </span>
					</div>
					<div class="detail_product__info-version">
						<span class="detail_product__info-version-key info-description-key"> Phiên bản </span> <br> 
						<select name="" id="" class="detail_product__info-version-value">
							<c:forEach var="versionsBookById" items="${bookById.versions }">
								<option value="">${versionsBookById.nameVersion }</option>
							</c:forEach>
						</select>
					</div>
					<div class="detail_product__quantity_box">
						<span class="quantity_box-down"> - </span> 
						<input class="quantity_box-num" type="text" value="01" name="num">
						<span class="quantity_box-up"> + </span>
					</div>
					<div class="detail_product__info-button">
						<a href="#" class="detail_product__info-button_add_cart"> Thêm vào giỏ hàng </a>
						<a href="#" class="detail_product__info-button_buy"> Mua ngay </a>
					</div>
				</div>
			</div>
		</div>
		<div class="body__content-full">
			<span> NỘI DUNG CHI TIẾT </span> <br>
			<p>${bookById.fullDescriptionBook }</p>
		</div>
		<div class="body__books_same_author">
			<div class="books_same_author__title">
				<span> SÁCH CÙNG TÁC GIẢ </span>
			</div>
			<div class="books_same_author-container_product">
				<div class="list_product-div_out">
					<div class="list_product-div_in">
						<div class="list_product-div_in-img">
							<a href="#"><img src="" alt=""></a>
						</div>
						<div class="list_product-div_in-info_book_short_des">
							<span> <a href="#"> abc </a>
							</span>
							<div class="div_in-price">
								<span class="div_in-price-sale">abc<ins>đ</ins></span> 
								<span class="div_in-price-origin"> 
									<del>abc<ins>đ</ins></del>
								</span>
							</div>
						</div>
						<div class="div_in__choice_hover">
							<div class="eye">
								<i class="fa-solid fa-eye"></i>
							</div>
							<div>
								<i class="fa-solid fa-bag-shopping"></i>
							</div>
							<div>
								<i class="fa-solid fa-cart-shopping"></i>
							</div>
						</div>
					</div>
					<span class="div_out-label_sale">-%</span>
				</div>
			</div>
		</div>
	</div>
	<!-- body -->
	<jsp:include page="footer.jsp" />
</body>
</html>