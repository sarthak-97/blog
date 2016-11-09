<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   <meta charset="UTF-8">
      <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
      <link type="text/css" rel="stylesheet" href="css/materialize.css"  media="screen,projection" />
      <link rel="stylesheet" type="text/css" href="css/style.css" />
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
      <title>GDGJSS|feedback home</title>
      <link rel="shortcut icon" type="image/png" href="assest/images/favicon.png">
      
      <script>
	function data(x){
		if(x.action.value===""){
			alert("You have not selected any event");
			return false;
		}
		{
			return true;
		}
	}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="row">
        <div class="row">
                <div class="col s12 light-blue" style="display:inline-block"><h3 class="white-text center" style="font-weight:500"> Google Developers Group</h3>
                </div>
                <div class="col s12 light-blue" style="display:inline-block"><h5 class="white-text center" style="font-weight:500"> JSS NOIDA</h5>
                </div>
                <div class="col s12 light-blue" >
                <div class="col m4 "><h6 class="white-text left"> Welcome USERNAME</h6></div>
                <div class="col s4"><h6 class="white-text center hide-on-small-only"> Feedback System</h6></div>
                <div class="col s6 m4"><h6 class="right"><a class="white-text hoverable" href="http://gdgjss.in">gdgjss.in</a></h6></div>
                </div>
            </div>
            <form>
            <div class="col s12" style="display:inline-block;padding-left:17px;padding-top:10px;"><button class="btn waves-effect waves-light light-blue darken-3 left hoverable left" type="submit" name="action">Logout</button>
            </div>
                </form>
            </div>

            <!-- header ends here -->
              <div style="height:320px">
              <div class="center"><img src="assest/images/fullgdglogo.png" style=" width:200px ; height:200px"></div>
              <div class="row">
                  <div>
              <div class="input-field col s12 m6 offset-m3">
                  <form action="feedbackform.jsp" method="post">
                      <select name="event" class="browser-default  light-blue lighten-3 hoverable" required />
                   <option value="" disabled selected>Select event to provide feedback</option>
                   <option value="GDG INDUCO">GDG INDUCO</option>
                   <option value="LET'S TALK GSOC">LET'S TALK GSOC</option>
                   <option value="EXTRA BIT WITH GIT">EXTRA BIT WITH GIT</option>
                   <option value="MATERIAL DESIGN">MATERIAL DESIGN</option>
                    
               </select>
            </div>
              </div>
               <div class="col s12 m6 offset-m3"><h6 class="center" style="padding-top:20px">Feedback for a particular event can be provided only once.</h6></div>
            </div>
            </div>
            <!-- foooter starts here -->
        <footer class="page-footer light-blue darken-1 footer_row" style="margin-bottom: 0px">
                <div class="row footer_row" style="margin-bottom: 0px">
                    <div class="col l6 s12">
                      <p class="white-text text-lighten-4">Feedbacks helps analyse our potential and efforts , which is very important for any organization. Click the given tab to proceed.</p>
                    </div>
                    <div class="col l4 offset-l2 s12 center-align" id="social_login_button">
                        
                      <button class="btn waves-effect waves-light indigo accent-4 centre-align hoverable" type="submit" name="action">Proceed
                <i class="material-icons right">send</i></button></form>
                    </div>
                </div>
          </footer> 
                  
        <!-- footer ends here -->
        <script src="assest/js/jQuery.js"></script>
     <script src="assest/js/materialize.js"></script>

</body>
</html>