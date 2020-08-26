package biz.user.service;

import biz.user.vo.UserVO;

public interface UserService {
	UserVO Login(String id, String pw);
	int addUser(UserVO user)throws Exception;
	UserVO findPW(String id,String name, String phone);
	UserVO findID(String name, String phone);
	int  IDcheck(String id);
	//�씠嫄� �깮媛곹븷 �븘�슂媛� �엳�뀋�뀅
}
