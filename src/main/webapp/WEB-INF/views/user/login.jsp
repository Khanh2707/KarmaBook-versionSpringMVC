<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Nhà sách trực tuyến Karma</title>
<!-- <link rel="icon" type="image/x-icon" href=""> -->
<link rel="stylesheet" href="resources/css/css_global/form.css">
</head>
<body>
	<jsp:include page="../base.jsp" />
	<jsp:include page="header.jsp" />
	<!-- body -->
        <div class="body">
            <span class="sign_up__title">
                đăng nhập
            </span>
            <hr>
            <div class="sign_up__wrapper">
                <div class="sign_up__container">
                    <form class="form" id="form-1">
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
                        <div class="sign_up-input_submit" id="ajaxLogin">
                            <input type="submit" value="Đăng nhập">
                        </div>
                    </form>
                    <div class="sign_in-link_return">
                        <a href="register">Đăng ký</a>
                        <span>|</span>
                        <a href="reset">Quên mật khẩu?</a>
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
			submitSuccess: function(data) {
				console.log(data);
			}
		})
	</script>
</body>
</html>