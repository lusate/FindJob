package dao;

import java.util.ArrayList;

import dto.Book;

public class BookRepository {
	
	private ArrayList<Book> listOfBooks = new ArrayList<Book>();
	private static BookRepository instance = new BookRepository();
	
	public static BookRepository getInstance() {
		return instance;
	}
	
	public BookRepository() {
		Book HTML = new Book("ISBN1234", "[Hello Coding] HTML5+CSS3", 15000);	//�Ű�����
		HTML.setDescription("���峪 PPT ������ ���� �� �ֳ���? �׷��� ���� �����ϴ�. ���� �ٷ� �������� ���ۿ� �����غ�����. ���� ���� ��ǻ�Ͱ� ��� �������ϴ�. �ڵ�� ���� ȭ���� �ٷ� ������ ����...");
		HTML.setDescription2("���峪 PPT ������ ���� �� �ֳ���? �׷��� ���� �����ϴ�. ���� �ٷ� �������� ���ۿ� �����غ�����. ���� ���� ��ǻ�Ͱ� ��� �������ϴ�. �ڵ�� ���� ȭ���� �ٷ� ������ �����θ� �о ��� �۵��ϴ��� ���� �ľ��� �� �ִ� ���� �⺻�̰�, �߰��߰� ��� �߰��Ͽ� ����ְ� �����ϵ� ������ �� �ֽ��ϴ�.");
		HTML.setAuthor("Ȳ��ȣ");
		HTML.setPublisher("�Ѻ��̵��");
		HTML.setUnitsInStock(1000);
		HTML.setTotalPages(288);
		HTML.setReleaseDate("2018/03/02");
		HTML.setFilename("ISBN1234.png");
		
		Book Java = new Book("ISBN1235", "[IT�����] ���� ���� �ڹ� ���α׷���", 27000);
		Java.setDescription("��ü ������ �ٽɰ� �ڹ��� ������ ����� ����� �ٷ�鼭���ʺ��ڰ� ���� �н��� �� �ְ� �����߽��ϴ�. �ð�ȭ ������ Ȱ���� ���� ����� �������� ���� �ٽ� �ڵ带 ���� ����� ����...");
		Java.setDescription2("��ü ������ �ٽɰ� �ڹ��� ������ ����� ����� �ٷ�鼭���ʺ��ڰ� ���� �н��� �� �ְ� �����߽��ϴ�. �ð�ȭ ������ Ȱ���� ���� ����� �������� ���� �ٽ� �ڵ带 ���� ����� ������ �� �帧���� �н��� �� �ֽ��ϴ�. ���� ������ ü���� ������ ���� �� ���� �׽�Ʈ �� ������ �������� �����ϸ� �� �ܰ辿 Ǯ�� ���� ���� ���� �� ���丮�� ���̵� ��̷ο� ���α׷��� ������ ���� ���� ���α׷��� �Ƿ��� �������� ����ø� �� �ֽ��ϴ�.");
		Java.setAuthor("������");
		Java.setPublisher("�Ѻ��̵��");
		Java.setUnitsInStock(1000);
		Java.setTotalPages(692);
		Java.setReleaseDate("2017-08-02");
		Java.setFilename("ISBN1235.png");
		
		Book Spring = new Book("ISBN1236", "[IT�����] ������4 �Թ�", 27000);
		Spring.setDescription("�������� �ܼ��� ��� ����� ������ �ͺ��� ��Ű��ó�� ��� �����ϰ� �����ϴ����� �� �߿��մϴ�. ������ ������ �ٿ��ִ� �����δ� ���� ���߿��� �������� ����� Ȱ���� �� �����ϴ�...");
		Spring.setDescription2("�������� �ܼ��� ��� ����� ������ �ͺ��� ��Ű��ó�� ��� �����ϰ� �����ϴ����� �� �߿��մϴ�. ������ ������ �ٿ��ִ� �����δ� ���� ���߿��� �������� ����� Ȱ���� �� �����ϴ�. �� å������ �� ���ø����̼��� ���ʸ� ������ ������ �ھ ���캸�� Ŭ���� ����Ƽ�� �Թ����� �ٷ�ϴ�. ���� �� �ǹ��� �پ�� �� ���ø����̼� �ʱ��ڳ� ���� ������ ������ �������� ����غ� �� ���� ���� ������� ������ �� ���� �����մϴ�.");
		Spring.setAuthor("�ϼ����� ����ġ, ������ ��Ÿ��, ��Ű ������(����û, ���μ�)");
		Spring.setPublisher("�Ѻ��̵��");
		Spring.setUnitsInStock(1000);
		Spring.setTotalPages(520);
		Spring.setReleaseDate("2017-11-01");
		Spring.setFilename("ISBN1236.png");
		
		listOfBooks.add(HTML);
		listOfBooks.add(Java);
		listOfBooks.add(Spring);
	}
	
	public ArrayList<Book> getAllBooks(){
		return listOfBooks;
	}
	
	public Book getBookById(String BookId) {
		Book BookById = null;
		
		for(int i = 0; i < listOfBooks.size(); i++) {
			Book Book = listOfBooks.get(i);
			if(Book != null && Book.getBookId() != null && Book.getBookId().equals(BookId)) {
				BookById = Book;
				break;
			}
		}
		return BookById;
	}
	public void addBook(Book product) {
		listOfBooks.add(product);
	}
}
