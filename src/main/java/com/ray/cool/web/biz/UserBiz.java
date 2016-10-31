package com.ray.cool.web.biz;

import com.ray.cool.web.bean.Page;
import com.ray.cool.web.entity.User;

/**
 * 用户的业务层
 * @author ydq
 *
 */
public interface UserBiz extends BaseBiz<User, Integer> {

	/**
	 * 获取用户的分页对象
	 * @param pageSize
	 * @param nowPage
	 * @return
	 */
	public Page<User> getUserPage(Integer pageSize, Integer nowPage);
}
