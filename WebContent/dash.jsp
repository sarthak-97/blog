<html>
<head>
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


	<form action=self.jsp method="post">
	<center><table width="100%" border="0" align="center">
<tr> 
<td width="250" bgcolor="#33ddff"><height=50 width=90><SPAN STYLE="FONT-FAMILY:COMIC SANS MS ; COLOR:WHITE;VERTICAL-ALIGN:SUPER;FONT-SIZE:30"> <input type="text" size="30"  name="t2" id="t5" value="<%= request.getAttribute("t2") %>" readonly style=" FONT-FAMILY:COMIC SANS MS ; COLOR:WHITE;VERTICAL-ALIGN:bottom ;FONT-SIZE:30 ;border: none;
 background-color: #33ddff; border-color: #33ddff" > </SPAN>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


 <a  STYLE="FONT-FAMILY:COMIC SANS MS ; COLOR:WHITE;VERTICAL-ALIGN:super;FONT-SIZE:20 ; align:right" href=h.html >LOGOUT</a>

 </td>
</tr>
</table>
	

	</center>

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
		<%@ page import="java.sql.*" %>
<% Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); %>

        <H1>Database Lookup</H1>
        


        <H1>Fetching Data From a Database</H1>

        <% 
            Connection connection = DriverManager.getConnection(
                "jdbc:odbc:data", "root", "Divy1996@");

            Statement statement = connection.createStatement();

            String id =(String)request.getAttribute("t2");
            

            ResultSet resultset = 
                statement.executeQuery("select * from textedit where admno = '" + id + "'") ; 

            if(!resultset.next()) {
                out.println("Sorry, could not find that publisher. " +
                "Please <A HREF='tryAgain.html'>try again</A>.");
            } else {
        
        %>
        <textarea cols="30" id="editor1" name="editor1" rows="10" >
	</textarea>
	<script type="text/javascript">

			CKEDITOR.replace( 'editor1' );
		</script>
		 <% 
           if(request.getAttribute("1")=="tech")
        	   request.setAttribute("editor1",resultset.getString("catg1"));
           else if(request.getAttribute("2")=="nature")
      	   request.setAttribute("editor1",resultset.getString("catg2"));
           else if(request.getAttribute("2")=="science")
          	   request.setAttribute("editor1",resultset.getString("catg3"));
           else if(request.getAttribute("2")=="sports")
          	   request.setAttribute("editor1",resultset.getString("catg4"));
           else if(request.getAttribute("2")=="java")
          	   request.setAttribute("editor1",resultset.getString("catg5"));
       %>
       <% 
           } 
       %>
		
		

    
		
			<input type="submit" value="Submit">
		
	</form>

	</body>




</html>