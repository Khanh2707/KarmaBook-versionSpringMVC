package dbInterface;

import java.util.List;

import model.Book;

public interface BookMethods {
	public List<Book> getAllBook();
	public List<Book> get10BookLatestById();
}
