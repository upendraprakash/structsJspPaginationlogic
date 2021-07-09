<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hello world</title>
</head>
<body>
<bean:write name="helloForm" property="msg" />
<%! int a=2;
	int totalPage=5;
	int initStartindex=a;
	int initEndIndex=a+5;
	int trailStartIndex=totalPage-10;
	int trailEndIndex=trailStartIndex+5;
	int difference=trailStartIndex-initEndIndex;
%>

<table>
<tbody>
<tr>
<% if (a>1) {%>
<td><a href="#">previous</a></td>
<%}
if(trailStartIndex<=initEndIndex){
for(int i=initStartindex;i<=totalPage;i++){ %>
<td><a href="#"> <%=i %></a></td>
<%}}else{
		for(int i=initStartindex;i<=initEndIndex;i++){%>
			<td><a href="#"><%=i %></a></td>
		<% }%>
		<td>...</td>
		<% 
		for(int i=trailStartIndex;i<=trailEndIndex;i++){%>
		<td><a href="#"><%=i %></a></td>
<% }}if (a<totalPage){%>
<td><a href="#">next</a></td>
<%}%>
</tr>

</tbody>
</table>

</body>
</html>