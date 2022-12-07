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



if(isset($_POST["register-btn"])){
    $name = $_POST["username"];
    $pass = $_POST["password"];
    $firstname = $_POST["firstname"];
    $lastname = $_POST["lastname"];
    $email = $_POST["email"];
    $s = "select * from user where username = '$name'";
    $res = mysqli_query($conn, $s);
    $num = mysqli_num_rows($res);
    if($num==1){
        header("Location: ././index.php?page=register&error=Username already taken");
    }else{
        $reg = "insert into user(username, password, firstname, lastname, email) 
        values('$name','$pass','$firstname','$lastname','$email')";
        mysqli_query($conn,$reg);
        header('location: ././index.php?page=login&message=Register successful!');
    }
}

