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
<link rel="icon" type="image/x-icon" href="">
<link rel="stylesheet" href="resources/css/collections.css">
</head>
<body>
	<jsp:include page="../base.jsp" />
	<jsp:include page="header.jsp" />
	<div class="body">
		<div class="body__path_category">
			<a href="<c:url value="/" />">Trang chủ</a> 
			<span class="t">/</span> 
			<span>Danh mục</span> 
			<span class="t">/</span> 
			<span>Tất cả</span>
		</div>
		<div class="body__container_filter_product">
			<div class="container_filter_product__category">
				<span class="category__title">danh mục</span>
				<ul class="category__list">
					<!-- <li><a href="#">abc</a></li> -->
				</ul>
			</div>
			<div class="container_filter_product__page_product">
				<div class="page_product__header">
					<span class="page_product__header__title">Tất cả</span>
					<div class="filter">
						<span>Sắp xếp theo: </span>
						<form action="" id="form_select">
							<select name="list_select" id="list_select">
								<option value="">Giá: Tăng dần</option>
								<option value="">Giá: Giảm dần</option>
								<option value="">Tên: A-Z</option>
								<option value="">Tên: Z-A</option>
								<option value="">Cũ nhất</option>
								<option value="" selected>Mới nhất</option>
								<option value="">Bán chạy nhất</option>
							</select>
						</form>
					</div>
				</div>
				<div class="page_product__body">
					
					<c:forEach var="bookByCategory" items="${bookByCategory }">
						<div class="list_product-div_out">
							<div class="list_product-div_in">
								<div class="list_product-div_in-img">
									<a href="product?idb=${bookByCategory.book.idBook }"><img src="${bookByCategory.book.images[0].pathImage }" alt=""></a>
								</div>
								<div class="list_product-div_in-info_book_short_des">
									<span> 
										<a href="product?idb=${bookByCategory.book.idBook }">
											${bookByCategory.book.book_version[0].nameBookByVersion }
										</a>
									</span>
									<div class="div_in-price">
										<span class="div_in-price-sale"><fmt:formatNumber type="number" value="${(bookByCategory.book.book_version[0].priceBookByVersion * (100 - bookByCategory.book.promotions[0].discountPromotion)) / 100 }" /><ins>đ</ins></span> 
										<span class="div_in-price-origin">
											<del><fmt:formatNumber type="number" value="${bookByCategory.book.book_version[0].priceBookByVersion }" /><ins>đ</ins></del>
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
							<span class="div_out-label_sale">-${bookByCategory.book.promotions[0].discountPromotion }%</span>
						</div>
					</c:forEach>
					
				</div>

				<div class="page_product__footer">
                        <div class="page_product__footer__change_page page_product__footer__prev_page">
                            <a href="">
                                &lt Trang trước
                            </a>
                        </div>
                        <div class="page_product__footer__number_page">
                            <a href="">1</a>
                            <a href="">2</a>
                            <a href="">3</a>
                            <a href="">4</a>
                            <span>...</span>
                            <a href="">56</a>
                        </div>
                        <div class="page_product__footer__change_page page_product__footer__next_page">
                            <a href="">
                                Trang sau &gt
                            </a>
                        </div>
                    </div>
			</div>
		</div>
	</div>
	<!-- body -->
	<jsp:include page="footer.jsp" />
</body>
</html>