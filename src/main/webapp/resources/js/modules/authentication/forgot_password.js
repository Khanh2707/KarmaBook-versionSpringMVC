/**
 * 
 */
export function forgotPassword() {
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
}