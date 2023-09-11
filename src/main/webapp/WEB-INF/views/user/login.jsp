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
                đăng nhập
            </span>
            <hr>
            <div class="sign_up__wrapper">
                <div class="sign_up__container">
                    <div class="form" id="form-1">
                        <div class="sign_up-infor-div">
                            <div class="sign_up-infor">
                                <label for="email">Tên đăng nhập</label>
                                <input type="text" name="email" id="email" placeholder="Email" value="${requestScope.email }">
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
                        <div class="sign_up-input_submit">
                            <button type="submit">Đăng nhập</button>
                        </div>
                    </div>
                    <h1 id="ajaxLogin">Ajax login</h1>
                    <div class="sign_in-link_return">
                        <a href="register">Đăng ký</a>
                        <span>|</span>
                        <a href="Forgot_pass.jsp">Quên mật khẩu?</a>
                    </div>
                    <div class="sign_up-container_link_button">
                        <button class="link_button_fb" type="button"><i class="fa-brands fa-facebook-f fa-xl"
                                style="color: white;"></i></button>
                        <button class="link_button_mail" type="button"><i class="fa-brands fa-google-plus-g fa-xl"
                                style="color: white;"></i></button>
                    </div>
                </div>
            </div>
        </div>
    <!-- body -->
	<jsp:include page="footer.jsp" />
	<script src="resources/js/validate_form/validators.js"></script>
	<script>
		Validator({
			form : `#form-1`,
			mesg : `.form-mesg`,
			formGroup : `.sign_up-infor-div`,
			rules : [ required(`#email`, `Chưa nhập tên đăng nhập!`),
					required(`#password`, `Chưa nhập password!`),
			// required(`input[name="gender"]`, `Chưa chọn giới tính!`),
			],
		})
	</script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<script src="resources/js/jquery.js"></script>
</body>
</html>