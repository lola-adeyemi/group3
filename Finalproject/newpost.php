<?php
session_start();
if(!empty($_POST["add_record"])) {
	require_once("dbconfig.php");
        $conn = new PDO("mysql:host=localhost;dbname=$dbname", $username, $password);
	$sql = "INSERT INTO BlogPosts ( PostID, UserID, Title, Body, Image, Date ) VALUES (:PostID, :UserID, :Title, :Body, :Image, :Date )";
	$pdo_statement = $conn->prepare( $sql );
		
	$result = $pdo_statement->execute( array(':PostID'=>$_POST['postid'],':UserID'=>$_POST['userid'],':Title'=>$_POST['post_title'], ':Body'=>$_POST['description'],':Image'=>$_POST['image'], ':Date'=>$_POST['post_at'] ) );
	if (!empty($result) ){
	  header('location:blogposts.php');
	}
}
?>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
         <style>
       
.body{width:615px;font-family:arial;letter-spacing:1px;line-height:20px;}
.button_link {color:#FFF;text-decoration:none; background-color:#428a8e;padding:10px;}
.frm-add {border: #c3bebe 1px solid;
    padding: 30px;}
.demo-form-heading {margin-top:0px;font-weight: 500;}	
.demo-form-row{margin-top:20px;}
.demo-form-field{width:300px;padding:10px;}
.demo-form-submit{color:#FFF;background-color:#414444;padding:10px 50px;border:0px;cursor:pointer;}
</style>       
</head>

<body>
     <div class="container d-flex align-items-center flex-column">
<div style="margin:20px 0px;text-align:right;"><a href="blogposts.php" class="button_link">Back to Blogs</a></div>
<div class="frm-add">
<h1 class="demo-form-heading">Add New Post</h1>
<form name="frmAdd" action="" method="POST">
    <div class="demo-form-row font-weight">
	  <label> </label><br>
	  <input type="hidden" value="" name="postid" class="demo-form-field" />
    </div>
    <div class="demo-form-row">
	  <label> </label><br>
	  <input type="hidden" value="1" name="userid" class="demo-form-field" />
    </div>      
   <div class="demo-form-row">
	  <label>Title: </label><br>
	  <input type="text" name="post_title" class="demo-form-field form-text" required />
  </div>
  <div class="demo-form-row">
	  <label>Description: </label><br>
          <textarea  name="description" class="demo-form-field" rows="5" required ></textarea>
  </div>
  <div class="demo-form-row">
	  <label>Upload Image: </label><br>
	  <input type="file" name="image" class="demo-form-field" rows="5" />
  </div>  
  <div class="demo-form-row">
	  <label>Date: </label><br>
	  <input type="date" name="post_at" class="demo-form-field" required />
  </div>
  <div class="demo-form-row">
	  <input name="add_record" type="submit" value="Add" class="demo-form-submit">
  </div>
  </form>
</div> 
     </div>
<footer>
  <p>Posted by: Ladies In Tech</p><p>Contact information: <a href="mailto:info@lit.com">info@lit.com</a></p><p>Copyright &copy; 2020 ladiesintech.com</p>
</footer>
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
