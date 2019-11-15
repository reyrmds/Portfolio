package books.dao;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import books.model.Ads;
import books.model.Image;



public class AdsDao {
JdbcTemplate template;
	
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	public int save(Ads g) {
		String sql = "insert into tbl_ads (image,book_title,book_category,book_description,user_id) values ( CONVERT(VARBINARY(MAX),'"+g.getImage()+"'), '"+g.getTitle()+"','"+g.getCategory()+"','"+g.getDescription()+"','"+g.getUserid()+"')";
		return template.update(sql);
	}
	
	public List<Ads> getad(Ads e){
		
		return template.query("SELECT TOP 1 tbl_ads.ads_id, tbl_ads.image, tbl_ads.book_title, tbl_ads.book_category, tbl_ads.book_description, tbl_users.name, tbl_users.email, tbl_users.contact,tbl_ads.date_posted FROM   tbl_ads INNER JOIN tbl_users ON tbl_ads.user_id = tbl_users.id ORDER BY tbl_ads.ads_id DESC ", new RowMapper<Ads>(){
			public Ads mapRow(ResultSet rs, int row)  throws SQLException{
				Ads e = new Ads();
				e.setAdsid(rs.getInt(1));
				e.setImage(rs.getBytes(2));
				e.setTitle(rs.getString(3));
				e.setCategory(rs.getString(4));
				e.setDescription(rs.getString(5));
				e.setName(rs.getString(6));
				e.setEmail(rs.getString(7));
				e.setContact(rs.getString(8));
				e.setDateposted(rs.getString(9));			
				return e;
			}
		});
}	

		
		public List<Ads> getAdds() {
			return template.query("select tbl_ads.ads_id,tbl_ads.image,tbl_ads.book_title,tbl_ads.book_category,tbl_ads.book_description,tbl_users.id,tbl_users.name,tbl_ads.date_posted from tbl_ads inner join tbl_users on tbl_users.id = tbl_ads.user_id ", new RowMapper<Ads>(){
				public Ads mapRow(ResultSet rs, int row)  throws SQLException{
					Ads x = new Ads();
					x.setAdsid(rs.getInt(1));
					x.setImage(rs.getBytes(2));
					x.setTitle(rs.getString(3));
					x.setCategory(rs.getString(4));
					x.setDescription(rs.getString(5));
					x.setUserid(rs.getInt(6));
					x.setSellername(rs.getString(7));
					x.setDateposted(rs.getString(8));
					
					
					
					
					
					

					return x;
				}
			});
		}
}



