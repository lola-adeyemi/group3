<?php   
session_start();

include_once 'logincode.php';  
$db = new Database(); 
$usernew = new login($db->getConn());
//if (!$usernew->session()){
//      header("location:login.php");  
//   }  
//   
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
              <?php
    $timezone = date_default_timezone_set('Europe/London');
    $date = date('m/d/Y h:i:s a', time());
   try {    $host = "localhost";
     $dbname = "lit";
    $username = "root";
    $password = "";
 ;
            $conn = new PDO("mysql:host=localhost;dbname=$dbname", $username, $password);
      
            $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $sql = "select * from BlogPosts";
           
            $result = $conn->query($sql);
            //var_dump($result);
            //echo "<br>";
            $data = $result->fetchAll();

            }

         catch (PDOException $pe) {
            die("Could not connect to the database $dbname :" . $pe->getMessage());
        }   
        ?>
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
                <h1 class="masthead-heading text-uppercase mb-0">     Blog posts</h1>
                <!-- Icon Divider-->
                <div class="divider-custom divider-light">
                    <div class="divider-custom-line"></div>
                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                    <div class="divider-custom-line"></div>
                </div>
            <!-- Masthead Avatar Image--><img class="masthead-avatar mb-5 img-fluidpages" src="assets/img/blogg.jpg" alt="picture of women" /><!-- Masthead Heading-->
        <p class="masthead-photo font-weight-light mb-0 align-left">&#128154 -Photo by Christina @ wocintechchat.com</p>
        </header>     
<div class="container align-left"><p>Last Updated:  <?php echo $date; ?></p></div>
      <div class="container d-flex align-self-center flex-column">
         
<?php
    if(! empty ($_SESSION['username'])){ ?>
        <td class="border-bottom border-top alert-success"><h6>Add Blog Post:</h6>
            <a id="add" href="newpost.php" ><img src="assets/img/add.png" title="ADD" /></a><br><br><?php } ?>
<script>
    if( empty($_SESSION['username'])){
    document.getElementById("add").style.display = "hidden";
    }
    else {
        document.getElementById("add").style.display = "none";
    }
</script>
<table class="table-borderless table-responsive-lg container ml-auto flex-column">
<?php
 rsort($data);
    if(!empty($result)) { 
     foreach ($data as $row) 
     {    

?>
<tr style="height: 21px;">
    <td > <?php echo $row['Date'];?></td>
</tr>
<tr>
    <td class="text-uppercase border-bottom"><h5> <?php echo $row['Title'];?></h5></</td>
</tr>
<tr>
<td class="lead"> <?php echo $row['Body'];?></td>
</tr>
<tr style="">
    <td> <?php echo $row['Image'];?></td>
</tr>
<tr>
<?php
    if(! empty ($_SESSION['username'])){ ?>
        <td class="border-bottom border-top alert-success"><h6>Admin function:</h6>
<a id="edit" href="editpost.php?PostID=<?php echo $row['PostID']; ?>"><img src="assets/img/edit.png" title="Edit" /></a>
    <a id="delete"  href="deletepost.php?PostID=<?php echo $row['PostID']; ?>"><img src="assets/img/delete.png" title="Delete" /></a>
<script>
    if( empty($_SESSION['username'])){
    document.getElementById("edit").style.display = "hidden";
   document.getElementById("delete").style.display = "hidden";
    }
    else {
        document.getElementById("edit").style.display = "none";
        document.getElementById("delete").style.display = "none";
    }
</script>
 </td>
</tr>
<tr style="height: 50px;">
    <td style=""><h5> <?php }?></h5></</td>
</tr>
<tr style="height: 50px;">
    <td style=""><h5> <?php }?></h5></</td>
</tr>
<tr>
<td> <br /> <br /> <?php  }?> </td>
</tr>
    <td>&nbsp;</td>
</tr>
</table></div>
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
