/**
 * 
 */
$(document).ready(function() {
	$("#ajaxLogin").click(function() {
		let email = $("#email").val();
		let password = $("#password").val();
		$.ajax({
			url: "/KarmaBook-versionSpringMVC/api/AuthenticationLogin",
			type: "GET",
			data: {
				email: email,
				password: password,
			},
			success: function(value) {
				if (value == "true") {
					urlCurrent = window.location.href;
					url = urlCurrent.replace("login", "");
					window.location = url;
				}
				else {
					alert("false");
				}
			}
		})
	});
})