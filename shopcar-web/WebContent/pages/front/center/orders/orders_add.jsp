<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<jsp:include page="/pages/plugins/front/front_header.jsp"/>
<script type="text/javascript" src="js/front/center/orders/orders_add.js"></script>
<%!
	public static final String ORDERS_ADD_URL = "pages/front/center/orders/OrdersActionFront!add.action" ;
%>
<body class="back">
	<div class="contentback">
		<div id="headDiv" class="row">
			<div class="col-md-12 col-xs-12">
				<jsp:include page="/pages/plugins/front/include_menu_member.jsp" />
			</div>
		</div>
		<div style="height: 60px;"></div> 
		<div id="contentDiv" class="row">
			<div class="col-md-2 col-xs-2">
				<jsp:include page="/pages/plugins/front/center/include_center_item.jsp">
					<jsp:param value="1" name="ch"/>
				</jsp:include>
			</div>
			<div class="col-md-10 col-xs-10">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<strong><span class="glyphicon glyphicon-file"></span>&nbsp;创建订单</strong>
					</div>
					<div class="panel-body">
						<form class="form-horizontal" action="<%=ORDERS_ADD_URL%>" id="myform" method="post">
							<div class="form-group" id="nameDiv">
								<!-- 定义表单提示文字 -->
								<label class="col-md-3 control-label" for="name">收件人：</label>
								<div class="col-md-5">
									<!-- 定义表单输入组件 -->
									<input type="text" id="name" name="name" class="form-control"
										placeholder="请输入收件人姓名" value="">
								</div>
								<!-- 定义表单错误提示显示元素 -->
								<div class="col-md-4" id="nameMsg"></div>
							</div>
							<div class="form-group" id="phoneDiv">
								<!-- 定义表单提示文字 -->
								<label class="col-md-3 control-label" for="phone">联系电话：</label>
								<div class="col-md-5">
									<!-- 定义表单输入组件 -->
									<input type="text" id="phone" name="phone" class="form-control"
										placeholder="请输入您的联系电话" value="">
								</div>
								<!-- 定义表单错误提示显示元素 -->
								<div class="col-md-4" id="phoneMsg"></div>
							</div>
							<div class="form-group" id="pidDiv">
								<!-- 定义表单提示文字 -->
								<label class="col-md-3 control-label" for="pid">省份：</label>
								<div class="col-md-5">
									<select id="pid" name="pid" class="form-control">
										<option value="">===== 请选择配送省份 =======</option>
										<option value="1">北京</option>
										<option value="2">天津</option>
										<option value="3">上海</option> 
										<option value="4">山东</option>
										<option value="5">辽宁</option>
									</select>
								</div>
								<!-- 定义表单错误提示显示元素 -->
								<div class="col-md-4" id="pidMsg"></div>
							</div>
							<div class="form-group" id="cidDiv">
								<!-- 定义表单提示文字 -->
								<label class="col-md-3 control-label" for="cid">城市：</label>
								<div class="col-md-5">
									<select id="cid" name="cid" class="form-control">
										<option value="">===== 请选择配送城市 =======</option>
										<option value="11">济南</option>
										<option value="12">青岛</option>
										<option value="13">潍坊</option>
									</select>
								</div>
								<!-- 定义表单错误提示显示元素 -->
								<div class="col-md-4" id="cidMsg"></div>
							</div>
							<div class="form-group" id="addressDiv">
								<!-- 定义表单提示文字 -->
								<label class="col-md-3 control-label" for="address">地址：</label>
								<div class="col-md-5">
									<!-- 定义表单输入组件 -->
									<input type="text" id="address" name="address" class="form-control"
										placeholder="请输入您的联系地址" value="">
								</div>
								<!-- 定义表单错误提示显示元素 -->
								<div class="col-md-4" id="addressMsg"></div>
							</div>
							<div id="noteDiv" class="form-group">
								<label class="col-md-3 control-label" for="addr">订单备注：</label>
								<div class="col-md-5"> 
									<textarea id="note" name="note" class="form-control"></textarea>
								</div>
								<div class="col-md-4" id="noteMsg"></div>
							</div>
							<div class="form-group row">
								<div class="col-md-3 text-right"><label>所购商品：</label></div>
								<div class="col-md-5">
									<table class="table table-condensed">
										<tbody>
											<tr>
												<td class="text-center">Java开发实战经典</td>
												<td class="text-center"><span id="price-1">￥79.8</span></td>
												<td class="text-center">20</td>
											</tr>
											<tr> 
												<td class="text-center">Java开发实战经典</td>
												<td class="text-center"><span id="price-2">￥79.8</span></td>
												<td class="text-center">20</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<div class="form-group">
								<div class="col-md-5 col-md-offset-3">
									<button type="submit" class="btn btn-primary btn-lg">
										<span class="glyphicon glyphicon-edit"></span>&nbsp;潇洒的创建订单</button>
								</div>
							</div>
						</form>
					</div>
					<div class="panel-footer">
						<jsp:include page="/pages/plugins/include_alert.jsp"/>
					</div>
				</div>
			</div>
		</div>
	</div>
<jsp:include page="/pages/plugins/front/front_footer.jsp"/>
