package cn.mldn.shopcar.service.front;

import cn.mldn.shopcar.vo.Member;

public interface IMemberServiceFront {
	/**
	 * 用户登录处理，根据用户名和密码进行登录操作 
	 * @param vo 包含有用户名和密码（加密）
	 * @return 登录成功返回true，否则返回false
	 * @throws Exception SQL
	 */
	public boolean login(Member vo) throws Exception ;
}
