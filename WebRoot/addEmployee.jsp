<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加员工</title>
    
	<meta http-equiv="pragma" content="no-cache">

	<link rel="stylesheet" href="plugins/layui/css/layui.css" media="all" />
	<link rel="stylesheet" href="plugins/font-awesome/css/font-awesome.min.css">
    

  </head>
  
  <body>
    		<div style="margin: 15px;">
			<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
				<legend>添加员工</legend>
			</fieldset>

			<form class="layui-form" action="addEmployeeAction">
				<div class="layui-form-item">
					<label class="layui-form-label">员工姓名</label>
					<div class="layui-input-block">
						<input type="text" name="ename"  placeholder="请输入员工姓名" class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">员工密码</label>
					<div class="layui-input-block">
						<input type="text" name="password"  placeholder="请输入员工密码" class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">真实姓名</label>
					<div class="layui-input-block">
						<input type="text" name="realName"  placeholder="请输入真实姓名" class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">手机号码</label>
					<div class="layui-input-block">
						<input type="text" name="phoneNumber"  placeholder="请输入手机号码" class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">所属公司</label>
					<div class="layui-input-inline">
						<select name="company">
							<option value="">--请选择所属公司--</option>
							<option value="1000">济南分公司</option>
							<option value="1001">北京分公司</option>
						</select>
					</div>
					<label class="layui-form-label">所属部门</label>
					<div class="layui-input-inline">
						<select name="department">
							<option value="">--请选择所属部门--</option>
							<option value="1000">收货部</option>
							<option value="1001">票务部</option>
							<option value="1002">配送部</option>
							<option value="1003">财务部</option>
							<option value="1004">业务部</option>
							<option value="1005">维护部</option>
							<option value="1006">行政部</option>
						</select>
					</div>
					<label class="layui-form-label">所属角色</label>
					<div class="layui-input-inline">
						<select name="roleID">
							<option value="">--请选择所属角色--</option>
							<option value="1001">收货员</option>
							<option value="1002">票务员</option>
							<option value="1003">配送员</option>
							<option value="1004">财务员</option>
							<option value="1005">业务员</option>
							<option value="1006">维护员</option>
							<option value="1007">经理</option>
						</select>
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">员工状态</label>
					<div class="layui-input-block">
						<input type="radio" name="eState" value="1" title="在职" checked="checked">
						<input type="radio" name="eState" value="0" title="离职" >
						<input type="radio" name="eState" value="2" title="休假">
					</div>
				</div>
				<div class="layui-form-item layui-form-text">
					<label class="layui-form-label">备注</label>
					<div class="layui-input-block">
						<textarea placeholder="请输入备注" class="layui-textarea"></textarea>
					</div>
				</div>
				<div class="layui-form-item">
					<div class="layui-input-block">
						<button type="submit" class="layui-btn">立即添加</button>
						<button type="reset" class="layui-btn layui-btn-primary">重置</button>
					</div>
				</div>
			</form>
		</div>
		<script type="text/javascript" src="plugins/layui/layui.js"></script>
		<script>
			layui.use(['form'], function() {
				var form = layui.form(),
					layer = layui.layer;
			});
		</script>
  </body>
</html>
