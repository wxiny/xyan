<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title><sitemesh:title default="后台管理"/></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<!-- basic styles -->
<link href="${path}/static/assets/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="${path}/static/assets/css/font-awesome.min.css" />

<!--[if IE 7]>
<link rel="stylesheet" href="${path}/static/assets/css/font-awesome-ie7.min.css" />
<![endif]-->
<!-- page specific plugin styles -->
<!-- fonts -->
<!-- <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400,300" /> -->
<link rel="stylesheet" href="${path}/static/css/googleapis.css" />
<!-- ace styles -->
<link rel="stylesheet" href="${path}/static/assets/css/ace.min.css" />
<link rel="stylesheet" href="${path}/static/assets/css/ace-rtl.min.css" />
<link rel="stylesheet" href="${path}/static/assets/css/ace-skins.min.css" />
<!--[if lte IE 8]>
<link rel="stylesheet" href="${path}/static/assets/css/ace-ie.min.css" />
<![endif]-->
<!-- inline styles related to this page -->
<!-- ace settings handler -->
<script src="${path}/static/assets/js/ace-extra.min.js"></script>
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
<script src="${path}/static/assets/js/html5shiv.js"></script>
<script src="${path}/static/assets/js/respond.min.js"></script>
<![endif]-->
<!-- basic scripts -->
<!--[if !IE]> -->
<!-- <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script> -->
<!-- <![endif]-->
<!--[if IE]>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<![endif]-->
<!--[if !IE]> -->
<script type="text/javascript">
	window.jQuery|| document.write("<script src='${path}/static/assets/js/jquery-2.0.3.min.js'>"+ "<"+"script>");
</script>
<!-- <![endif]-->
<!--[if IE]>
<script type="text/javascript">
 window.jQuery || document.write("<script src='${path}/static/assets/js/jquery-1.10.2.min.js'>"+"<"+"script>");
</script>
<![endif]-->
<script type="text/javascript">
	if ("ontouchend" in document)
		document .write("<script src='${path}/static/assets/js/jquery.mobile.custom.min.js'>" + "<"+"script>");
