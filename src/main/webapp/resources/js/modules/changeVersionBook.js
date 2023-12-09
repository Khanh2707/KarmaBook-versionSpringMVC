/**
 * 
 */
export function changeVersionBook() {
	$(".detail_product__info-version-value").on("change", function() {
		let idVersion = $(".detail_product__info-version-value").val();
		let idBook = $("#idBookDisplayNone").val();
		$.ajax({
			url: "/KarmaBook-versionSpringMVC/apiBook/selectVersionBookById",
			type: "GET",
			data: {
				idVersion: idVersion,
				idBook: idBook
			}
		}).done(function(value) {
			$("#breadcrumb_name_book").text(value.nameBookByVersion);
				
			$(".detail_product__info-title span").text(value.nameBookByVersion);
				
			let salePrice = (value.priceBookByVersion * (100 - value.book.promotions[0].discountPromotion)) / 100;
			$(".detail_product__info-price-sale span").text(salePrice);
				
			$(".detail_product__info-price-origin_price").text(value.priceBookByVersion);
		});
		
		$.ajax({
			url: "/KarmaBook-versionSpringMVC/apiBook/selectImagesBookByVersion",
			type: "GET",
			data: {
				idVersion: idVersion,
				idBook: idBook
			}
		}).done(function(value) {
			let tagImg = "";
			$.each(value, function(i, item) {
				tagImg += `<div class="carousel-item ${i === 0 ? 'active' : '' }">
								<img class="imageBookByVersion" src="${item.pathImage }" class="d-block w-100" alt="">
							</div>`;
			});
			$(".carousel-inner").html(tagImg);
		});
	});
}