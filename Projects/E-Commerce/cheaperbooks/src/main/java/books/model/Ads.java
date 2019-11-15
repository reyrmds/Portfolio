package books.model;

public class Ads {
	
	private int adsid,userid;
	private byte[] image; 
	private String title,category,description,dateposted;
	private String name,email,contact;
	private String sellername;
	
	public Ads(){
		
	}
	public Ads(byte[] image){
		this.image=image;
	}
	public int getAdsid() {
		return adsid;
	}
	public void setAdsid(int adsid) {
		this.adsid = adsid;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public byte[] getImage() {
		return image;
	}
	public void setImage(byte[] image) {
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
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getDateposted() {
		return dateposted;
	}
	public void setDateposted(String dateposted) {
		this.dateposted = dateposted;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getSellername() {
		return sellername;
	}
	public void setSellername(String sellername) {
		this.sellername = sellername;
	}
	
	
}
