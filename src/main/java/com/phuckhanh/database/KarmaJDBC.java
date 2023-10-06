package com.phuckhanh.database;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.phuckhanh.model.Book;

@Repository
public class KarmaJDBC {
	
	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	public void getAllBook() {
		String select = "SELECT * FROM karma.book";
		
		List<Book> list = jdbcTemplate.query(select, new RowMapper<Book>() {

			@Override
			public Book mapRow(ResultSet rs, int rowNum) throws SQLException {
				Book b = new Book();
				b.setIdBook(rs.getInt("idBook"));
				
				return b;
			}
			
		});
		
		for (Book book : list) {
			System.out.println(book.toString());
		}
	}
}
