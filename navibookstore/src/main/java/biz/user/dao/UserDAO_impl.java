package biz.user.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import biz.user.vo.UserVO;

@Component("spring_user")
public class UserDAO_impl implements UserDAO {

	@Autowired
	JdbcTemplate template;
	
	@Override
	public UserVO Login(String id, String pwd) {
		String sql = "select * from users where id=? and pwd = ?";
		UserVO vo =null;
		
		try {
			vo = template.queryForObject(sql,new Object[]{id,pwd},new UserRowMapper() );
		}catch (Exception e) {
			
		}
		return vo;
	}
	
	@Override
	public int addUser(UserVO user) throws Exception {
		String sql = "insert into users (id, name, pwd, address, tel) values (?, ?, ?, ?, ?)";
		
		template.update(sql,new Object[]{
				  user.getUserid(),
				  user.getUsername(),
				  user.getUserpwd(),
				  user.getPhone(),
				  user.getAddress()});
		
		return 0;
	}
	
	@Override
	public UserVO findID(String name, String tel) {
		String sql = "select id from users where name =? and tel=?";
		UserVO vo =null;
		try {
			vo = template.queryForObject(sql,new Object[]{name,tel},new UserRowMapper() );
		}catch (Exception e) {
			
		}
		return vo;
	}
	
	@Override
	public UserVO findPW(String id, String name, String tel) {
		String sql = "select id from users where id =? and name =? and tel=?";
		UserVO vo =null;
		try {
			vo = template.queryForObject(sql,new Object[]{id,name,tel},new UserRowMapper() );
		}catch (Exception e) {
			
		}
		return vo;
	}
	
	//�씠嫄� ajax濡� �븷吏� �깮媛곹빐遊먯빞�븿]
	
	@Override
	public int  IDcheck(String id) {
		String sql = "select * from users where id = ?";
		UserVO vo =null;
		int result =0;
		try {
			vo = template.queryForObject(sql,new Object[]{id},new UserRowMapper() );
			if(vo!=null) {
				result =1;
			}
		}catch (Exception e) {
			
		}
		return result;
	}
	
	class UserRowMapper implements RowMapper<UserVO>{
		@Override
		public UserVO mapRow(ResultSet rs, int rowNum) throws SQLException {
			UserVO vo =new UserVO();
			vo =new UserVO();
			vo.setAddress(rs.getString("address"));
			vo.setPhone(rs.getString("tel"));
			vo.setUserid(rs.getString("id"));
			vo.setUsername(rs.getString("name"));
			vo.setUserpwd(rs.getString("pwd"));
			return vo;
		}
	}
}
