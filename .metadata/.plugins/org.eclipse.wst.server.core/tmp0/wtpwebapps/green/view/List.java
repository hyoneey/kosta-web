package kosta;

public class List {
	private String image;
	private String title;
	private String category;
	private String code;
	
	public List(){}
	
	public List(String image, String title, String category, String code) {
		super();
		this.image = image;
		this.title = title;
		this.category = category;
		this.code = code;
	}

	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
}
