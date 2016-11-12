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
<nav>
 <a href=h.html>LOGOUT</a>
 </nav> 

	<form action="text" method="post">
	<input type="text" name="t2" id="t5" value="<%= request.getAttribute("t2") %>" readonly >

	

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
		<textarea cols="80" id="editor1" name="editor1" rows="10">
	</textarea>
		<script>

			CKEDITOR.replace( 'editor1' );

		</script>
		
			<input type="submit" value="Submit">
		
	</form>

	</body>




</html>