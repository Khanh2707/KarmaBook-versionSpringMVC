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
<link rel="stylesheet" href="resources/css/css_global/form.css">
</head>
<body>
	<jsp:include page="../base.jsp" />
	<jsp:include page="header.jsp" />
	<!-- body -->
        <div class="body">
            <span class="sign_up__title">
                phục hồi mật khẩu
            </span>
            <hr>
            <div class="sign_up__wrapper">
                <div class="sign_up__container">
                    <form action="" method="post" class="form" id="form-1">
                        <div class="sign_up-infor-div">
                            <div class="sign_up-infor">
                                <label for="email">Email</label>
                                <input type="text" name="email" id="email" placeholder="Email">
                            </div>
                            <span class="form-mesg">

                            </span>
                        </div>
                        <div class="sign_up-input_submit">
                            <input type="submit" value="Gửi">
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
			form : `#form-1`,
			mesg : `.form-mesg`,
			formGroup : `.sign_up-infor-div`,
			rules : [ required(`#email`, `Chưa nhập email!`),
					ruleEmail(`#email`, `Email không đúng định dạng!`), ],
		})
	</script>
</body>
</html>