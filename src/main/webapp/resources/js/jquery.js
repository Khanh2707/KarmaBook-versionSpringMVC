/**
 * 
 */
$(document).ready(function() {
	
	window.onpopstate = function(e){
		if(e.state){
		    e.preventDefault();
		}
	};
	
	$("#ajaxLogin").click(function() {
		let email = $("#email").val();
		let password = $("#password").val();
		$.ajax({
			url: "/KarmaBook-versionSpringMVC/apiLogin/authenticationLogin",
			type: "GET",
			data: {
				email: email,
				password: password,
			},
			success: function(value) {
				if (value == "true") {
					urlCurrent = window.location.href;
					url = urlCurrent.replace("login", "");
					setTimeout(() => {
						window.location = url;
					}, 2000);
					$.getScript('resources/js/toast/toast.js', function() {
						toast({
			                title: "Thành công!",
			                message: "Bạn đã đăng nhập thành công.",
			                type: "success",
			                duration: 5000
			            });
					});
				}
				else {
					$.getScript('resources/js/toast/toast.js', function() {
						toast({
			                title: "Thất bại!",
			                message: "Tài khoản hoặc mật khẩu không đúng.",
			                type: "error",
			                duration: 5000
			            });
					});
				}
			}
		})
	});
	
	$("#button_submit_forgot_password").click(function() {
   		let email = $("#email").val();
		$.ajax({
			url: "/KarmaBook-versionSpringMVC/apiForgotPassword/sendEmail",
			type: "GET",
			data: {
				email: email,
			},
			success: function(value) {
				if (value == "true") {
					$.getScript('resources/js/toast/toast.js', function() {
						toast({
				            title: "Thành công!",
				            message: "Gửi email thành công.",
				            type: "success",
				            duration: 5000
				           });
					});
				}
				else {
					$.getScript('resources/js/toast/toast.js', function() {
						toast({
				            title: "Thất bại!",
				            message: "Gửi email thất bại.",
				            type: "error",
				            duration: 5000
				        });
					});
				}
			}
		})
	});
	
	$(".detail_product__info-version-value").on("change", function() {
		let idVersion = $(".detail_product__info-version-value").val();
		let idBook = $("#idBookDisplayNone").val();
		$.ajax({
			url: "/KarmaBook-versionSpringMVC/apiBook/selectVersionBook",
			type: "GET",
			data: {
				idVersion: idVersion,
				idBook: idBook
			},
			success: function(value) {
				alert(value);
				var str = "";
				$.each(JSON.parse(value), function(i, item) {
					str += "<tr>";
					str += "<td>"+item.name+"</td>";
					str += "</tr>"
				})
				$("#load_data").html(str);
			}
		})
	});
	
	$(".category__list").on("click", "li", function() {
		$.ajax({
			url: "/KarmaBook-versionSpringMVC/apiCategory/getBookByCategory",
			type: "GET",
			data: {
				idCategory: this.className,
			}
		}).done(function(value) {
			$(".page_product__body").html(value);
		})
		
		$.ajax({
			url: "/KarmaBook-versionSpringMVC/apiCategory/getCategoryById",
			type: "GET",
			data: {
				idCategory: this.className,
			}
		}).done(function(value) {
			$(".page_product__header__title").html(value);
			$("#breadcrumb_category").html(value);
		})
		
		window.history.pushState(null, null, "collections?category="+this.className+"");
	});
	
	$('.header__menu__ul-2').on("click", "li", function() {
		window.location = "collections?category="+this.className+"";
	});
	
})