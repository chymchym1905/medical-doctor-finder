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
    $username = $_POST["username"];
    $password = $_POST["password"];
    $firstname = $_POST["firstname"];
    $lastname = $_POST["lastname"];
    $email = $_POST["email"];
    $usertype = $_POST["usertype"];


    $s = "select * from user where username = '$username'";
    $res = mysqli_query($conn, $s);
    $num = mysqli_num_rows($res);
    if($num==1){
        header("Location: ././index.php?page=register&error=Username already taken");
    }else{
        if(isset($_POST["user_type"])){
            $reg = "insert into user(username, password, firstname, lastname, email, user_type) 
            values ('$username', '$password', '$firstname', '$lastname', '$email', '$user_type')";
            mysqli_query($conn, $reg);
            // IF USER IS DOCTOR
            if ($user_type == 'doctor'){
                $insert_doc_sql = "INSERT INTO doctor (user_id) 
                                    SELECT id
                                    FROM user WHERE username = '$username'";
                mysqli_query($conn, $insert_doc_sql);
            } elseif ($user_type == 'patient'){
                $patient_sql ="";
            }
            header("Location: ././index.php?page=login&message=New user created successfully!");
        }else {
            $reg = "insert into user(username, password, firstname, lastname, email) 
            values ('$username', '$password', '$firstname', '$lastname', '$email')";
            mysqli_query($conn, $reg);
            header('location: ././index.php?page=login&message=Register successful!');
        }
    }
}


