package biz.user.dao;

import biz.user.vo.UserVO;

public interface UserDAO {
	UserVO Login(String id, String pwd);
	int addUser(UserVO user)throws Exception;
	UserVO findPW(String id,String name, String tel);
	UserVO findID(String name, String tel);
	//boolean IDcheck(String id);
	//이건 실시간으로 해야하는거지...
	
}
