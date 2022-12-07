<?php
include ('db_conn.php');

// $newUser = new Users();
// $newUser->createConnection($servername, $username, $password, $dbname);
// if (isset($_POST['username']) && isset($_POST['password']) && isset($_POST['firstname'])&& isset($_POST['lastname'])) {
//     $newUser->register($_POST);
// } else {
//     header("Location: index.php?page=login");
//     exit();
// }



if(isset($_POST["login-btn"])){
    $name = $_POST["username"];
    $pass = $_POST["password"];
    $s = "select * from user where username = '$name' and password = '$pass'";
    $res = mysqli_query($conn, $s);
    $num = mysqli_num_rows($res);
    if($num==1){
        $_SESSION['username']=$name;
        header("Location: ././index.php?page=home");
    }else{
        echo "Incorrect username or password";
    }
}