package controller;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import database.KarmaJDBC;
import model.Author;
import model.Book;
import model.Image;
import model.Publisher;
import model.Role_User;
import model.Supplier;
import model.Type_Image;
import model.User;

@Controller
@RequestMapping("/")
public class homeController {
	
	@Autowired
	SessionFactory sessionFactory;

	@GetMapping
	@Transactional
	public String Default(ModelMap modelMap) {
		
		ApplicationContext ac = new ClassPathXmlApplicationContext("IoC.xml");
		
//		KarmaJDBC karmaJDBC = (KarmaJDBC) ac.getBean("karmaJDBC");
//		karmaJDBC.getAllBook();
		
		
		Session session = sessionFactory.getCurrentSession();
		
//		Supplier s1 = new Supplier("Nhã Nam");
//		Book b1 = new Book("Nhà Giả Kim", 100000, 2019, "Đéo hay", "Như buồi đầu", s1);
//		session.save(b1);
		
//		Book b2 = new Book("Đắc Nhân Tâm", 86000, 2021, "Hay", "Hay vc");
//		b2.setIdBook(1);
//		b2.setYearPublicationBook(2021);
//		session.update(b2);
		
//		Book b3 = (Book) session.createQuery("FROM karma.book WHERE idBook = 2").uniqueResult();
//		b3.setYearPublicationBook(1978);
//		session.update(b3);
		
//		Book b4 = session.get(Book.class, 2);
//		session.delete(b4);
		
		
//		List<Book> books = new ArrayList<Book>();
//		Book b1 = new Book("book 1", 100000, 2010, "content 1", "detail content 1");
//		Book b2 = new Book("book 2", 200000, 2020, "content 2", "detail content 2");
//		Book b3 = new Book("book 3", 300000, 2030, "content 3", "detail content 3");
//		books.add(b1);
//		books.add(b2);
//		books.add(b3);
//		
//		Supplier supplier = new Supplier("sup 1", books);
//		Publisher publisher = new Publisher("pub 1", books);
//		
//		session.save(supplier);
//		session.save(publisher);
		
		

//		List<Author> authors = new ArrayList<Author>();
//		Author a1 = new Author("Tác giả 1");
//		Author a2 = new Author("Tác giả 2");
//		authors.add(a1);
//		authors.add(a2);
//		Book b1 = new Book("Nhà Giả Kim", 100000, 2019, "Đéo hay", "Như buồi đầu", null, null);
//		b1.setAuthors(authors);
//		session.save(b1);
		
		
//		List<User> users = new ArrayList<User>();
//		User u1 = new User("Long@gmail.com", "Long@123", "Long");
//		users.add(u1);
//		Role_User role_user = new Role_User("Khách", users);
//		session.save(role_user);
		
		
		
//		List<Image> images = new ArrayList<Image>();
//		Image i1 = new Image("path 123");
//		images.add(i1);
//		
//		Book b1 = new Book("Book image 1", 50000, 2030, "test ảnh bìa", "như short", images);
//		Type_Image ti1 = new Type_Image("ảnh 360", "toàn cảnh", images);
//		
//		session.save(b1);
//		session.save(ti1);
		
		
		
//		String selectAll = "FROM karma.book";
//		List<Book> list = session.createQuery(selectAll).getResultList();
//		
//		for (Book book : list) {
//			System.out.println(book.toString());
//		}
		
		return "user/home";
		
	}
	
}
