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
<link rel="stylesheet" href="resources/css/cart.css">
</head>
<body>
	<jsp:include page="../base.jsp" />
	<jsp:include page="header.jsp" />
	<div class="body_bg">
		<div class="cart_interface__title">
			<span> GIỎ HÀNG </span> 
			<span> ( sản phẩm) </span>
		</div>
		<div class="body">
			<div class="cart_interface-container">
				<div class="cart_interface-container__checkbox_cart">
					<div class="checkbox_cart__navbar">
						<div>
							<input type="checkbox" name="" id="">
						</div>
						<span> Chọn tất cả ( sản phẩm) </span> 
						<span> Số lượng </span> 
						<span> Thành tiền </span>
					</div>
					
					<div class="checkbox_cart__infor_product-container">
						<div class="checkbox_cart__infor_product">
							<div>
								<input type="checkbox" name="" id="">
							</div>
							<div class="checkbox_cart__infor_product-img">
								<a href="#"><img src="" alt=""></a>
							</div>
							<div class="checkbox_cart__infor_product-name_and_price">
								<a href="#" class="checkbox_cart__infor_product-name"> 
									
								</a>
								<div class="checkbox_cart__infor_product-price">
									<span class="checkbox_cart__infor_product-price-sale">
										<ins>đ</ins>
									</span> 
									<span class="checkbox_cart__infor_product-price-origin">
										<del>
											<ins>đ</ins>
										</del>
									</span>
								</div>
							</div>
							<div class="checkbox_cart__infor_product-box-quantity">
								<a href="#" class="checkbox_cart__infor_product-box-quantity-down" style="text-decoration: none"> - </a> 
								<input type="text" name="" id="" value=""> 
								<a href="#" class="checkbox_cart__infor_product-box-quantity-up" style="text-decoration: none"> + </a>
							</div>
							<span class="checkbox_cart__infor_product-price-last">
								<ins>đ</ins>
							</span>
							<div class="checkbox_cart__infor_product-trash">
								<input type="hidden" name="id" value="">
								<button style="background-color: white; border: none; cursor: pointer; font-size: 20px;" type="submit"><i class="fa-regular fa-trash-can"></i></button>
							</div>
						</div>
					</div>
					
				</div>

				<div class="cart_interface-container__pay_cart">
					<div class="pay_cart__capital_sum">
						<span> Tổng Số Tiền (gồm VAT) </span> 
						<span> <ins>đ</ins> </span>
					</div>
					<button class="pay_cart__button_pay" type="submit">
						<span> Thanh toán </span>
					</button>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>