/**
 * 
 */
export function login() {
	$("#ajaxLogin").click(function() {
		let email = $("#email").val();
		let password = $("#password").val();
		const confirmCookie = document.getElementById("confirmCookie");
		$.ajax({
			url: "/KarmaBook-versionSpringMVC/apiLogin/authenticationLogin",
			type: "GET",
			data: {
				email: email,
				password: password,
				confirmCookie: confirmCookie.checked ? "on" : "off",
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
}