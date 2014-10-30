<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String node_id = request.getParameter("node_id");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="StyleSheet" href="dtree.css" type="text/css" />
    <script type="text/javascript" src="dtree.js"></script>
  </head>
  <body>
  	<script type="text/javascript">
  	tree = new dTree('tree');
	tree.add("1","-1","node1","tree.jsp?node_id=1","node1","","","");
	tree.add("2","1","node2","tree.jsp?node_id=2","node2","","","");
	tree.add("3","1","node3","tree.jsp?node_id=3","node3","","","");
	document.write(tree);
	</script>
  	<%if (node_id!=null) {%>
  	<br>
    personal info1: <input type="text" style="width:300px" value="<%="1st read-only entry of node number "+node_id%>" name="en1"readonly/> <br>
    personal info2: <input type="text" style="width:300px" value="<%="2nd read-only entry of node number "+node_id%>" name="en2"readonly/> <br>
    personal info3: <input type="text" style="width:300px" value="<%="3rd read-only entry of node number "+node_id%>" name="en2"readonly/> <br>
    <%} %>
  </body>
</html>