</script>
<script src="${path}/static/assets/js/bootstrap.min.js"></script>
<script src="${path}/static/assets/js/typeahead-bs2.min.js"></script>
<!-- page specific plugin scripts -->
<!--[if lte IE 8]>
<script src="${path}/static/assets/js/excanvas.min.js"></script>
<![endif]-->
</head>
<body>
<div class="navbar navbar-default" id="navbar">
	<script type="text/javascript">
		try {
			ace.settings.check('navbar', 'fixed')
		} catch (e) {
		}
	</script>
	<div class="navbar-container" id="navbar-container">
		<div class="navbar-header pull-left">
			<a href="#" class="navbar-brand"> 
				<small> <i class="icon-leaf"></i>后台管理系统 </small>
			</a>
			<!-- /.brand -->
		</div>
			<!-- /.navbar-header -->
		<div class="navbar-header pull-right" role="navigation">
			<ul class="nav ace-nav">
				<li class="grey">
					<a data-toggle="dropdown" class="dropdown-toggle" href="#"> 
						<i class="icon-tasks"></i> 
						<span class="badge badge-grey">4</span>
					</a>
					<ul class="pull-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
						<li class="dropdown-header"><i class="icon-ok"></i> 还有4个任务完成 </li>
 						<li>
 							<a href="#">
 								<div class="clearfix">
 									<span class="pull-left">软件更新</span>
 									<span class="pull-right">65%</span>
								</div>
								<div class="progress progress-mini ">
									<div style="width:65%" class="progress-bar "></div>
								</div>
							</a>
						</li>
						<li>
							<a href="#">
								<div class="clearfix">
									<span class="pull-left">硬件更新</span> <span class="pull-right">35%</span>
								</div>
								<div class="progress progress-mini ">
									<div style="width:35%" class="progress-bar progress-bar-danger"></div>
								</div>
							</a>
						</li>
						<li>
							<a href="#">
								<div class="clearfix">
									<span class="pull-left">单元测试</span> <span class="pull-right">15%</span>
								</div>

								<div class="progress progress-mini ">
									<div style="width:15%"
										class="progress-bar progress-bar-warning"></div>
								</div>
							</a>
						</li>
						<li>
							<a href="#">
								<div class="clearfix">
									<span class="pull-left">错误修复</span> <span class="pull-right">90%</span>
								</div>

								<div class="progress progress-mini progress-striped active">
									<div style="width:90%"
										class="progress-bar progress-bar-success"></div>
								</div>
							</a>
						</li>
						<li><a href="#"> 查看任务详情 <i class="icon-arrow-right"></i></a></li>
					</ul>
				</li>
				<li class="purple">
					<a data-toggle="dropdown" class="dropdown-toggle" href="#"> 
						<i class="icon-bell-alt icon-animated-bell"></i> 
						<span class="badge badge-important">8</span>
					</a>
					<ul class="pull-right dropdown-navbar navbar-pink dropdown-menu dropdown-caret dropdown-close">
						<li class="dropdown-header"><i class="icon-warning-sign"></i> 8条通知</li>
						<li>
							<a href="#">
								<div class="clearfix">
									<span class="pull-left"> <i
										class="btn btn-xs no-hover btn-pink icon-comment"></i> 新闻评论
									</span> 
									<span class="pull-right badge badge-info">+12</span>
								</div>
							</a>
						</li>
						<li><a href="#"> <i class="btn btn-xs btn-primary icon-user"></i> 切换为编辑登录.. </a></li>
						<li>
							<a href="#">
								<div class="clearfix">
									<span class="pull-left"> <i
										class="btn btn-xs no-hover btn-success icon-shopping-cart"></i>
										新订单
									</span> <span class="pull-right badge badge-success">+8</span>
								</div>
							</a>
						</li>
						<li>
							<a href="#">
								<div class="clearfix">
									<span class="pull-left"> <i
										class="btn btn-xs no-hover btn-info icon-twitter"></i> 粉丝
									</span> <span class="pull-right badge badge-info">+11</span>
								</div>
							</a>
						</li>
						<li><a href="#"> 查看所有通知 <i class="icon-arrow-right"></i></a></li>
					</ul>
				</li>
				<li class="green">
					<a data-toggle="dropdown" class="dropdown-toggle" href="#"> 
						<i class="icon-envelope icon-animated-vertical"></i> 
						<span class="badge badge-success">5</span>
					</a>
					<ul class="pull-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
						<li class="dropdown-header"><i class="icon-envelope-alt"></i> 5条消息</li>
						<li>
							<a href="#"> 
								<img src="${path}/static/assets/avatars/avatar.png" class="msg-photo" alt="Alex's Avatar" /> 
								<span class="msg-body">
									<span class="msg-title"> 
										<span class="blue">Alex:</span> 不知道写啥 ...
									</span> 
									<span class="msg-time"><i class="icon-time"></i><span>1分钟以前</span></span>
								</span>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="${path}/static/assets/avatars/avatar3.png" class="msg-photo" alt="Susan's Avatar" /> 
								<span class="msg-body"> 
									<span class="msg-title"> 
										<span class="blue">Susan:</span> 不知道翻译...
									</span> 
									<span class="msg-time"><i class="icon-time"></i> <span>20分钟以前</span>
									</span>
								</span>
							</a>
						</li>
						<li><a href="#"> <img src="${path}/static/assets/avatars/avatar4.png"
								class="msg-photo" alt="Bob's Avatar" /> <span class="msg-body">
									<span class="msg-title"> <span class="blue">Bob:</span>
										到底是不是英文 ...
								</span> <span class="msg-time"> <i class="icon-time"></i> <span>下午3:15</span>
								</span>
							</span>
						</a></li>

						<li><a href="${path}/admin/inbox"> 查看所有消息 <i
								class="icon-arrow-right"></i>
						</a></li>
					</ul>
				</li>
				<li class="light-blue">
					<a data-toggle="dropdown" href="#" class="dropdown-toggle"> 
						<img class="nav-user-photo" src="${path}/static/assets/avatars/user.jpg" alt="Jason's Photo" /> 
						<span class="user-info"> <small>欢迎光临,</small> Jason </span> 
						<i class="icon-caret-down"></i>
					</a>
					<ul class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
						<li><a href="#"> <i class="icon-cog"></i> 设置
						</a></li>

						<li><a href="#"> <i class="icon-user"></i> 个人资料
						</a></li>

						<li class="divider"></li>

						<li><a href="#"> <i class="icon-off"></i> 退出
						</a></li>
					</ul>
				</li>
			</ul>
			<!-- /.ace-nav -->
		</div>
			<!-- /.navbar-header -->
	</div>
	<!-- /.container -->
