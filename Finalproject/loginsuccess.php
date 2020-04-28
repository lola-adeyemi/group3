<?php   
session_start();

include_once 'logincode.php';  
$db = new Database(); 
$usernew = new login($db->getConn());
if (!$usernew->session()){
      header("location:login.php");  
   }  
   
   if (isset($_REQUEST['q'])){
$usernew = new logout();
      $usernew->logout();  
      header("location:login.php");  
   }  
?>    
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>LIT</title>
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.12.1/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    <body id="page-top">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top" id="mainNav">
            
               <div class="container"><div class="align-left">
       <?php if( empty($_SESSION['username'])) {
           
       ?>
                <a href="login.php" class="btn btn-sm btn-outline-light align-left">
                 LogIn/Register </a>
       <?php }?> 
        <!-- information of the user logged in -->
        <!-- welcome message for the logged in user -->
        <?php  if(! empty ($_SESSION['username'])) : ?> 
            <a class="text-white">
                Welcome  
                    <?php echo $_SESSION['username']; ?> 
                </a> 
        <a href="?q=logout" class="btn-sm"><br>
                    Click here to Logout 
                </a> 
        <?php endif ?>     </div>
            <div class="text-center">
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto align-items-center">
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="homepage.php">Home</a></li>
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="blogposts.php">Blog</a></li>
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="events.php">Events</a></li>
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="courses.php">Courses</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Masthead-->
        <header class="masthead bg-primary text-white text-center">
            <div class="container d-flex align-items-center flex-column">
                <h2 class="text-uppercase mb-0">    you have logged in successfully ! </h2>
                <!-- Icon Divider-->
                <!-- Masthead Subheading-->
                <p class="masthead-subheading font-weight-light mb-0"> <br> </p>
            </div>
            <img class="masthead-avatar mb-0 img-fluidpage" src="assets/img/success.jpg" alt="good vibes only" /><!-- Masthead Heading-->
        <p class="masthead-photo font-weight-light mb-0 align-left">&#128155</p>
        </header>
        <!-- About Section-->
   
        <!-- Footer-->
        <footer class="footer text-white">
            <div class="container"><small>
                <div class="row">
                    <!-- Footer -->
                    <div class="col-lg-4 mb-0 mb-lg-0">
                        <p class="lead mb-1">Posted by: Ladies In Tech</p>
                        <p class="lead mb-1">Contact information: <a href="mailto:info@lit.com">info@lit.com</a></p>
                    </div>
                </div>
                </small></div>
        </footer>
        <!-- Copyright Section-->
        <section class="copyright py-4 text-center text-white">
            <div class="container"><small>&copy 2020 ladiesintech.com</small></div>
        </section>
        <!-- Scroll to Top Button (Only visible on small and extra-small screen sizes)-->
        <div class="scroll-to-top d-lg-none position-fixed">
            <a class="js-scroll-trigger d-block text-center text-white rounded" href="#page-top"><i class="fa fa-chevron-up"></i></a>
        </div>
        <!-- Bootstrap core JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
        <!-- Third party plugin JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
        <!-- Contact form JS-->
        <script src="assets/mail/jqBootstrapValidation.js"></script>
        <script src="assets/mail/contact_me.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>


