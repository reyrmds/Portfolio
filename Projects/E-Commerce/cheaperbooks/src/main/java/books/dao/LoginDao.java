package books.dao;

import org.springframework.jdbc.core.JdbcTemplate;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;


import org.springframework.jdbc.core.RowMapper;

import books.model.Users;
import books.model.Ads;

public class LoginDao {


	JdbcTemplate template;
	
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	public int save(Users e) {
		String sql = "insert into tbl_users(name,email,contact,password) values('"+e.getName()+"','"+e.getEmail()+"','"+e.getContact()+"','"+e.getPassword()+"')";
		return template.update(sql);
	}
	
	
	public List<Users> getUsers(Users e){
		
		return template.query("Select TOP 1 id,name from tbl_users where (email=('"+e.getEmail()+"') )AND (password=('"+e.getPassword()+"') )", new RowMapper<Users>(){
			public Users mapRow(ResultSet rs, int row)  throws SQLException{
				Users e = new Users();
				e.setUserid(rs.getInt(1));
				e.setName(rs.getString(2));
				return e;
			}
		});
	}
	
	public List<Users> getName(Ads e){
			
			return template.query("Select TOP 1 name,id from tbl_users where id=('"+e.getUserid()+"')", new RowMapper<Users>(){
				public Users mapRow(ResultSet rs, int row)  throws SQLException{
					Users e = new Users();
					e.setName(rs.getString(1));
					e.setUserid(rs.getInt(2));
					return e;
				}
			});
	}
	
	public List<Users> getName(int id) {	
		return template.query("Select TOP 1 name,id from tbl_users where id="+id+"", new RowMapper<Users>(){
			public Users mapRow(ResultSet rs, int row)  throws SQLException{
				Users e = new Users();
				e.setName(rs.getString(1));
				e.setUserid(rs.getInt(2));
				return e;
			}
		});
	}


	public List<Users> getUserinfo(Ads e){
			
			return template.query("Select TOP 1 contact,name,email,id from tbl_users where id=('"+e.getUserid()+"')", new RowMapper<Users>(){
				public Users mapRow(ResultSet rs, int row)  throws SQLException{
					Users e = new Users();
					e.setContact(rs.getString(1));
					e.setName(rs.getString(2));
					e.setEmail(rs.getString(3));
					e.setUserid(rs.getInt(4));
					return e;
				}
			});
		}
	
	public List<Users> getUserinfo(int id){
		
		return template.query(" Select TOP 1 contact,name,email,id from tbl_users where id="+id+"", new RowMapper<Users>(){
			public Users mapRow(ResultSet rs, int row)  throws SQLException{
				Users e = new Users();
				e.setContact(rs.getString(1));
				e.setName(rs.getString(2));
				e.setEmail(rs.getString(3));
				e.setUserid(rs.getInt(4));
				return e;
			}
		});
	}
}
