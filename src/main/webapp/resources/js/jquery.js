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
	
	$(".detail_product__info-version-value").on("change", function() {
		let idVersion = $(".detail_product__info-version-value").val();
		let idBook = $("#idBookDisplayNone").val();
		$.ajax({
			url: "/KarmaBook-versionSpringMVC/api/SelectVersionBook",
			type: "GET",
			data: {
				idVersion: idVersion,
				idBook: idBook
			},
			success: function(value) {
				$("#idVersionDisplayNone").text(idVersion);
			}
		})
	})
	
})