<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title></title>
<link rel="stylesheet" type="text/css"
	href="../Styles/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="../Styles/admin-all.css" />
<script type="text/javascript" src="../Scripts/jquery-1.7.2.js"></script>
<script type="text/javascript"
	src="../Scripts/jquery-ui-1.8.22.custom.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="../Styles/ui-lightness/jquery-ui-1.8.22.custom.css" />
<script type="text/javascript">
	$(function() {
		$('.modal').show();

		$(".datepicker").datepicker();
	})

	$(function() {
		$('#submit').click(function() {
			if ($('#name').val() == "") {
				var $parent = self.parent.$;
				$parent('body').alert({
					type : 'warning',
					title : '系统提示', //标题
					content : '客户不可为空！', //提示文字信息
					btntext : '确定', //按钮文字
					modal : true, //模式，开关灯
					draggable : false
				//是否可拖动
				})
			} else {
				$("form").submit();
			}
		});
	})
</script>
<s:if test="hasActionMessages()">
	<s:set name="result" value="actionMessages[0]" />
	<s:if test="#result =='adderror'">
		<script type="text/javascript">
			var $parent = self.parent.$;
			$(function() {
				$parent('body').alert({
					type : 'danger',
					title : '系统提示', //标题
					content : '失败，案件编号已存在！', //提示文字信息
					btntext : '确定', //按钮文字
					modal : true, //模式，开关灯
					draggable : false
				//是否可拖动
				})
			})
		</script>
	</s:if>

	<s:if test="#result =='nocase'">
		<script type="text/javascript">
			var $parent = self.parent.$;
			$(function() {
				$parent('body').alert({
					type : 'danger',
					title : '系统提示', //标题
					content : '失败，案件编号不存在！', //提示文字信息
					btntext : '确定', //按钮文字
					modal : true, //模式，开关灯
					draggable : false
				//是否可拖动
				})
			})
		</script>
	</s:if>
	
	<s:if test="#result =='nolawyer'">
		<script type="text/javascript">
			var $parent = self.parent.$;
			$(function() {
				$parent('body').alert({
					type : 'danger',
					title : '系统提示', //标题
					content : '失败，律师编号不存在！', //提示文字信息
					btntext : '确定', //按钮文字
					modal : true, //模式，开关灯
					draggable : false
				//是否可拖动
				})
			})
		</script>
	</s:if>

	<s:if test="#result =='addsuccess'">
		<script type="text/javascript">
			var $parent = self.parent.$;
			$(function() {
				$parent('body').alert({
					type : 'success',
					title : '系统提示', //标题
					content : '添加成功！', //提示文字信息
					btntext : '确定', //按钮文字
					modal : true, //模式，开关灯
					draggable : false
				//是否可拖动
				})
			})
		</script>
	</s:if>
</s:if>
<s:set name="name" value="#client.name"></s:set>
<s:set name="caseID" value="#client.caseID"></s:set>
<s:set name="lawyerID" value="#client.lawyerID"></s:set>
<s:set name="address" value="#client.address"></s:set>
<s:set name="phone" value="#client.phone"></s:set>
<s:set name="fax" value="#client.fax"></s:set>
<s:set name="zip" value="#client.zip"></s:set>
<s:set name="memo" value="#client.memo"></s:set>
</head>
<body>
	<div class="alert alert-info">
		当前位置<b class="tip"></b>客户管理<b class="tip"></b>增加客户
	</div>

	<table class="table table-striped table-bordered table-condensed list">
		<form id="form" action="addclient" method="post">
			<thead>
				<tr>
					<td colspan="4"><b>客户基本信息</b>
					</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td width="15%">客户姓名<font color="FF0000">*</font>
					</td>
					<td width="500" colspan="3"><input name="name" id="name"
						value="${name}" type="text" /></td>
				</tr>
				<tr>
					<td>相关案件编号</td>
					<td><input name="caseID" value="${caseID}" type="text" />
					</td>
					<td>负责律师编号</td>
					<td><input name="lawyerID" value="${lawyerID}" type="text" />
					</td>
				</tr>
				<tr>
					<td>联系地址</td>
					<td><input name="address" value="${address}" type="text" />
					</td>
					<td>联系电话</td>
					<td><input name="phone" value="${phone}" type="text" />
					</td>
				</tr>
				<tr>
					<td>传真</td>
					<td><input name="fax" value="${fax}" type="text" />
					</td>
					<td>邮政编码</td>
					<td><input name="zip" value="${zip}" type="text" />
					</td>
				</tr>
				<tr>
					<td width="15%">备注</td>
					<td width="500" colspan="3" height=""><textarea name="memo"
							style="width: 95%" rows="4" cols="5">${memo}</textarea></td>
				</tr>
			</tbody>
			<tfoot>

			</tfoot>
	</table>
	</form>
	<div style="text-align:center; ">
		<input class="btn btn-inverse" id="submit" type="button" value="保存" />
	</div>
</body>
</html>

