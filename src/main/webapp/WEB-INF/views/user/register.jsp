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
<link rel="stylesheet" href="resources/css/css_global/form.css">
<link rel="stylesheet" href="resources/css/css_global/base.css">
</head>
<body>
	<jsp:include page="header.jsp" />
	<!-- body -->
        <div class="body">
            <span class="sign_up__title">
                tạo tài khoản
            </span>
            <hr>
            <div class="sign_up__wrapper">
                <div class="sign_up__container">
                    <form action="" method="post" class="form" id="form-1">
                        <div class="sign_up-infor-div">
                            <div class="sign_up-infor">
                                <label for="name">Tên đăng nhập</label>
                                <input type="text" name="name" id="name" placeholder="Tên">
                            </div>
                            <span class="form-mesg">

                            </span>
                        </div>
                        <div class="sign_up-infor-div">
                            <div class="sign_up-infor">
                                <label for="email">Email</label>
                                <input type="text" name="email" id="email" placeholder="Email">
                            </div>
                            <span class="form-mesg">

                            </span>
                        </div>
                        <div class="sign_up-infor-div">
                            <div class="sign_up-infor">
                                <label for="password">Mật khẩu</label>
                                <input type="password" name="password" id="password" placeholder="Mật khẩu">
                            </div>
                            <span class="form-mesg">

                            </span>
                        </div>
                        <div class="sign_up-infor-div">
                            <div class="sign_up-infor">
                                <label for="password_confirmation">Nhập lại mật khẩu</label>
                                <input type="password" name="password_confirmation" id="password_confirmation"
                                    placeholder="Nhập lại mật khẩu">
                            </div>
                            <span class="form-mesg">

                            </span>
                        </div>
                        <div class="sign_up-input_submit">
                            <input type="submit" value="Đăng ký">
                        </div>
                    </form>
                    <div class="sign_in-link_return">
                        <a href="login">Quay về</a>
                    </div>
                </div>
            </div>
        </div>
    <!-- body -->
	<jsp:include page="footer.jsp" />
	<script src="resources/js/validate_form/validators.js"></script>
	<script>
		Validator({
	        form: `#form-1`,
	        mesg: `.form-mesg`,
	        formGroup: `.sign_up-infor-div`,
	        rules: [
	            required(`#name`, `Chưa nhập tên!`),
	            required(`#email`, `Chưa nhập email!`),
	            ruleEmail(`#email`, `Email không đúng định dạng!`),
	            required(`#password`, `Chưa nhập password!`),
	            rulePassword(`#password`, `Phải có chữ hoa, chữ thường, số, ký tự đặc biệt, tối thiểu 7 ký tự và tối đa 14 ký tự!`),
	            required(`#password_confirmation`, `Chưa nhập xác nhận password!`),
	            equalPassword(`#password_confirmation`, function () {
	                return document.querySelector(`#form-1 #password`).value
	            }, `Mật khẩu không trùng khớp!`),
	        ],
	    })
	</script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<script src="resources/js/jquery.js"></script>
</body>
</html>