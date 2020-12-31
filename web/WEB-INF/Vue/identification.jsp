<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"> 
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!Doctype html>
<html>
<head>
     <meta charset="UTF-8">
     <title>AUTHENTIFICATION</title>
     	<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
         
 <div class="container">
 <!---heading---->
     <header class="heading"> AUTHENTIFICATION</header><hr></hr>
     
      <form action="/MiniProjet/login" method="post">     
	<!---Form starting----> 
	<div class="row ">
	 <!--- For Name---->
         <div class="col-sm-12">
             <div class="row">
			     <div class="col-xs-4">
          	         <label class="firstname">Username :</label> </div>
		         <div class="col-xs-8">
		             <input type="text" name="username" id="fname" placeholder="Enter your username" class="form-control ">
             </div>
		      </div>
		 </div>
		 
		 
       <br>    </br>
		  
   
	 <!-----For Password and confirm password---->
          <div class="col-sm-12">
		         <div class="row">
				     <div class="col-xs-4">
		 	              <label class="pass">Password :</label></div>
				  <div class="col-xs-8">
			             <input type="password" name="password" id="password" placeholder="Enter your Password" class="form-control">
				 </div>
          </div>
		  </div>
         
         <br>    </br>
		  
   <input type="submit" value="Login" />
   <input type="reset" value="Reset" />
   <br>  </br>
 


	
  
</div>
    </form>
</body>		
</html>