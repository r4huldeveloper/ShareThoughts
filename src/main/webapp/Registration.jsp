<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en-US">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<meta charset='utf-8'>
<title>Register</title>

    <!--  BOOTSTRAP CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    
    <!--  CSS Link -->
    <link href="css/mystyle.css" rel="stylesheet" type="text/css">
    
    
</head>

<body>
   <div class="container custom-container">
     <div class="card custom-form">
      <div class="card-header">
        <h1 class="text-center">Registration Form</h1>
      </div>
     <div class="card-body">
     
     <!--  FORM STARTED -->
     <form id="reg-form" action="RegisterServlet" method="post">
     
       <div class="form-group mb-3">
         <label for="username"><b>Name</b></label>
         <input name="username" type="text" class="form-control custom-input" id="username" placeholder="Enter your name">
       </div>
       
       <div class="form-group mb-3">
         <label for="useremail" class="form-label" ><b>Email</b></label>
         <input name="useremail" type="email" class="form-control custom-input" id="useremail" placeholder="name@example.com">
         <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
       </div>
       
       <div class="form-group mb-3">
         <label for="password" class="form-label"><b>Password</b></label><br>
         <input name="userpassword" type="password" class="form-control custom-input" id="password" placeholder="Enter the password" >
         <div id="passwordHelp" class="form-text">Your password must be 8-20 characters long, contains letters and numbers, and must not contain spaces, special characters, or emoji.</div>
       </div>
       
         <div class="form-group mb-3">
          <label for="gender"><b>Gender</b></label>
          <select name="usergender" class="form-select custom-input" id="gender">
            <option value="">Select Gender</option>
            <option value="male">Male</option>
            <option value="female">Female</option>
            <option value="other">Other</option>
          </select>
        </div>
       
       <div class="form-group mb-3">        
        <label for="userinterest" class="form-label"><b>Area of Interest</b></label><br>
         <div class="form-check">
           <label class="form-check-label" for="programming">Programming</label>
           <input name="options" class="form-check-input" type="checkbox" id="programming" value="programming" name="programming"><br>
           <label class="form-check-label" for="database">Database</label>
           <input name="options" class="form-check-input" type="checkbox" id="database" value="database" name="database"><br>
           <label class="form-check-label" for="hacking">CyberSecurity</label>
           <input name="options" class="form-check-input" type="checkbox" id="hacking" value="hacking" name="hacking"><br>
           <label class="form-check-label" for="Java">Java</label>
           <input name="options" class="form-check-input" type="checkbox" id="java" value="java" name="java">
         </div>
       </div>
       
       
       <div class="form-group mb-3">
         <label><b>Country</b></label>
            <select name="usercountry" class="form-select custom-input" name="usercountry" id="usercountry">
              <option selected>Select the country</option>
              <option value="India">India</option>
              <option value="USA">USA</option>
              <option value="Russia">Russia</option>
              <option value="Germany">Germany</option>
              <option value="Pakistan">Pakistan</option>
              <option value="Korea">Korea</option>
            </select>
          </div>
      
      <div class="form-group mb-3">
        <input class="form-check-input" type="checkbox" id="condition" name="condition">
        <label class="form-check-label" for="condition">Accept terms and conditions</label>
      </div>
      
      <div class="custom-submit">
      
     <!--
     
      WE CAN ALSO USE THIS IN DIV CLASS 
      "d-flex justify-content-center"
      
      --> 
        <div class="container text-center" id="loader" style="display: none;">
          <span class="spinner-border" role="status"></span>
           <h4>Please wait...</h4>
        </div>
        <button id="submit-btn" type="submit" class="btn btn-success">Sign up</button>
       </div>
      </form>
      </div>
    </div>
  </div>  
   
    
    <!--  JQUERY CDN  -->  
    <script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
   
    <!-- BOOTSTRAP JAVASCRIPT  -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script src="js/myjs.js"></script>
</body>
</html>
