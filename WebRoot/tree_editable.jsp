<%@ page contentType = "text/html; charset=GB2312" %>
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
	tree.add("1","-1","node1","tree_editable.jsp?node_id=1","node1","","","");
	tree.add("2","1","node2","tree_editable.jsp?node_id=2","node2","","","");
	tree.add("3","1","node3","tree_editable.jsp?node_id=3","node3","","","");
	document.write(tree);
	</script>
	<%!
		static String[][] info = new String[3][3];
	 %>
  	<%if (node_id!=null) {
  	String en1 = request.getParameter("en1");
    String en2 = request.getParameter("en2");
    String en3 = request.getParameter("en3");
    if(en1 != null) info[Integer.parseInt(node_id)-1][0] = en1;
    if(en2 != null) info[Integer.parseInt(node_id)-1][1] = en2;
    if(en3 != null) info[Integer.parseInt(node_id)-1][2] = en3;
    %>
  	<br>
  	<form action=<%="tree_editable.jsp?node_id="+node_id%> method=post name=form>
    personal info1: <input type="text" style="width:300px" value="<%=info[Integer.parseInt(node_id)-1][0]%>" name="en1"/> <br>
    personal info2: <input type="text" style="width:300px" value="<%=info[Integer.parseInt(node_id)-1][1]%>" name="en2"/> <br>
    personal info3: <input type="text" style="width:300px" value="<%=info[Integer.parseInt(node_id)-1][2]%>" name="en3"/> <br>
    <input type="submit" value="submit" name=submit>
    </form>
    <%}%>
  </body>
</html>
