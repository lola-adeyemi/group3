<?php

class Database{
  
    //  database credentials
    private $host = "localhost";
    private $database = "lit";
    private $user = "root";
    private $password = "";
    private $table = "users";
    public $conn = null;
    

    // database connection
    public function __construct(){
  
  $dsn = "mysql:dbname={$this->database};host:{$this->host}";
       $conn =  new pdo($dsn, $this->user, $this->password)or die('DB Connection Error: ->'.mysql_error());  
            $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$this->conn = $conn;

    }
   
        
    public function getConn(){
        return $this->conn;
    }
    
    }


class login 
{


    public function logincheck($username, $password) {
        $db = new Database;  
        $mysqli = $db->getConn();
        $password = md5($password);
        $check = "Select * from users where username='".$username."' and password='".$password."'";  
        $data = $mysqli->query($check);
        $result = $data->fetchAll(PDO::FETCH_ASSOC);
       // $resulta= $result->fetch_assoc();
        $resultcheck = count($result);
//        $query = "SELECT  * FROM users WHERE  username='".$username."'" ;
//        $dataa = mysqli_query($mysqli,$query);
//        $resulta = mysqli_fetch_array($dataa);
        if ($resultcheck == 1) { 
            $_SESSION['login'] = true;  
            $_SESSION['username'] = $username; 
          // $_SESSION['usertype'] =   $resulta['usertype'];
                    return true;
        } else {  
            return false; 
   }
    }
    
//        public function admincheck() {
//        $db = new Database;  
//       $mysqli = $db->getConn();
//        $query = "SELECT * FROM users WHERE username='".$_SESSION['username']."'" ;
//        $result = $mysqli->query($query);
//     $data= $result->fetch();
//     $admin = printf ( $data['usertype']);
//        $_SESSION['usertype']= $admin;
//   }
//        
//    
        
        
           
    public function session() {  
        if (isset($_SESSION['login'])) {  
            return $_SESSION['login'];  
        }  
    }  
  
}

class logout {
    public function logout() {  
        $_SESSION['login'] = false;  
        session_destroy();  

}


}

class User {
        public function register( $userid, $username2, $email, $password2, $usertype) {  
        $db = new Database;  
        $mysqli = $db->getConn();
        $password2 = md5($password2);  
        $checkuser2 = "Select userid from users where username='$username2'";
        $querya2=$mysqli->query($checkuser2);
        $resulta2 = $querya2->fetchAll(PDO::FETCH_ASSOC);
        $resultchecka2 = count($resulta2);
        if ( $resultchecka2 == 0) {
            $register = $mysqli->query("Insert into users (userid, username, email, password, usertype) values ('$userid','$username2','$email','$password2','$usertype')") or die(mysql_error());  
        return $register;} else {  
            return false;  
        }  
        
}
}