</div>
<div class="main-container" id="main-container">
	<script type="text/javascript">
		try {
			ace.settings.check('main-container', 'fixed')
		} catch (e) {
		}
	</script>
	<div class="main-container-inner">
		<a class="menu-toggler" id="menu-toggler" href="#"> <span
			class="menu-text"></span>
		</a>

		<div class="sidebar" id="sidebar">
			<script type="text/javascript">
				try {
					ace.settings.check('sidebar', 'fixed')
				} catch (e) {
				}
			</script>
			<div class="sidebar-shortcuts" id="sidebar-shortcuts">
				<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
					<button class="btn btn-success">
						<i class="icon-signal"></i>
					</button>

					<button class="btn btn-info">
						<i class="icon-pencil"></i>
					</button>

					<button class="btn btn-warning">
						<i class="icon-group"></i>
					</button>

					<button class="btn btn-danger">
						<i class="icon-cogs"></i>
					</button>
				</div>
				<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
					<span class="btn btn-success"></span> <span class="btn btn-info"></span>
					<span class="btn btn-warning"></span> <span class="btn btn-danger"></span>
				</div>
			</div>
			<!-- #sidebar-shortcuts -->
			<ul class="nav nav-list">
				<li class="active"><a href="${path}/index"><i class="icon-dashboard"></i> <span class="menu-text"> 控制台 </span></a></li>
				<li><a href="${path}/admin/typography"> <i class="icon-text-width"></i><span class="menu-text"> 文字排版 </span></a></li>
				<li>
					<a href="#" class="dropdown-toggle"><i class="icon-desktop"></i> <span class="menu-text"> UI 组件 </span><b class="arrow icon-angle-down"></b></a>
					<ul class="submenu">
						<li><a href="${path}/admin/elements"><i class="icon-double-angle-right"></i> 组件</a></li>
						<li><a href="${path}/admin/buttons"><i class="icon-double-angle-right"></i> 按钮 &amp; 图表</a></li>
						<li><a href="${path}/admin/treeview"><i class="icon-double-angle-right"></i> 树菜单</a></li>
						<li><a href="${path}/admin/jquery-ui"><i class="icon-double-angle-right"></i> jQuery UI </a></li>
						<li><a href="${path}/admin/nestable-list"><i class="icon-double-angle-right"></i> 可拖拽列表 </a></li>
						<li>
							<a href="#" class="dropdown-toggle"><i class="icon-double-angle-right"></i> 三级菜单 <b class="arrow icon-angle-down"></b></a>
							<ul class="submenu">
								<li><a href="#"> <i class="icon-leaf"></i> 第一级 </a></li>
								<li>
									<a href="#" class="dropdown-toggle"><i class="icon-pencil"></i> 第四级 <b class="arrow icon-angle-down"></b> </a>
									<ul class="submenu">
										<li><a href="#"> <i class="icon-plus"></i> 添加产品 </a></li>
										<li><a href="#"> <i class="icon-eye-open"></i> 查看商品 </a></li>
									</ul>
								</li>
							</ul>
						</li>
					</ul>
				</li>
				<li>
					<a href="#" class="dropdown-toggle"><i class="icon-list"></i> <span class="menu-text"> 表格 </span> <b class="arrow icon-angle-down"></b></a>
					<ul class="submenu">
						<li><a href="${path}/admin/tables"> <i class="icon-double-angle-right"></i> 简单 &amp; 动态 </a></li>
						<li><a href="${path}/admin/jqgrid"> <i class="icon-double-angle-right"></i> jqGrid plugin</a></li>
					</ul>
				</li>
				<li>
					<a href="#" class="dropdown-toggle"><i class="icon-edit"></i> <span class="menu-text"> 表单 </span> <b class="arrow icon-angle-down"></b> </a>
					<ul class="submenu">
						<li><a href="${path}/admin/form-elements"> <i class="icon-double-angle-right"></i> 表单组件 </a></li>
						<li><a href="${path}/admin/form-wizard"> <i class="icon-double-angle-right"></i> 向导提示 &amp; 验证 </a></li>
						<li><a href="${path}/admin/wysiwyg"> <i class="icon-double-angle-right"></i> 编辑器 </a></li>
						<li><a href="${path}/admin/dropzone"> <i class="icon-double-angle-right"></i> 文件上传 </a></li>
					</ul>
				</li>
				<li><a href="${path}/admin/widgets"> <i class="icon-list-alt"></i> <span class="menu-text"> 插件 </span> </a></li>
				<li>
					<a href="${path}/admin/calendar">
						<i class="icon-calendar"></i>
						<span class="menu-text">日历 <span class="badge badge-transparent tooltip-error" title="2&nbsp;Important&nbsp;Events"><i class="icon-warning-sign red bigger-130"></i> </span>
						</span>
					</a>
				</li>
				<li>
					<a href="#" class="dropdown-toggle"><i class="icon-picture"></i><span class="menu-text"> 相册 </span><b class="arrow icon-angle-down"></b></a>
					<ul class="submenu">
						<li><a href="${path}/admin/gallery"> <i class="icon-double-angle-right"></i>画廊 </a></li>
						<li><a href="${path}/admin/ppt"> <i class="icon-double-angle-right"></i>幻灯片 </a></li>
					</ul>
				</li>
				
				<li>
					<a href="#" class="dropdown-toggle"><i class="icon-tag"></i> <span class="menu-text"> 更多页面 </span> <b class="arrow icon-angle-down"></b> </a>
					<ul class="submenu">
						<li><a href="${path}/admin/profile"> <i class="icon-double-angle-right"></i> 用户信息 </a></li>
						<li><a href="${path}/admin/inbox"> <i class="icon-double-angle-right"></i> 收件箱 </a></li>
						<li><a href="${path}/admin/pricing"> <i class="icon-double-angle-right"></i> 售价单 </a></li>
						<li><a href="${path}/admin/invoice"> <i class="icon-double-angle-right"></i> 购物车 </a></li>
						<li><a href="${path}/admin/timeline"> <i class="icon-double-angle-right"></i> 时间轴 </a></li>
						<li><a href="${path}/admin/login"> <i class="icon-double-angle-right"></i> 登录 &amp; 注册 </a></li>
					</ul>
				</li>
				<li>
					<a href="#" class="dropdown-toggle"> <i class="icon-file-alt"></i> <span class="menu-text"> 其他页面 <span class="badge badge-primary ">5</span> </span> <b class="arrow icon-angle-down"></b> </a>
					<ul class="submenu">
						<li> <a href="${path}/admin/faq"> <i class="icon-double-angle-right"></i> 帮助 </a></li>
						<li><a href="${path}/admin/error-404"> <i class="icon-double-angle-right"></i> 404错误页面 </a></li>
						<li><a href="${path}/admin/error-500"> <i class="icon-double-angle-right"></i> 500错误页面 </a></li>
						<li><a href="${path}/admin/grid"> <i class="icon-double-angle-right"></i> 网格 </a></li>
						<li><a href="${path}/admin/blank"> <i class="icon-double-angle-right"></i> 空白页面
						</a></li>
					</ul>
				</li>
			</ul>
			<!-- /.nav-list -->
			<div class="sidebar-collapse" id="sidebar-collapse">
				<i class="icon-double-angle-left" data-icon1="icon-double-angle-left" data-icon2="icon-double-angle-right"></i>
			</div>
			<script type="text/javascript">
				try {
					ace.settings.check('sidebar', 'collapsed')
				} catch (e) {
				}
			</script>
		</div>
		<div class="main-content">
			<div class="breadcrumbs" id="breadcrumbs">
				<script type="text/javascript">
					try {
						ace.settings.check('breadcrumbs', 'fixed')
					} catch (e) {
					}
				</script>

				<ul class="breadcrumb">
					<li><i class="icon-home home-icon"></i> <a href="#">首页</a></li>
					<li class="active">控制台</li>
				</ul>
				<!-- .breadcrumb -->

				<div class="nav-search" id="nav-search">
					<form class="form-search">
						<span class="input-icon"> 
							<input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off" /> <i class="icon-search nav-search-icon"></i>
						</span>
					</form>
				</div>
				<!-- #nav-search -->
			</div>
			<div class="page-content">
				<sitemesh:body/>
			</div>
			<!-- /.page-content -->
		</div>
		<!-- /.main-content -->

		<div class="ace-settings-container" id="ace-settings-container">
			<div class="btn btn-app btn-xs btn-warning ace-settings-btn"
				id="ace-settings-btn">
				<i class="icon-cog bigger-150"></i>
			</div>

			<div class="ace-settings-box" id="ace-settings-box">
				<div>
					<div class="pull-left">
						<select id="skin-colorpicker" class="hide">
							<option data-skin="default" value="#438EB9">#438EB9</option>
							<option data-skin="skin-1" value="#222A2D">#222A2D</option>
							<option data-skin="skin-2" value="#C6487E">#C6487E</option>
							<option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
						</select>
					</div>
					<span>&nbsp; 选择皮肤</span>
				</div>

				<div>
					<input type="checkbox" class="ace ace-checkbox-2"
						id="ace-settings-navbar" /> <label class="lbl"
						for="ace-settings-navbar"> 固定导航条</label>
				</div>

				<div>
					<input type="checkbox" class="ace ace-checkbox-2"
						id="ace-settings-sidebar" /> <label class="lbl"
						for="ace-settings-sidebar"> 固定滑动条</label>
				</div>

				<div>
					<input type="checkbox" class="ace ace-checkbox-2"
						id="ace-settings-breadcrumbs" /> <label class="lbl"
						for="ace-settings-breadcrumbs">固定面包屑</label>
				</div>

				<div>
					<input type="checkbox" class="ace ace-checkbox-2"
						id="ace-settings-rtl" /> <label class="lbl"
						for="ace-settings-rtl">切换到左边</label>
				</div>

				<div>
					<input type="checkbox" class="ace ace-checkbox-2"
						id="ace-settings-add-container" /> <label class="lbl"
						for="ace-settings-add-container"> 切换窄屏 <b></b>
					</label>
				</div>
			</div>
		</div>
		<!-- /#ace-settings-container -->
	</div>
	<!-- /.main-container-inner -->

	<a href="#" id="btn-scroll-up"
		class="btn-scroll-up btn btn-sm btn-inverse"> <i
		class="icon-double-angle-up icon-only bigger-110"></i>
	</a>
</div>
<!-- /.main-container -->
<script src="${path}/static/assets/js/jquery-ui-1.10.3.custom.min.js"></script>
<script src="${path}/static/assets/js/jquery.ui.touch-punch.min.js"></script>
<script src="${path}/static/assets/js/jquery.slimscroll.min.js"></script>
<script src="${path}/static/assets/js/jquery.easy-pie-chart.min.js"></script>
<script src="${path}/static/assets/js/jquery.sparkline.min.js"></script>
<script src="${path}/static/assets/js/flot/jquery.flot.min.js"></script>
<script src="${path}/static/assets/js/flot/jquery.flot.pie.min.js"></script>
<script src="${path}/static/assets/js/flot/jquery.flot.resize.min.js"></script>
<!-- ace scripts -->
<script src="${path}/static/assets/js/ace-elements.min.js"></script>
<script src="${path}/static/assets/js/ace.min.js"></script>
<!-- inline scripts related to this page -->

</body>
</html>