<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<div class="leftbar leftbar-close clearfix">
	<div class="admin-info clearfix">
		<div class="admin-thumb">
			<i class="icon-user"></i>
		</div>
		<div class="admin-meta">
			<ul>
				<li class="admin-username" style="margin-top: 10px;">欢迎你 admin</li>
				<li><a href="${pageContext.request.contextPath}/admin/loginout">
				<i class="icon-lock"></i> 退出</a></li>
			</ul>
		</div>
	</div>

	<div class="left-nav clearfix">
		<div class="left-primary-nav">
			<ul id="myTab">
				<li  class="active"><a href="#dailyreport" class="icon-calendar" data-original-title="日报"></a></li>
			</ul>
		</div>
		<div class="responsive-leftbar">
			<i class="icon-list"></i>
		</div>
		<div class="left-secondary-nav tab-content" >
			<div class="tab-pane active dailyreport" id="dailyreport">
				<ul id="nav" class="accordion-nav" >
					<li><a href="${pageContext.request.contextPath}/admin/company/add"><i class="icon-pencil"></i>单位档案新增</a></li>
					<li><a href="${pageContext.request.contextPath}/admin/company/update"><i class="icon-upload"></i> 单位档案修改</a></li>
					<li><a href="${pageContext.request.contextPath}/admin/load/index"><i class="icon-zoom-in"></i> 单位档案封存</a></li>
					<li><a href="${pageContext.request.contextPath}/admin/people/add"><i class="icon-zoom-in"></i> 个人档案增加</a></li>
					<li><a href="${pageContext.request.contextPath}/admin/news/index"><i class="icon-zoom-in"></i>个人档案修改</a></li>
					<li><a href="${pageContext.request.contextPath}/admin/accident/index"><i class="icon-zoom-in"></i> 个人档案删除</a></li>
					<li><a href="${pageContext.request.contextPath}/admin/notice/index"><i class="icon-zoom-in"></i> 退休档案</a></li>
					<li><a href="${pageContext.request.contextPath}/admin/notice/index"><i class="icon-zoom-in"></i> 养老保险金计算</a></li>
				</ul>
			</div>
		</div>
	</div>
</div>