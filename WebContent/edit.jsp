<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "java";
String userId = "root";
String password = "sar115";
%>

<%
try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<center><table width="100%" border="0" align="center">

<tr>


<td width="250" bgcolor="#33ddff"><height=50 width=90><SPAN STYLE="FONT-FAMILY:COMIC SANS MS ; COLOR:WHITE;VERTICAL-ALIGN:SUPER;FONT-SIZE:30"> <input type="text" size="33"  name="t3" id="t5" value="  WELCOME <%= request.getParameter("t2") %>TO THE SUBMISSIONS" readonly style=" FONT-FAMILY:COMIC SANS MS ; COLOR:WHITE;VERTICAL-ALIGN:bottom ;FONT-SIZE:30 ;border: none;

 background-color: #33ddff; border-color: #33ddff" > </SPAN>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <a href="homepage.html" STYLE="FONT-FAMILY:COMIC SANS MS ; COLOR:WHITE;VERTICAL-ALIGN:super;FONT-SIZE:20 ; text-decoration:none ; align:right">Home</a>
<a href="about.asp" STYLE="FONT-FAMILY:COMIC SANS MS ; COLOR:WHITE;VERTICAL-ALIGN:super;FONT-SIZE:20 ; text-decoration:none ; align:right">About </a>
<a href="addrec1.html" STYLE="FONT-FAMILY:COMIC SANS MS ; COLOR:WHITE;VERTICAL-ALIGN:super;FONT-SIZE:20 ; text-decoration:none ; align:right">Register</a>
<a href="contact.asp" STYLE="FONT-FAMILY:COMIC SANS MS ; COLOR:WHITE;VERTICAL-ALIGN:super;FONT-SIZE:20 ; text-decoration:none ; align:right">Contact</a>

 <a  STYLE="FONT-FAMILY:COMIC SANS MS ; COLOR:WHITE;VERTICAL-ALIGN:super;FONT-SIZE:20 ; align:right;text-decoration:none " href=h.html >Logout</a>

 </td>
</tr>
</table>
<br>
<h2 align="center"><font><strong>your submissions </strong></font></h2>
<table border="2cm" height=50% width=50%>
<tr>
<th>admno</th>
<th>catg1</th>
<th>catg 2</th>
<th>catg 3</th>
<th>catg 4</th>
<th>catg 5</th>
</tr>

<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();%>
<% 
String sql ="SELECT * FROM textedit where admno='"+request.getParameter("t2")+"' ";
resultSet = statement.executeQuery(sql); 
while(resultSet.next()){
%>



<tr>
<td><%=resultSet.getString("admno") %></td>
<td><%=resultSet.getString("catg1") %></td>
<td><%=resultSet.getString("catg2") %></td>
<td><%=resultSet.getString("catg3") %></td>
<td><%=resultSet.getString("catg4") %></td>
<td><%=resultSet.getString("catg5") %></td>
</tr>



<% 
}
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>