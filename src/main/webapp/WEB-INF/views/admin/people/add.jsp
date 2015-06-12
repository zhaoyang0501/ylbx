<!DOCTYPE html>
<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="ch">
<%@ include file="../common/meta.jsp"%>
<head>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/ace/admin.cookbook.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/falgun/bootbox.js"></script>
<script src="${pageContext.request.contextPath}/admin/js/falgun/bootstrap-datetimepicker.min.js"></script>
<script src="${pageContext.request.contextPath}/admin/js/falgun/bootstrap-datetimepicker.zh-CN.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$(".date").datetimepicker({
			language:  'zh-CN',
	        weekStart: 1,
	        todayBtn:  1,
	        format:'yyyy-mm-dd',
			autoclose: 1,
			todayHighlight: 1,
			startView: 2,
			minView: 2,
			forceParse: 0
	    });
	});
</script>
</head>
<body>
	<div class="layout">
		<!-- top -->
		<%@ include file="../top.jsp"%>
		<!-- 导航 -->
		<%@ include file="../menu.jsp"%>
		
		<input type="hidden" id="hf_id" />

		<div class="main-wrapper">
			<div class="container-fluid">
				<div class="row-fluid ">
					<div class="span12">
					<div class="content-widgets light-gray">
						<div class="widget-head blue">
							<h3>个人档案新增</h3>
						</div>
						<div class="widget-container">
							<form class="form-horizontal">
								<div class="control-group">
									<label class="control-label">身份证号码</label>
									<div class="controls">
										<input type="text" placeholder="" class="span12">
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">姓名</label>
									<div class="controls">
										<input type="text" placeholder="" class="span12">
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">单位代号</label>
									<div class="controls">
										<input type="text" placeholder="" class="span12">
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">电话</label>
									<div class="controls">
										<input type="text" placeholder="" class="span12">
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">住址</label>
									<div class="controls">
										<input type="text" placeholder="" class="span12">
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">邮编</label>
									<div class="controls">
										<input type="text" placeholder="" class="span12">
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">性别</label>
									<div class="controls">
										<select> 
										<option>男</option>
										</select>
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">民族</label>
									<div class="controls">
										<select> 
										<option>维吾尔族</option>
										</select>
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">用工制度</label>
									<div class="controls">
										<select> 
										<option>临时工</option>
										</select>
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">参加工作时间</label>
									<div class="controls">
										<input type="text" placeholder="" class="span12">
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">参保日期</label>
									<div class="controls">
										<input type="text" placeholder="" class="span12">
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">账号号码</label>
									<div class="controls">
										<input type="text" placeholder="" class="span12">
									</div>
								</div>
								<div class="form-actions">
									<button type="submit" class="btn btn-success">提交</button>
									<button type="button" class="btn">取消</button>
								</div>
							</form>
						</div>
					</div>
				</div>
				</div>
			</div>
		</div>
		<%@ include file="../foot.jsp"%>
	</div>

	<!-- 编辑新增弹出框 -->
	<div class="modal hide fade" id="resource_modal">
		<div class="modal-header blue">
			<button type="button" class="close" data-dismiss="modal">×</button>
			<label id="modal_header_label"></label>
		</div>
		<div class="modal-body" style="min-height: 200px;">
			<div class="row-fluid">
				<div class="span12">
					<div class="form-container grid-form form-background left-align form-horizontal">
						<form action="" method="get" id=''>
							<input type="hidden" id="id" value="">
							<div class="control-group">
								<label for="name" class="control-label">名称：</label>
								<div class="controls">
									<input type="text" id="name" value="" placeholder="">
								</div>
							</div>
							
							<div class="control-group" id='control_project'>
								<label for="category" class="control-label">分类：</label>
								<div class="controls">
									<select id='category' onchange="$.adminCookBook.changeCategory()">
											<option value=""></option>
											<c:forEach items="${categorys }" var="bean">
												<option value="${bean.id }">${bean.name }</option>
											</c:forEach>
									</select>
								</div>
							</div>
							
							<div class="control-group" id='control_project'>
								<label for="categorySub" class="control-label">小类：</label>
								<div class="controls">
									<select id='categorySub' onchange="">
											<option value=""></option>
											<c:forEach items="${categorySubs }" var="bean">
												<option value="${bean.id }">${bean.name }</option>
											</c:forEach>
									</select>
								</div>
							</div>
							
							<div class="control-group">
								<label for="count" class="control-label">点击：</label>
								<div class="controls">
									<input type="text" id="count" value="" placeholder="">
								</div>
							</div>
							
							<div class="control-group">
								<label for="name" class="control-label">评分：</label>
								<div class="controls">
									<input type="text" id="score" value="" placeholder="">
								</div>
							</div>
							
							<div class="control-group" id='control_project'>
								<label for="remark" class="control-label">简介：</label>
								<div class="controls">
									<textarea id="remark" placeholder="" rows="3">
									</textarea>
								</div>
							</div>
							
							
						</form>
					</div>
				</div>
			</div>
		</div>
		
		<div class="modal-footer center" id="div_footer">
			<a class="btn btn-primary" onclick="$.adminCookBook.update()">保存</a>
			<a href="#"   class="btn" data-dismiss="modal" id="closeViewModal">关闭</a>
		</div>
	</div>
</body>
</html>