<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<html lang="en"> 
<head> 
    <meta charset="utf-8"> 
     
    <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
    <link rel="icon" type="image/png" href="assets/img/favicon.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>Login Page - Now UI Kit by Creative Tim</title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <!--     Fonts and icons     -->
    
   
   
    <script type="text/javascript" src="${ctx }/resources/jquery/jquery-1.11.0.min.js"></script>
	<script type="text/javascript" src="${ctx }/resources/jquery/jquery-migrate-1.2.1.min.js"></script>
	<script type="text/javascript" src="${ctx }/resources/bootstrap/js/bootstrap.min.js"></script>
     <script type="text/javascript" src="${ctx}/resources/easyUI/jquery.easyui.min.js"></script>
     <script type="text/javascript" src="${ctx}/resources/easyUI/easyui-lang-zh_CN.js"></script>
      
    
    
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
    <!-- CSS Files -->
    <link href="${ctx}/resources/assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="${ctx}/resources/assets/css/now-ui-kit.css?v=1.1.0" rel="stylesheet" />
    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="${ctx}/resources/assets/css/demo.css" rel="stylesheet" />
    <!-- Canonical SEO -->
    <link rel="canonical" href="" />
    <!--  Social tags      -->
    <meta name="keywords" content="">
    <meta name="description" content="">
	 <script type="text/javascript">
		 $(function(){
			 // 等文档加载完成以后再执行本脚本 
		 	 // 给验证码绑定点击事件 
		 	 // vimg 
		 	 $("#vimg").click(function(){
		 		 $(this).attr("src","${ctx}/createCode?timer="+new Date().getTime());
		 	 }).mouseover(function(){
		 		  $(this).css("cursor","pointer");
		 	 });
			 
			 /** 回车键事件  
			   event :事件源,代表按下的那个按键 
			 */
			 $(document).keydown(function(event){
				 if(event.keyCode == 13){
					 $("#login_id").trigger("click");
				 }
			 });
			 
			 /** 1.异步登录功能  */
			 $("#login_id").bind("click",function(){
				 var userId = $("#userId").val();
				 var passWord = $("#passWord").val();
				 var vcode = $("#vcode").val();
				 
				 // 定义一个校验结果 
				 var msg = "";
				 if(!/^\w{2,20}$/.test(userId.trim())){
					 msg = "登录名必须是2-20个的字符";
				 }else if(!/^\w{6,20}$/.test(passWord)){
					 msg = "密码必须是6-20个的字符";
				 }else if(!/^\w{4}$/.test(vcode)){
					 msg = "验证码格式不正确";
				 }
				 
				 if(msg!=""){
					 // 校验失败了 
					 $.messager.alert("登录提示","<span style='color:red;'>"+msg+"</span>","error");
					 return ; // 结束程序 
				 }
				
				 var params = $("#loginForm").serialize();
				
				 /** 发起异步请求登录 */
				 $.ajax({
					 url:"${ctx}/loginAjax",
					 type: "post",
					 dataType : "json",
					 data : params ,
					 async : true ,  // 是异步还是异步中的同步
					 success : function(data){
						 if(data.status == 1){
							  /** 跳转到主界面上去  */
							  window.location = "${ctx}/um/main";
						 }else{
							 $("#vimg").trigger("click");
							 $.messager.alert("登录提示","<span style='color:red;'>"+data.tip+"</span>","error");
						 }
						
					 },error : function(){
						 $.messager.alert("登录提示","<span style='color:red;'>您登陆失败了</span>","error");
					 }
				 })
					 
			 })
			 
		 
		 })
	 
	 </script>
