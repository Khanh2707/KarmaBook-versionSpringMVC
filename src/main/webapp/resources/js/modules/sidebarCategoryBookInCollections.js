/**
 * 
 */
export function sidebarCategoryBookInCollections() {
	$(".category__list").on("click", "li", function() {
		$.ajax({
			url: "/KarmaBook-versionSpringMVC/apiCategory/getBooksByCategory",
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
}