<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head> 
    <meta name="viewport" content="width=device-width, initial-scale=1"> 
    <title>用户管理系统</title> 
<%@ include file="/WEB-INF/taglib.jsp"%>
<link href="${ctx}/css/base.css" rel="stylesheet">
<link href="${ctx}/css/platform.css" rel="stylesheet">
<link rel="stylesheet" href="${ctx}/resources/easyUI/easyui.css">
<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.4/css/bootstrap.min.css">
<script type="text/javascript" src="${ctx }/resources/jquery/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="${ctx }/resources/jquery/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="${ctx}/resources/easyUI/jquery.easyui.min.js"></script>
 <!-- <script type="text/javascript" src="js/menu.js"></script> -->
<script type="text/javascript" src="${ctx}/resources/main.js"></script>
  <script src="http://cdn.bootcss.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(function(){
		$('#tt').tabs({
		    	  tabHeight: 40,
			      onSelect:function(title,index){
			        var currentTab = $('#tt').tabs("getSelected");
			        if(currentTab.find("iframe") && currentTab.find("iframe").size()){
			            currentTab.find("iframe").attr("src",currentTab.find("iframe").attr("src"));
			        }
			      }
		 });
	})

     // 写一个方法往easyUI中添加面板 
	function addPanel(id,url,name){
    	name = name.replace(/-/g,"");
    	// 判断之前是否已经存在该面板存在就不创建新的面板 
    	var exist = $('#tt').tabs('exists',name);
    	if(exist){
    		// 已经存在就将该面板选中  exist
    		$('#tt').tabs('select',name);
    		var currentTab =  $('#tt').tabs('getTab',name);
    		// 刷新一下界面 
    		if(currentTab.find("iframe") && currentTab.find("iframe").size()){
	            currentTab.find("iframe").attr("src",currentTab.find("iframe").attr("src"));
	        }
    	}else{
    		$('#tt').tabs('add',{
    			id:id,
    			title: name,
    			content: '<div style="width:100%;height:100%;"><iframe class="page-iframe" src="${ctx}'+url+'" frameborder="no"   border="no" height="100%" width="100%" scrolling="auto"></iframe></div>',
    			closable: true
    		});
    	}
	}
	   
	    $(window).resize(function(){
	          $('.tabs-panels').height($("#pf-page").height()-46);
	          $('.panel-body').height($("#pf-page").height()-76)
	    }).resize();

	    var page = 0,
	        pages = ($('.pf-nav').height() / 70) - 1;

	    if(pages === 0){
	      $('.pf-nav-prev,.pf-nav-next').hide();
	    }
	    $(document).on('click', '.pf-nav-prev,.pf-nav-next', function(){
			    	
	      if($(this).hasClass('disabled')) return;
	      if($(this).hasClass('pf-nav-next')){
	        page++;
	        $('.pf-nav').stop().animate({'margin-top': -70*page}, 200);
	        if(page == pages){
	          $(this).addClass('disabled');
	          $('.pf-nav-prev').removeClass('disabled');
	        }else{
	          $('.pf-nav-prev').removeClass('disabled');
	        }
	      }else{
	        page--;
	        $('.pf-nav').stop().animate({'margin-top': -70*page}, 200);
	        if(page == 0){
	          $(this).addClass('disabled');
	          $('.pf-nav-next').removeClass('disabled');
	        }else{
	          $('.pf-nav-next').removeClass('disabled');
	        }
	        
	      }
	    })
	    
	    function exit(){
	    	window.location = "${ctx}/logout";
	    }

	    // setTimeout(function(){
	    //    $('.tabs-panels').height($("#pf-page").height()-46);
	    //    $('.panel-body').height($("#pf-page").height()-76)
	    // }, 200)
	    </script>

</head> 
<body>

    <div class="container">
    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">用户管理系统</a>
    </div>
    <div id="navbar" class="navbar-collapse collapse">
      <ul class="nav navbar-nav">
        
           <li class="dropdown navbar-right">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown"> ${sessionScope.user_session.name} <span class="caret"></span> <img style="width: 40px;height: 40px;" src="${ctx}/images/main/gem.jpg" alt=""></a>
          <ul class="dropdown-menu">
            <li class="dropdown-header">管理</li>
            <li><a href="#"> <i class="iconfont">&#xe60d;</i>
                                <span class="pf-opt-name">用户信息</span></a></li>
            <li  id="exit">
                      <a href="javascript:exit();">
                                <i class="iconfont">&#xe60e;</i>
                                <span class="pf-opt-name">退出登录</span>
                            </a>
                        </li>
          </ul>
        </li>
      </ul>
      <form class="navbar-form navbar-right">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="关键字">
        </div>
        <button type="submit" class="btn btn-default">搜索</button>
      </form>
            </div>
            </div>

</nav>
        <div id="pf-bd">
            <div id="pf-sider">
                <ul class="sider-nav" id="sider-nav">
                 	  	    <c:forEach items="${userPopedomModules}" var="userModule" end="0">
                 	  	    	<li>
	                  	  	    <a href="javascript:;" >
		                            <span class="iconfont sider-nav-icon"></span>
									<!--&#xe611;-->
		                            <span class="sider-nav-title">${userModule.firstModule.name}</span>
		                            <i class="iconfont">&#xe642;</i>
		                        </a>
		                        <ul class="sider-nav-s">
		                             <c:forEach items="${userModule.secondModules }" var="secondModule" >
		                        		 <li><a href="javascript:addPanel('${secondModule.code }' ,'${secondModule.url }','${secondModule.name}');">${secondModule.name}</a></li>
		                       		 </c:forEach>
		                        </ul>
                 	  	        </li>
                 	  	    </c:forEach>
                 </ul> 
            </div>
 
            <div id="pf-page">
                <div class="easyui-tabs" id="tt" style="width:100%;height:100%;">
                  <div title="当前用户" id="user" style="padding:10px 5px 5px 10px;">
                    	<iframe class="page-iframe" src="${ctx}/um/home"  height="100%" width="100%" scrolling="auto"></iframe>
                  </div>
                </div>
            </div>
        </div>

        
    </div>
</body> 
</html>
    