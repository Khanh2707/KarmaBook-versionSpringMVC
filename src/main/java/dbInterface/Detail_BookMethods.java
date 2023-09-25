package dbInterface;

import java.util.List;

import model.Book_Version;
import model.Image;

public interface Detail_BookMethods {
	public Book_Version getVersionDefaultBookById(int idBook);
	public List<Image> getImagesDefaultBookById(int idBook);
}
