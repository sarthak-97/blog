<html>
<head>
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


<td width="250" bgcolor="#33ddff"><height=50 width=90><SPAN STYLE="FONT-FAMILY:COMIC SANS MS ; COLOR:WHITE;VERTICAL-ALIGN:SUPER;FONT-SIZE:30"> <input type="text" size="30"  name="t3" id="t5" value=" <%= request.getAttribute("t2") %> " readonly style=" FONT-FAMILY:COMIC SANS MS ; COLOR:WHITE;VERTICAL-ALIGN:bottom ;FONT-SIZE:30 ;border: none;

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
	
<input type="text" size="30"  name="t2" id="t5" value=" <%= request.getAttribute("t2") %>" hidden >
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
            Connection connection = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/java", "root", "Divy1996@");

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
            <% if(resultset.next()) {

                 if(request.getAttribute("3").equals("tech"))
        	      rs=resultset.getString("catg1");
           else if(request.getAttribute("3").equals("nature"))
      	           rs=resultset.getString("catg2");
           else if(request.getAttribute("3").equals("science"))
          	       rs=resultset.getString("catg3");
           else if(request.getAttribute("3").equals("sports"))
          	   rs=resultset.getString("catg4");
           else if(request.getAttribute("3").equals("java"))
          	   rs=resultset.getString("catg5");
       %>
       <% 
           } 
       %>
		
		<script type="text/javascript">
		if(rs!=null)
       document.getElementById('editor1').value=rs;
    </script>

    
		
			<input type="submit" value="Submit">
		
		
	</form>

	</body>