</head> 
<body class="login-page sidebar-collapse">
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg bg-primary fixed-top navbar-transparent " color-on-scroll="400">
        <div class="container">
            <div class="dropdown button-dropdown">
                <a href="#pablo" class="dropdown-toggle" id="navbarDropdown" data-toggle="dropdown">
                    <span class="button-bar"></span>
                    <span class="button-bar"></span>
                    <span class="button-bar"></span>
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-header">Dropdown header</a>
                    <a class="dropdown-item" href="#">Action</a>
                    <a class="dropdown-item" href="#">Another action</a>
                    <a class="dropdown-item" href="#">Something else here</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">Separated link</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">One more separated link</a>
                </div>
            </div>
            <div class="navbar-translate">
                <a class="navbar-brand" href="#" rel="tooltip" data-placement="bottom">
                    Now Ui Kit
                </a>
                <button class="navbar-toggler navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-bar bar1"></span>
                    <span class="navbar-toggler-bar bar2"></span>
                    <span class="navbar-toggler-bar bar3"></span>
                </button>
            </div>
            <div class="collapse navbar-collapse justify-content-end" data-nav-image="assets/img/blurred-image-1.jpg">
                <ul class="navbar-nav">
                    
                    <li class="nav-item">
                        <a class="nav-link" href="#/issues">Have an issue?</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" rel="tooltip" title="Follow us on WeChat" data-placement="bottom" href="#CreativeTim" target="_blank">
                            <i class="fa fa-WeChat"></i>
                            <p class="d-lg-none d-xl-none">WeChat</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" rel="tooltip" title="Like us on Weibo" data-placement="bottom" href="#CreativeTim" target="_blank">
                            <i class="fa fa-Weibo-square"></i>
                            <p class="d-lg-none d-xl-none">Weibo</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" rel="tooltip" title="Follow us on QQ" data-placement="bottom" href="#" target="_blank">
                            <i class="fa fa-QQ"></i>
                            <p class="d-lg-none d-xl-none">QQ</p>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- End Navbar -->
    <div class="page-header" filter-color="orange">
        <div class="page-header-image" style="background-image:url(assets/img/login.jpg)"></div>
        <div class="container">
            <div class="col-md-4 content-center">
                <div class="card card-login card-plain">
                    <form class="form" id="loginForm" >
                        <div class="header header-primary text-center">
                            <div class="logo-container">
                                <img src="assets/img/now-logo.png" alt="Login">
                            </div>
                        </div>
                        <div class="content">
                            <div class="input-group form-group-no-border input-lg">
                                <span class="input-group-addon">
                                    <i class="now-ui-icons users_circle-08"></i>
                                </span>
                                <input type="text" class="form-control"id="userId" name="userId" type="text" placeholder="Account/Email">
                            </div>
                            <div class="input-group form-group-no-border input-lg">
                                <span class="input-group-addon">
                                    <i class="now-ui-icons text_caps-small"></i>
                                </span>
                                <input   id="passWord" name="passWord" type="password" placeholder="Password" class="form-control" />
                            </div>
                      <div class="input-group form-group-no-border input-lg">
                             <input class="form-control " id="vcode" name="vcode" type="text" placeholder="验证码">
	    <span  id="basic-addon2"><img class="check-code" id="vimg" alt="" src="${ctx}/createCode"></span>
			</div>
                        </div>
                        <div class="footer text-center">
                            <a href="javascript:;" id="login_id" class="purchaser" class="btn btn-primary btn-round btn-lg btn-block">Get Started</a>
                        </div>
                        <div class="pull-left">
                            <h6>
                                <a href="#pablo" class="link">Create Account</a>
                            </h6>
                        </div>
                        <div class="pull-right">
                            <h6>
                                <a href="#pablo" class="link">Need Help?</a>
                            </h6>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <footer class="footer">
            <div class="container">
                
                <div class="copyright">
                    &copy;
                    <script>
                        document.write(new Date().getFullYear())
                    </script>友情链接 <a href="http://www.baidu.com/" target="_blank" title="百度">百度</a> 
					<!--- Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a>-->
                </div>
            </div>
        </footer>
    </div>
</body>
<!--   Core JS Files   -->
<script src="${ctx}/resources/assets/js/core/jquery.3.2.1.min.js" type="text/javascript"></script>
<script src="${ctx}/resources/assets/js/core/popper.min.js" type="text/javascript"></script>
<script src="${ctx}/resources/assets/js/core/bootstrap.min.js" type="text/javascript"></script>
<!--  Plugin for Switches, full documentation here: http://www.jque.re/plugins/version3/bootstrap.switch/ -->
<script src="${ctx}/resources/assets/js/plugins/bootstrap-switch.js"></script>
<!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
<script src="${ctx}/resources/assets/js/plugins/nouislider.min.js" type="text/javascript"></script>
<!--  Plugin for the DatePicker, full documentation here: https://github.com/uxsolutions/bootstrap-datepicker -->
<script src="${ctx}/resources/assets/js/plugins/bootstrap-datepicker.js" type="text/javascript"></script>
<!-- Share Library etc -->
<script src="${ctx}/resources/assets/js/plugins/jquery.sharrre.js" type="text/javascript"></script>
<!-- Control Center for Now Ui Kit: parallax effects, scripts for the example pages etc -->
<script src="${ctx}/resources/assets/js/now-ui-kit.js?v=1.1.0" type="text/javascript"></script>
</html>