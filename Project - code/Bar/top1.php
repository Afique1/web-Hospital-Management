<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet" href="CSS/style.css">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>

<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
</head>
<body>
	
<header>
  <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <div class="navbar-brand">
    <img class="logo" style= "height: 75px; width: 75px;" src="Uploads/87-874647_red-cross-hospital-logo-hospital-logo-red-cross.png" alt="logo">
      <h2 class="textCenter" style="font-family:'Lucida Console', monospace ;">AIUB Hospital</h2>
    </div>
    <div class="collapse navbar-collapse justify-content-end" id="navbarNavAltMarkup">
    <div class="navbar-nav">
      <p class="nav-link"><?php echo "Welcome ".$_SESSION['name']." "; ?></p>
      <hr>
      <a class="nav-link" href="welcome.php"><i class="fas fa-home"></i> Home &nbsp;</a>
      <a class="nav-link" href="doctor.php"><i class="fas fa-user-md"></i> Doctor &nbsp;</a> 
      <a class="nav-link" href="patient.php"><i class="fas fa-user-injured"></i> Patient &nbsp;</a>
      <a class="nav-link" href="viewProfile.php"><i class="fas fa-id-badge"></i> View Profile &nbsp;</a> 
      <a class="nav-link, right" href="Controller/logout.php"><i class="fas fa-sign-out-alt"></i> Logout &nbsp;</a>
    </div>
    </div>
  </nav>
  <hr>
</header>
<br>
</body>
</html>