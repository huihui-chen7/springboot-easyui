<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
    <base href="<%=basePath %>">
    <meta http-equiv="Content-Type" content="text/html";charset="UTF-8">
    <title>登录</title>
    <!-- 导入easyui -->
    <link rel="stylesheet" type="text/css" href="<%=basePath %>/static/js/easyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath %>/static/js/easyui/themes/icon.css">
    <script type="text/javascript" src="<%=basePath %>/static/js/easyui/jquery.min.js"></script>
    <script type="text/javascript" src="<%=basePath %>/static/js/easyui/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="<%=basePath %>/static/js/easyui/locale/easyui-lang-zh_CN.js"></script>
    
</head>
<body class="easyui-layout">   
    <div data-options="region:'north',title:'上面',split:true" style="height:100px;"></div>   
    <div data-options="region:'south',title:'下面',split:true" style="height:100px;"></div>   
    <div data-options="region:'east',iconCls:'',title:'右边',split:true" style="width:100px;"></div>   
    <div data-options="region:'west',title:'系统属性',split:true" style="width:200px;">
       <ul id="tt" data-options="lines:true,checkbox:true,animate:true">
    
       </ul>
    
    </div>   
    <div data-options="region:'center',title:'中间',noheader:true," style="padding:5px;background:#eee;">
    
    <div id="tab" class="easyui-tabs"data-options="fit:true">   
       <div title="首页" style="padding:20px;display:none;"data-options="">   
                     欢迎使用Easyui   
       </div>   
    </div>  
             
    </div>   
    <!-- 系统属性的js -->
    <script type="text/javascript">
      $(function(){
    	  //alert(4);
    	  $('#tt').tree({    
    	        url:'<%=basePath%>/adminm.do',
    	        //点击事件
    	        onClick: function(node){
    	        	//alert(node.href);
    	        	//alert(node.text);  // 在用户点击的时候提示
    	        	//添加一个选项卡
    	        	var flag=$("#tab").tabs('exists',node.text);//判断节点标题是不是等于node.txt
    	        	if(!flag){
    	        		if(node.href!='null'){
    	    	        	$("#tab").tabs('add',{
    	    	        		title:node.text,
    	    	        		iconCls:node.iconCls,
    	    	        		closable:true,
    	    	        		href:'<%=basePath%>/pages/'+node.href
    	    	        	});
    	    	        }
    	    	     
    	        	}else{ //存在则返回到本选项卡
    	        		$("#tab").tabs('select',node.text);
    	        	}
    	        }
    	    }); 
      });
        
    </script>
</body>  

</html>