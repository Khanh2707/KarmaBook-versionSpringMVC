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
<!-- <link rel="icon" type="image/x-icon" href=""> -->
<link rel="stylesheet" href="resources/css/detail_book.css">
</head>
<body>
	<jsp:include page="../base.jsp" />
	<jsp:include page="header.jsp" />
	<c:set var="versionDefaultBookById" value="${versionDefaultBookById }" />
	<span id="idVersionDisplayNone" style="display: none;">1</span>
	<input id="idBookDisplayNone" style="display: none;" value="${idb }" />
	<div class="body">
		<div class="body__path_category_product">
			<a href="<c:url value="/" />">Trang chủ</a>
			<span class="t">/</span>
			<c:forEach var="categoriesVersionDefaultBookById" items="${versionDefaultBookById.book.book_category }">
				<a href="collections?category=${categoriesVersionDefaultBookById.category.idCategory }">${categoriesVersionDefaultBookById.category.nameCategory }</a>
			</c:forEach>
			<span class="t">/</span>
			<span>${versionDefaultBookById.nameBookByVersion }</span>
		</div>
		<div class="body__detail_product">
			<div class="detail_product__img_and_info">
				<div class="detail_product__img">
					<div id="carouselExample" class="carousel slide">
				  		<div class="carousel-inner">
				  			<c:forEach var="imagesDefaultBookById" items="${imagesDefaultBookById }" varStatus="loop">
						  		<div class="carousel-item ${loop.index == 0 ? 'active' : '' }">
									<img src="${imagesDefaultBookById.pathImage }" class="d-block w-100" alt="">
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
					<span class="div_out-label_sale"> -${versionDefaultBookById.book.promotions[0].discountPromotion }% </span>
				</div>
				<div class="detail_product__info">
					<div class="detail_product__info-title">
						<span> ${versionDefaultBookById.nameBookByVersion } </span>
					</div>
					<div class="detail_product__info-price">
						<span class="detail_product__info-price-sale"> <fmt:formatNumber type="number" value="${(versionDefaultBookById.priceBookByVersion * (100 - versionDefaultBookById.book.promotions[0].discountPromotion)) / 100 }" /><ins>đ</ins>
						</span> <span class="detail_product__info-price-origin"> 
							<del><fmt:formatNumber type="number" value="${versionDefaultBookById.priceBookByVersion }" /><ins>đ</ins></del>
						</span>
					</div>
					<div class="detail_product__info-description">
						<div class="detail_product__info-description-author info-description-container">
							<span class="detail_product__info-description-author-key info-description-key"> Tác giả: </span>
							<c:forEach var="authorsVersionDefaultBookById" items="${versionDefaultBookById.book.book_author }">
								<a href="#" class="detail_product__info-description-author-value"> ${authorsVersionDefaultBookById.author.nameAuthor } </a>
							</c:forEach>
						</div>
						<div class="detail_product__info-description-supplier info-description-container">
							<span class="detail_product__info-description-supplier-key info-description-key"> Công ty phát hành: </span> 
							<span class="detail_product__info-description-supplier-value"> ${versionDefaultBookById.book.supplier.nameSupplier } </span>
						</div>
						<div class="detail_product__info-description-publishing_company info-description-container">
							<span class="detail_product__info-description-publishing_company-key info-description-key"> Nhà xuất bản: </span> 
							<span class="detail_product__info-description-publishing_company-value"> ${versionDefaultBookById.book.publisher.namePublisher } </span>
						</div>
						<div class="detail_product__info-description-publishing_year info-description-container">
							<span class="detail_product__info-description-publishing_year-key info-description-key"> Năm xuất bản: </span>
							<span class="detail_product__info-description-publishing_year-value"> ${versionDefaultBookById.yearPublicationBookByVersion } </span>
						</div>
					</div>
					<div class="detail_product__info-content">
						<span class="detail_product__info-content-key info-description-key"> Nội dung: </span> <br> 
						<span class="detail_product__info-content-value"> ${versionDefaultBookById.fullDescriptionBookByVersion } </span>
					</div>
					<div class="detail_product__info-version">
						<span class="detail_product__info-version-key info-description-key"> Phiên bản </span> <br> 
						<select name="" class="detail_product__info-version-value">
							<c:forEach var="versionsBookById" items="${versionDefaultBookById.book.book_version }">
								<option ${versionsBookById.version.idVersion == 1 ? 'selected' : ''} value="${versionsBookById.version.idVersion }">${versionsBookById.version.nameVersion }</option>
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
			<p>${versionDefaultBookById.fullDescriptionBookByVersion }</p>
		</div>
		<div class="body__books_same_author">
			<div class="books_same_author__title">
				<span> SÁCH CÙNG TÁC GIẢ </span>
			</div>
			<div class="books_same_author-container_product">
				<c:forEach var="booksSameAuthor" items="${booksSameAuthor }">
				<div class="list_product-div_out">
					<div class="list_product-div_in">
						<div class="list_product-div_in-img">
							<a href="product?idb=${booksSameAuthor.book.idBook }"><img src="${booksSameAuthor.book.images[0].pathImage }" alt=""></a>
						</div>
						<div class="list_product-div_in-info_book_short_des">
							<span> <a href="product?idb=${booksSameAuthor.book.idBook }"> ${booksSameAuthor.book.book_version[0].nameBookByVersion } </a>
							</span>
							<div class="div_in-price">
								<span class="div_in-price-sale"><fmt:formatNumber type="number" value="${(booksSameAuthor.book.book_version[0].priceBookByVersion * (100 - booksSameAuthor.book.promotions[0].discountPromotion)) / 100 }" /><ins>đ</ins></span> 
								<span class="div_in-price-origin"> 
									<del><fmt:formatNumber type="number" value="${booksSameAuthor.book.book_version[0].priceBookByVersion }" /><ins>đ</ins></del>
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
					<span class="div_out-label_sale">-${booksSameAuthor.book.promotions[0].discountPromotion }%</span>
				</div>
				</c:forEach>
			</div>
		</div>
	</div>
	<!-- body -->
	<jsp:include page="footer.jsp" />
</body>
</html>