<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page import="java.sql.*" %>
	<meta charset="utf-8">
	<title>CKEditor Sample</title>
	<script src="ckeditor/ckeditor.js"></script>
	<script src="ckeditor/samples/js/sample.js"></script>
	<link rel="stylesheet" href="ckeditor/samples/css/samples.css">
	<link rel="stylesheet" href="ckeditor/samples/toolbarconfigurator/lib/codemirror/neo.css">
	<script>
	</script>
 
</head>
<body>



	<form action="text" method="post">
	<center><table width="100%" border="0" align="center">
<center><table width="100%" border="0" align="center">

<tr>


<td width="250" bgcolor="#33ddff"><height=50 width=90><SPAN STYLE="FONT-FAMILY:COMIC SANS MS ; COLOR:WHITE;VERTICAL-ALIGN:SUPER;FONT-SIZE:30"> <input type="text" size="30"  name="t3" id="t5" value="  WELCOME <%= request.getAttribute("t2") %> TO THE EDITOR" readonly style=" FONT-FAMILY:COMIC SANS MS ; COLOR:WHITE;VERTICAL-ALIGN:bottom ;FONT-SIZE:30 ;border: none;

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
	

	</center>


	<form action="#" method="post">
	
<<<<<<< HEAD
<input type="text" size="30"  name="t2" id="t5" value="<%= request.getAttribute("t2") %>" hidden >
=======

<input type="text" size="30"  name="t2" id="t5" value="  WELCOME <%= request.getAttribute("t2") %> TO THE EDITOR" hidden >

>>>>>>> refs/remotes/origin/master
		<div class="description">
		<select id=3 name="t1">
    <optgroup label="1">
    <option value="tech">tech</option>
    <option value="nature">nature </option>
    <option value="science">science</option>
    <option value="sports">sports</option>
    <option value="java">java</option>
    </optgroup>
    </select>
    <script type="text/javascript">
      String a = document.getElementById('3').value;
      String b= document.getElementById('t5').value;
    </script>
		</div>
		
    <% Class.forName("com.mysql.jdbc.Driver"); %>


        <% 
<<<<<<< HEAD
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/java", "root", "Divy1996@");
=======
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/java", "root", "sar115");
>>>>>>> refs/remotes/origin/master

            Statement statement = connection.createStatement();

            String id =(String)request.getAttribute("t2");
            String rs;    

            ResultSet resultset = 
                statement.executeQuery("select * from textedit where admno = '" + id + "'") ;  %>
		</div><center>
		<div style="width:70%;align:center ">
		<textarea cols="30" id="editor1" name="editor1" rows="10">
          </textarea>
          <script type="text/javascript">		         
 			CKEDITOR.replace( 'editor1' );		
 		</script>
        
		</div>
	</center>
	<% if(resultset.next()){ %>
             <select>
            <c:forEach items="${3}" var="a">
            <c:choose>
                <c:when test="${a}.equals("tech")>
                    <option value="${a}" selected>${a}</option>
                    <% rs= rs=resultset.getString("catg1");%>   
                </c:when>
                 <c:when test="${a}.equals("nature")>
                    <option value="${a}" selected>${a}</option>
                    <% rs= rs=resultset.getString("catg2");%>   
                </c:when>
                 <c:when test="${a}.equals("science")>
                    <option value="${a}" selected>${a}</option>
                    <% rs= rs=resultset.getString("catg3");%>   
                </c:when>
                 <c:when test="${a}.equals("sports")>
                    <option value="${a}" selected>${a}</option>
                    <% rs= rs=resultset.getString("catg4");%>   
                </c:when>
                <c:otherwise>
                     <option value="${a}" selected>${a}</option>
                    <% rs= rs=resultset.getString("catg");%>
                </c:otherwise>
            </c:choose>
        </c:forEach>
    </select>
       
       <% 
           } 
       %>
       <script type="text/javascript">		 
                   document.getElementById('editor1').value=rs;
 		</script>
       
		
		

    
		
			<input type="submit" value="Submit">
		
		
	</form>

	</body>