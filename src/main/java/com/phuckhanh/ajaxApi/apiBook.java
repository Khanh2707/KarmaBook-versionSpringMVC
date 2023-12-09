package com.phuckhanh.ajaxApi;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.phuckhanh.model.Book_Version;
import com.phuckhanh.model.Image;
import com.phuckhanh.service.Book_By_VersionService;

@RestController
@RequestMapping("apiBook/")
public class apiBook {
	
	@Autowired
	Book_By_VersionService book_by_versionService;
	
	@GetMapping(path = "selectVersionBookById", produces = "application/json; charset = utf-8")
	public Book_Version selectVersionBookById(@RequestParam String idVersion, @RequestParam String idBook) {
		
		Book_Version book_by_version = book_by_versionService.getVersionBookById(Integer.valueOf(idBook), Integer.valueOf(idVersion));
		
		return book_by_version;
	}
	
	@GetMapping(path = "selectImagesBookByVersion", produces = "application/json; charset = utf-8")
	public List<Image> selectImagesBookByVersion(@RequestParam String idVersion, @RequestParam String idBook) {
		
		List<Image> imagesBookByVersion = book_by_versionService.getImagesBookByVersion(Integer.valueOf(idBook), Integer.valueOf(idVersion));
		
		return imagesBookByVersion;
	}
	
	@GetMapping(path = "getBooksByFilter", produces = "application/json; charset = utf-8")
	public List<Book_Version> getBooksByFilter() {
		
		
		
		return null;
	}
	
	
}
