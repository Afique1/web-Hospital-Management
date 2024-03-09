<!DOCTYPE html>  
<html>  
<head>  
<title>Registration</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet" href="CSS/style.css">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
<script src="JS/style.js"></script>


</head>  
<body>
<div class="container-fluid">
<?php 

session_start();

if (isset($_SESSION['name'])){header("location:welcome.php");}
else{  require 'Bar/top.php';}
require 'Controller/storeData.php';
?>
<div class="container">

<div class="div">
<div class="b">
<legend class="textCenter"><b>REGISTRATION</b></legend>  
<hr>               
  <form name="form" method="post"> 
  <label for="name">Name :</label>
  <input type="text" id="name" name="name" placeholder="Two Words (minimum)"onkeyup="checkName()" onblur="checkName()">
  <span class="error" id="nameErr"> <?php echo $nameErr;?></span><hr>

  <label for="email">Email :</label>
  <input type="text" id="email" name="email" placeholder="example@mail.com" onkeyup="checkEmail()" onblur="checkEmail()" >
  <span class="error" id="emailErr"> <?php echo $emailErr;?></span><hr>

  <label for="mobile_number">Mobile Number :</label>
  <input type="tel" id="mobile_number" name="mobile_number" placeholder="01123456789" pattern="[0-9]{3}[0-9]{8}" onkeyup="checkMoblieNumber()" onblur="checkMoblieNumber()" >
  <span class="error" id="mobile_numberErr"> <?php echo $mobile_numberErr;?></span><hr>

  <label for="address">Address :</label>
  <input type="text" id="address" name="address" onkeyup="checkAddress()" onblur="checkAddress()" >
  <span class="error" id="addressErr"> <?php echo $addressErr;?></span><hr>

  <label for="password">Password :</label>
  <input type="password" id="password" name="password" placeholder="ex: 5Axzc!%3" onkeyup="checkPassword()" onblur="checkPassword()">
  <span class="error" id="passwordErr"> <?php echo $passwordErr;?></span><hr>

  <label for="confirm_password">Confirm Password :</label>
  <input type="password" id="confirm_password" name="confirm_password" onkeyup="checkConfirmPassword()" onblur="checkConfirmPassword()" onclick="checkConfirmPassword()">
  <span class="error" id="confirm_passwordErr"> <?php echo $confirm_passwordErr;?></span><hr>

<div class="b">
  <legend>Shift</legend>
  <input type="radio" id="day" name="shift" value="Day (8AM - 4PM)">
  <label for="day">Day</label>
  <input type="radio" id="night" name="shift" value="Night (4PM -12PM)">
    <label for="night">Night</label>
    <input type="radio" id="none" name="shift" value="none">
    <label for="none">None</label>
  <span class="error"> <?php echo $shiftErr;?></span>
  </div><br>

<div class="b">
<legend> User Type</legend> 
  <input type="radio" id="patient" name="category" value="Patient">
  <label for="patient">Patient</label> 
  <input type="radio" id="receptionist" name="category" value="Receptionist">
  <label for="receptionist">Employee </label>  
  <span class="error"> <?php echo $categoryErr;?></span>
 </div><br>

<div class="b">
<legend> Gender</legend> 
  <input type="radio" id="male" name="gender" value="Male">
  <label for="male">Male</label>
  <input type="radio" id="female" name="gender" value="Female">
  <label for="female">Female</label> 
  <input type="radio" id="other" name="gender" value="Other">
  <label for="other">Other </label>  
  <span class="error"> <?php echo $genderErr;?></span>
 </div><br>

<div class="b">
  <legend>Date of Birthday</legend>
  <input type="date" placeholder="mm/dd/yyyy" name="dob" id="dob" onkeyup="checkdob()" onblur="checkdob()" onclick="checkdob()"> 
  <span class="error" id="dobErr"> <?php echo $dobErr;?></span>
</div><br>
<input type="submit" name="submit" value="Register">
<input type="reset" name="reset" value="Reset">
</form>  
</div>
</div> 
</div>
<?php require 'Bar/footer.php';?>
</div>
</body>  
</html>  