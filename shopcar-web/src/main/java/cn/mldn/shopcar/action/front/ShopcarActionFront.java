package cn.mldn.shopcar.action.front;

import cn.mldn.util.action.ActionResourceUtil;
import cn.mldn.util.action.abs.AbstractAction;
import cn.mldn.util.web.ModelAndView;

public class ShopcarActionFront extends AbstractAction {
	public ModelAndView list() {
		ModelAndView mav = new ModelAndView(ActionResourceUtil.getPage("front.shopcar.list.page")) ;
		return mav ;
	}
}
