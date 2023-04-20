<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<meta charset="utf-8">
<title>Login Page</title>

 <!--  BOOTSTRAP CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
 <!-- CSS LINK -->
    <link href="css/login_page.css" rel="stylesheet" type="text/css">
 <!-- FONT AWESOME -->
 <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
</head>

<body>

  <!-- CONTAINER FORM  -->
   
   <div class="container mt-5" style="min-height: 100vh;">
     <div class="row">
       <div class="col-md-5 offset-md-4">
         <div class="card text-bg-info p-3">
         
         <form action="#" method="post">
         <!--  CARD HEADER -->
           <div class="card-header">
             <span class="far fa-user-circle fa-spin"  style="font-size: 24px; color: lightblue;"></span>
              <h2>Login here</h2>
           </div>
           <!-- CARD BODY  -->
           <div class="card-body">
            
            <!--  HERE I AM TAKING EMAIL  -->
             <div class="form-group mt-3">
               <label for="useremail" class="form-label" ><b>Email</b></label>
               <input name="useremail" type="email" class="form-control custom-input" id="useremail" placeholder="name@example.com">
             </div>
             
             <!--  NOW I AM TAKING PASSWORD -->
             <div class="form-group mt-3">
               <label for="userpaasword" class="form-label"><b>Password</b></label>
               <input name="userpassword" type="password" class="form-control" id="userpassword" placeholder="Type your password">
             </div>
             
             <div class="form-group text-center mt-4">
               <button class="btn btn-outline-success">Sign In</button>
             </div>
             
           </div>
         </form>  
         </div>
       </div>
     </div>
   </div>
</body>
</html>