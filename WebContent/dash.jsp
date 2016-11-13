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


	<form action="text" method="post">
	<center><table width="100%" border="0" align="center">
<tr> 
<td width="250" bgcolor="#33ddff"><height=50 width=90><SPAN STYLE="FONT-FAMILY:COMIC SANS MS ; COLOR:WHITE;VERTICAL-ALIGN:SUPER;FONT-SIZE:30"> <input type="text" size="30"  name="t2" id="t5" value="  WELCOME <%= request.getAttribute("t2") %> TO THE EDITOR" readonly style=" FONT-FAMILY:COMIC SANS MS ; COLOR:WHITE;VERTICAL-ALIGN:bottom ;FONT-SIZE:30 ;border: none;
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

		</div>
		<textarea cols="30" id="editor1" name="editor1" rows="10">
	</textarea>
		<script>

			CKEDITOR.replace( 'editor1' );

		</script>
		
			<input type="submit" value="Submit">
		
	</form>

	</body>




</html>