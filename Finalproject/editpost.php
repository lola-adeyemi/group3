<?php
try {
require_once("dbconfig.php");

  $conn = new PDO("mysql:host=localhost;dbname=$dbname", $username, $password);
         
if(!empty($_POST["save_record"])) {
    
	$pdo_statement=$conn->prepare("update BlogPosts set Title='" . $_POST[ 'post_title' ] . "', Body='" . $_POST[ 'description' ]. "', Image='" . $_POST[ 'img' ]. "' Date='" . $_POST[ 'post_at' ]. "' where PostID=" . $_GET["PostID"]);
	$result = $pdo_statement->execute();
	if($result) {
		header('location:blogposts.php');
	}
}
$pdo_statement = $conn->prepare("SELECT * FROM BlogPosts where PostID=" . $_GET["PostID"]);
$pdo_statement->execute();
$result = $pdo_statement->fetchAll();
?>
<html>
<head>
<title>Edit Record</title>
<style>
body{width:615px;font-family:arial;letter-spacing:1px;line-height:20px;}
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
<div style="margin:20px 0px;text-align:right;"><a href="blogposts.php" class="button_link">Back to Blogs</a></div>
<div class="frm-add">
<h1 class="demo-form-heading">Edit Record</h1>
<form name="frmAdd" action="" method="POST">
  <div class="demo-form-row">
	  <label>Title: </label><br>
	  <input type="text" name="post_title" class="demo-form-field" value="<?php echo $result[0]['Title']; ?>" required  />
  </div>
  <div class="demo-form-row">
	  <label>Body: </label><br>
	  <input type="text" name="description" class="demo-form-field" rows="5" value="<?php echo $result[0]['Body']; ?>" required />
  </div>
    <div class="demo-form-row">
	  <label>Image: </label><br>
	  <input type="file" name="img" class="demo-form-field" value="<?php echo $result[0]['Image']; ?>" required />
  </div>
  <div class="demo-form-row">
	  <label>Date: </label><br>
	  <input type="date" name="post_at" class="demo-form-field" value="<?php echo $result[0]['Date']; ?>" required />
  </div>
  
  <div class="demo-form-row">
	  <input name="save_record" type="submit" value="Save" class="demo-form-submit">
  </div>
  </form>
</div>
  <footer>
  <p>Posted by: Ladies In Tech</p><p>Contact information: <a href="mailto:info@lit.com">info@lit.com</a></p><p>Copyright &copy; 2020 ladiesintech.com</p>
</footer>
</body>
</html>
<?php
}
 catch (PDOException $pe) {
    die("Could not connect to the database $dbname :" . $pe->getMessage());
}
