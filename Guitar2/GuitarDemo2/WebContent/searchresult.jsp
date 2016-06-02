<%@page import="java.util.Iterator"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="guitardemo2.util.DBUtil" %>
<%@ page import="guitardemo2.model.*" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>结果</title>
</head>
<body>
<h3>结果如下：</h3>
<table style="text-align:center ;" border="1">
		<thead>
			<tr >

				<th style="width:100px;"><h5 ><strong><font >编号</font></strong></h5></th>
				<th style="width:100px;"><h5 ><strong><font >价格</font></strong></h5></th>
				<th style="width:100px;"><h5 ><strong><font >制造商</font></strong></h5></th>
				<th style="width:100px;"><h5 ><strong><font >模型</font></strong></h5></th>
				<th style="width:100px;"><h5 ><strong><font >种类</font></strong></h5></th>
				<th style="width:100px;"><h5 ><strong><font >背木</font></strong></h5></th>
				<th style=";width:100px;"><h5><strong><font >上木</font></strong></h5></th>
			</tr>
		</thead>
		<tbody>
	<% 
		Inventory inventory = new Inventory();
		inventory = (Inventory)request.getAttribute("result");
		List guitars = new ArrayList();
		guitars = inventory.getGuitars();
		System.out.print(guitars.size());
		if(guitars.size()>0){
		Iterator i = guitars.iterator();
		while(i.hasNext()){
			Guitar guitar = (Guitar) i.next();
		 %>
		 <tr  >

		 <td >
		 <%=guitar.getSerialNumber() %>
		 </td>
		 
		 <td>
		 <%=guitar.getPrice() %>
		 </td>
		 
		 <td>
		 <%=guitar.getGuitarSpec().getBuilder() %>
		 </td>
		 
		 <td>
		 <%=guitar.getGuitarSpec().getModel() %>
		 </td>
		 
		 <td>
		 <%=guitar.getGuitarSpec().getType() %>
		 </td>
		 
		 <td>
		 <%=guitar.getGuitarSpec().getBackWood() %>
		 </td>
		 
		 <td>
		 <%=guitar.getGuitarSpec().getTopWood() %>
		 </td>
		 </tr>
		 
		
		 <%
			}
		%>
		
		 <%
		}else{
		%>
		对不起，没有符合条件的吉他。
		<% 	
		}
	%>
	</tbody>
</table>
</body>
</html>