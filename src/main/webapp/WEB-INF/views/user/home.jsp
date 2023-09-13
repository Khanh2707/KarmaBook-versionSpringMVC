<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link rel="stylesheet" href="resources/css/home.css">
<link rel="stylesheet" href="resources/css/css_global/base.css">
</head>
<body>
	<div class="wrapper">
		<jsp:include page="header.jsp" />
		<!-- body -->
		<div class="body">

			<!-- body__slide_banner -->
			<div class="body__slide_banner">
				<a href="#"><img src="" alt=""></a>
			</div>
			<!-- body__slide_banner -->

			<!-- body__box_introduce -->
			<div class="body__box_introduce-bg">
				<div class="body__box_introduce-container">

					<div class="box_introduce-border">
						<div class="box_introduce-icon">
							<i class="fa-sharp fa-solid fa-truck-arrow-right fa-2xl"></i>
						</div>
						<div class="box_introduce-text">
							<span>ưu đãi<br>vận chuyển
							</span>
						</div>
					</div>

					<div class="box_introduce-border">
						<div class="box_introduce-icon">
							<i class="fa-solid fa-gift fa-2xl"></i>
						</div>
						<div class="box_introduce-text">
							<span>thể loại sách<br>phong phú
							</span>
						</div>
					</div>

					<div class="box_introduce-border">
						<div class="box_introduce-icon">
							<i class="fa-solid fa-money-check-dollar fa-2xl"></i>
						</div>
						<div class="box_introduce-text">
							<span>khuyến mãi<br>hấp dẫn
							</span>
						</div>
					</div>

					<div class="box_introduce-border">
						<div class="box_introduce-icon">
							<i class="fa-solid fa-phone-volume fa-2xl"></i>
						</div>
						<div class="box_introduce-text">
							<span>hotline:<br>0123456789<br>9876543210
							</span>
						</div>
					</div>

				</div>
			</div>
			<!-- body__box_introduce -->

			<!-- body__wrapper_product -->
			<div class="body__wrapper_product-bg">
				<div class="body__wrapper_product-container">

					<!-- body__wrapper_product__menu -->
					<ul class="wrapper_product__ul-1">
						<li class="wrapper_product__li-1 active_link">
							<span class="wrapper_product__li-1__a"> sách mới </span>
						</li>
						<li class="wrapper_product__li-1">
							<span class="wrapper_product__li-1__a"> sách bán chạy </span>
						</li>
						<li class="wrapper_product__li-1">
							<span class="wrapper_product__li-1__a"> flash sale </span>
						</li>
					</ul>

					<!-- body__wrapper_product__menu -->
					<div
						class="wrapper_product__list_product-container_and_button_see_all">
						<!-- body__wrapper_product__list_product -->
						<div class="wrapper_product__list_product-container">
							<div class="list_product-div_out">
								<div class="list_product-div_in">
									<div class="list_product-div_in-img">
										<a href="#"> <img src="https://placehold.co/220x330"
											alt="">
										</a>
									</div>
									<div class="list_product-div_in-info_book_short_des">
										<span> <a href="#"> Placeholder </a>
										</span>
										<div class="div_in-price">
											<span class="div_in-price-sale">100,000<ins>đ</ins></span> <span
												class="div_in-price-origin"><del>
													80,000
													<ins>đ</ins>
												</del></span>
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
								<span class="div_out-label_sale">-20%</span>
							</div>
							
							<div class="list_product-div_out">
								<div class="list_product-div_in">
									<div class="list_product-div_in-img">
										<a href="#"> <img src="https://placehold.co/220x330"
											alt="">
										</a>
									</div>
									<div class="list_product-div_in-info_book_short_des">
										<span> <a href="#"> Placeholder </a>
										</span>
										<div class="div_in-price">
											<span class="div_in-price-sale">100,000<ins>đ</ins></span> 
											<span class="div_in-price-origin">
												<del>80,000<ins>đ</ins></del>
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
								<span class="div_out-label_sale">-20%</span>
							</div>
							
							<div class="list_product-div_out">
								<div class="list_product-div_in">
									<div class="list_product-div_in-img">
										<a href="#"> <img src="https://placehold.co/220x330"
											alt="">
										</a>
									</div>
									<div class="list_product-div_in-info_book_short_des">
										<span> <a href="#"> Placeholder </a>
										</span>
										<div class="div_in-price">
											<span class="div_in-price-sale">100,000<ins>đ</ins></span> <span
												class="div_in-price-origin"><del>
													80,000
													<ins>đ</ins>
												</del></span>
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
								<span class="div_out-label_sale">-20%</span>
							</div>
							
							<div class="list_product-div_out">
								<div class="list_product-div_in">
									<div class="list_product-div_in-img">
										<a href="#"> <img src="https://placehold.co/220x330"
											alt="">
										</a>
									</div>
									<div class="list_product-div_in-info_book_short_des">
										<span> <a href="#"> Placeholder </a>
										</span>
										<div class="div_in-price">
											<span class="div_in-price-sale">100,000<ins>đ</ins></span> <span
												class="div_in-price-origin"><del>
													80,000
													<ins>đ</ins>
												</del></span>
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
								<span class="div_out-label_sale">-20%</span>
							</div>
							
							<div class="list_product-div_out">
								<div class="list_product-div_in">
									<div class="list_product-div_in-img">
										<a href="#"> <img src="https://placehold.co/220x330"
											alt="">
										</a>
									</div>
									<div class="list_product-div_in-info_book_short_des">
										<span> <a href="#"> Placeholder </a>
										</span>
										<div class="div_in-price">
											<span class="div_in-price-sale">100,000<ins>đ</ins></span> <span
												class="div_in-price-origin"><del>
													80,000
													<ins>đ</ins>
												</del></span>
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
								<span class="div_out-label_sale">-20%</span>
							</div>
							
							<div class="list_product-div_out">
								<div class="list_product-div_in">
									<div class="list_product-div_in-img">
										<a href="#"> <img src="https://placehold.co/220x330"
											alt="">
										</a>
									</div>
									<div class="list_product-div_in-info_book_short_des">
										<span> <a href="#"> Placeholder </a>
										</span>
										<div class="div_in-price">
											<span class="div_in-price-sale">100,000<ins>đ</ins></span> <span
												class="div_in-price-origin"><del>
													80,000
													<ins>đ</ins>
												</del></span>
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
								<span class="div_out-label_sale">-20%</span>
							</div>
							
							<div class="list_product-div_out">
								<div class="list_product-div_in">
									<div class="list_product-div_in-img">
										<a href="#"> <img src="https://placehold.co/220x330"
											alt="">
										</a>
									</div>
									<div class="list_product-div_in-info_book_short_des">
										<span> <a href="#"> Placeholder </a>
										</span>
										<div class="div_in-price">
											<span class="div_in-price-sale">100,000<ins>đ</ins></span> <span
												class="div_in-price-origin"><del>
													80,000
													<ins>đ</ins>
												</del></span>
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
								<span class="div_out-label_sale">-20%</span>
							</div>
							<!-- body__wrapper_product__button_see_more -->

							<div class="wrapper_product__button_see_all" style="width: 100%;  
    text-align: center; 
    padding-top: 20px; 
    padding-bottom: 100px;">
								<input type="submit" value="Xem thêm">
							</div>
							<!-- body__wrapper_product__button_see_more -->
						</div>

					</div>
				</div>
			</div>
			<!-- body__wrapper_product -->

			<!-- body__hnb -->
			<div class="body__hnb-bg">
				<div class="body__hnb-container">
					<div class="hnb_div">
						<a href="#"><img alt="" src="resources/image/hnb/hnb_img_1.jpg"></a>
					</div>
					<div class="hnb_div">
						<a href="#"><img alt="" src="resources/image/hnb/hnb_img_2.jpg"></a>
					</div>
				</div>
			</div>
			<!-- body__hnb -->

			<!-- body__post -->
			<div class="body__post-bg">
				<div class="body__post-container">
					<div class="post-title">
						<span>bài viết mới</span>
					</div>
					<div class="wrapper_post">
						<div class="post_div">
							<div class="post_div_border_img">
								<a href=""><img src="resources/image/news/thm_63f5a20d64ac4878a98d0698f1b64cd0_large.jpg" alt=""></a>
							</div>
							<a href="">[điểm sách] okitegami kyoko - thư tiến tử - đi tìm sự thật về kiệt tác cuối đời của một nhân vật tầm cỡ</a> 
							<span>
								Tiếp nối thành công của OKITEGAMI KYOKO - SỔ GHI CHÉP, tập thứ hai OKITEGAMI KYOKO - THƯ TIẾN CỬ thuộc loạt truyện về nàng thám tử lãng quên của cây bút gạo cội...
							</span>
							<hr>
						</div>
						<div class="post_div">
							<a href=""><img src="" alt=""></a>
							<a href="">[sự kiện] ipm chính thức khai trương tiktok shop cùng 1001 ưu đãi hấp dẫn!</a>
							<span>
								Ngày 04.04.2023, IPM chính thức khai trương Tiktok Shop IPM Việt Nam, với mong muốn đưa các tựa sách hấp dẫn tiếp cận gần hơn tới các độc giả trên toàn quốc. Để chào mừng s...
							</span>
							<hr>
						</div>
						<div class="post_div">
							<a href=""><img src="" alt=""></a>
							<a href="">[sự kiện] gặp gỡ và ký tặng sách manga cùng bộ đôi tác giả "tình đầu nhạt phai"</a>
							<span>
								Chiều ngày 25/2/2023, tại nhà sách Nguyễn Huệ (40 Nguyễn Huệ, P. Bến Nghé, Q. 1, TP. HCM) đã diễn ra sự kiện gặp gỡ và ký tặng cùng bộ đôi tác giả Wataru Hinekure và họa sĩ minh...
							</span>
							<hr>
						</div>
					</div>
				</div>
			</div>
			<!-- body__post -->
		</div>
		<!-- body -->
		<jsp:include page="footer.jsp" />
	</div>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<script src="resources/js/jquery.js"></script>
</body>
</html>