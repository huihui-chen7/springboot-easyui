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
     <!-- 汉化页面 -->
    <script type="text/javascript" src="<%=basePath %>/static/js/easyui/locale/easyui-lang-zh_CN.js"></script>
    
</head>
<body >   
    <table id="dg"></table>
    
    <script type="text/javascript">
    $(function(){
    	$('#dg').datagrid({    
    	    url:'<%=basePath%>/caidan.do',    
    	    columns:[[    
    	    	
    	        {field:'id',title:'主键',width:100,align:'center'},    
    	        {field:'text',title:'属性名称',width:100,align:'center',formatter:function(value,row,index){
    	        	if(row.pid==0){
    	        		return "<span style='color:red'>"+value+"</span>";
    	        	}else{
    	        		return value;
    	        	}
    	        }
    	        	
    	        },    
    	        {field:'state',title:'开闭状态',width:100,align:'center',formatter: function(value,row,index){
    	        	if(value=="open"){
    	        		return "展开";
    	        	}else{
    	        		return "关闭";
    	        	}
    	        }},
    	        {field:'iconCls',title:'图标',width:100,align:'center'},    
    	        {field:'pid',title:'父主件',width:100,align:'center'},    
    	        {field:'href',title:'链接',width:100,align:'center'},
    	       // {checkbox:true}
    	    ]],
    	    pagination:true,
    	    //pagePosition:top
    	    fit:true,
    	    toolbar:[{
    	    	iconCls:'icon-ok',
    	    	text:"添加菜单",
    	    	handler:function(){
    	    		$("#add").window({    
    	    		    width:400,    
    	    		    height:300,    
    	    		    modal:true   
    	    		});  

    	    		/* $.messager.confirm('确认','您确认想要删除记录吗？',function(r){    
    	    		    if (r){    
    	    		        alert('确认删除');    
    	    		    }    
    	    		});  */
    	    	}
    	    },'-',
    	    {
    	    	iconCls:'icon-no',
    	    	text:"修改菜单",
    	    	handler:function(){
    	    		
    	    	}
    	    },'-',
    	    {
    	    	iconCls:'icon-system',
    	    	text:"批量删除",
    	    	handler:function(){
    	    		alert(33);
    	    	}
    	    }]
    	    
    	});
    	
    });
    </script>
    <div id="add"></div>
</body>  

</html>