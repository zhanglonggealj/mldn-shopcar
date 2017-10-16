package cn.mldn.shopcar.action.front;

import cn.mldn.util.action.ActionResourceUtil;
import cn.mldn.util.action.abs.AbstractAction;
import cn.mldn.util.web.ModelAndView;

public class OrdersActionFront extends AbstractAction {
	public static final String ACTION_TITLE = "订单" ;
	/**
	 * 实现订单创建处理
	 * @return 订单创建页面
	 */
	public ModelAndView add() {
		ModelAndView mav = new ModelAndView(ActionResourceUtil.getPage("forward.page")) ;
		super.setUrlAndMsg(mav, "front.orders.list.action", "vo.add.success",ACTION_TITLE );
		return mav ;
	}
	/**
	 * 查看订单详情信息
	 * @return 订单详情显示
	 */
	public ModelAndView show() {
		ModelAndView mav = new ModelAndView(ActionResourceUtil.getPage("front.orders.show.page")) ;
		return mav ;
	}
	/**
	 * 实现订单创建前的处理
	 * @return 订单创建页面
	 */
	public ModelAndView addPre() {
		ModelAndView mav = new ModelAndView(ActionResourceUtil.getPage("front.orders.addpre.page")) ;
		return mav ;
	}
	/**
	 * 实现订单信息列表显示
	 * @return 跳转到订单列表页
	 */
	public ModelAndView list() {
		ModelAndView mav = new ModelAndView(ActionResourceUtil.getPage("front.orders.list.page")) ;
		return mav ;
	}
}
