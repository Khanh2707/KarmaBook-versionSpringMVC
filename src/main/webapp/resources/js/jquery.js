/**
 * 
 */
import { login } from './modules/authentication/login.js';
import { forgotPassword } from './modules/authentication/forgot_password.js';
import { changeVersionBook } from './modules/changeVersionBook.js';
import { sidebarCategoryBookInCollections } from './modules/sidebarCategoryBookInCollections.js';
import { listCategoryInElementInNavbarInHeader } from './modules/listCategoryInElementInNavbarInHeader.js';

$(document).ready(function() {
	
	window.onpopstate = function(e){
		if(e.state){
		    e.preventDefault();
		}
	};
	
	login();
	
	forgotPassword();
	
	changeVersionBook();
	
	sidebarCategoryBookInCollections();
	
	listCategoryInElementInNavbarInHeader();
	
})