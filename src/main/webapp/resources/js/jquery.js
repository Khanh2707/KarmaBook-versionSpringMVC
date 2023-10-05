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
	});
	
	$(".category__list").on("click", "li", function() {
		window.history.pushState(null, null, "collections?category="+this.className+"");
		
	});
	
	$('.header__menu__ul-2').on("click", "li", function() {
		window.location = "collections?category="+this.className+"";
	});
	
})