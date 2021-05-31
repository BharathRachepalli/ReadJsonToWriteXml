package Services;

import java.util.List;

import com.google.gson.Gson;

import Model.Book;

public class FetchJsonFromList {
	public void changeToJson(List<Book> booklist) {
		Gson gson = new Gson();
		String conJson = gson.toJson(booklist);
//		System.out.println("from fetch json");
//		for(Book b : booklist) {
//			System.out.println(b);
//		}
		System.out.println("Json from list"+conJson);
		
//		String conXml = XML.toString(conJson);
//		System.out.println("XML from JsonString"+conJson);
	}
}
