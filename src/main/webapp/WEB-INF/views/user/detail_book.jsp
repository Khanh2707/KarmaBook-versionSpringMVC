<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Nhà sách trực tuyến Karma</title>
<link rel="icon" type="image/x-icon" href="">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
	integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="resources/css/detail_book.css">
<link rel="stylesheet" href="resources/css/css_global/base.css">
</head>
<body>
	<jsp:include page="header.jsp" />
	<div class="body">
		<div class="body__path_category_product">
			<a href="#">Trang chủ</a> <span class="t">/</span> <a href="#">abc</a>
			<span class="t">/</span> <span>abc</span>
		</div>
		<div class="body__detail_product">
			<div class="detail_product__img_and_info">
				<div class="detail_product__img">
					<img src="" alt=""> <span class="div_out-label_sale">
						-% </span>
				</div>
				<div class="detail_product__info">
					<div class="detail_product__info-title">
						<span> abc </span>
					</div>
					<div class="detail_product__info-price">
						<span class="detail_product__info-price-sale"> abc<ins>đ</ins>
						</span> <span class="detail_product__info-price-origin"> <del>
								abc
								<ins>đ</ins>
							</del>
						</span>
					</div>
					<div class="detail_product__info-description">
						<div
							class="detail_product__info-description-author info-description-container">
							<span class="detail_product__info-description-author-key info-description-key"> Tác giả: </span>
							<a href="#" class="detail_product__info-description-author-value"> abc </a>
						</div>
						<div
							class="detail_product__info-description-publishing_company info-description-container">
							<span class="detail_product__info-description-publishing_company-key info-description-key"> Nhà xuất bản: </span> 
							<span class="detail_product__info-description-publishing_company-value"> abc </span>
						</div>
						<div
							class="detail_product__info-description-publishing_year info-description-container">
							<span class="detail_product__info-description-publishing_year-key info-description-key"> Năm xuất bản: </span>
							<span class="detail_product__info-description-publishing_year-value"> abc </span>
						</div>
					</div>
					<div class="detail_product__info-content">
						<span class="detail_product__info-content-key info-description-key"> Nội dung: </span> <br> 
						<span class="detail_product__info-content-value"> Thế chấp ảnh nóng vay tiền, cô gái phơi thây ngoài đường.Thi thể người phụ nữ mất tích được tìm thấy trong bưu kiện.Ba nhân viên văn phòng cùng đột tử sau khi nhận thiệp mời dự tiệc. Bí ẩn len lỏi khắp nơi, tội ác rình rập mọi lúc. Cuộc sống hiện đại hãy còn đầy rẫy hiểm nguy giấu mình dưới lớp vỏ ngụy trang, ngày đêm chực chờ con mồi sập bẫy. Với quyết tâm tìm ra chân tướng, Từ Lãng và Chu Dung, hai “dạ hành giả” - kẻ săn tin,đã nhiều lần dấn thân chốn hiểm nguy, đối mặt với đủ loại tội phạm, hòng vạch trần sựthật đằng sau những vụ án lạ lùng, gióng lên hồi chuông cảnh tỉnh trước khi có thêm nhiều nạn nhân rơi vào cạm bẫy tội ác. Mỗi vụ án lại lạ lùng và độc đáo theo cách riêng, đôi khi còn khó nhằn, thậm chí nguy hiểm, song với bản năng nghề nghiệp mạnh mẽ cùng tinh thần chính nghĩa cao cả, hai kẻ săn tin vẫn miệt mài xông pha, tìm cho kì được sự thật đằng sau. Mỗi câu chuyện lại là một bài học quý giá, là kiến thức cần thiết để đối phó với những cạm bẫy ẩn giấu trong cuộc sống hiện đại hối hả. </span>
					</div>
					<div class="detail_product__info-version">
						<span class="detail_product__info-version-key info-description-key"> Phiên bản </span> <br> 
						<select name="" id="" class="detail_product__info-version-value">
							<option value="">Bản thường</option>
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
			<p>abc</p>
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