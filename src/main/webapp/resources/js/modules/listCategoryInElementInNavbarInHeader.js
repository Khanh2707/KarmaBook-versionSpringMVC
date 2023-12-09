/**
 * 
 */
export function listCategoryInElementInNavbarInHeader() {
	$('.header__menu__ul-2').on("click", "li", function() {
		window.location = "collections?category="+this.className+"";
	});
}