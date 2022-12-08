<?php
    session_start();
    if(isset($_SESSION['user_type'])){
        if($_SESSION['user_type']=='admin'){
            header("location: ?page=admin-user");
        }elseif($_SESSION['user_type']=='doctor'){
            header('location: ?page=appointment');
        }
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Medical Doctor Finder</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Font -->
    <script src="https://kit.fontawesome.com/57448d1974.js" crossorigin="anonymous"></script>

    <!-- CSS -->
    <link rel="stylesheet" href="./assets/css/style.css">
    <link rel="stylesheet" href="./assets/css/login.css">
    <link rel="stylesheet" href="./assets/css/register.css">
    <link rel="stylesheet" href="./assets/css/main.css">
    <link rel="stylesheet" href="./assets/css/utilities.css">
    <link rel="stylesheet" href="./assets/css/utils.css">

    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <!-- Google maps -->
    <!-- <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY&callback=myMap"></script> -->

</head>

<body>

<?php
if (isset($_GET['page'])) {
    $page = $_GET['page'];

    if ($page == 'home') {
        include 'views/home.php';
    }
    elseif ($page == 'login') {
        include 'views/login.php';
    }
    elseif ($page == 'login_processing') {
        include 'libs/process-handling/login-handling.php';
    }
    elseif ($page == 'register') {
        include 'views/register.php';
    }
    elseif ($page == 'register_processing') {
        include 'libs/process-handling/register-handling.php';
    }
    elseif ($page == 'about') {
        include 'views/about.php';
    }
    elseif ($page == 'doctors') {
        include 'views/doctor-list.php';
    }
    elseif ($page == 'medical-facilities') {
        include 'views/medical-facilities.php';
    }
    elseif ($page == 'user-profile') {
        include 'views/user-profile.php';
    }
    elseif ($page == 'make-appointment') {
        include 'views/make-appointment.php';
    }
    elseif ($page == 'doctor-profile') {
        include 'views/doctor-profile.php';
    }
    elseif ($page == 'doctor-myprofile') {
        include 'views/doctor-myprofile.php';
    }
    elseif ($page == 'appointment') {
        include 'views/admin/appointment/index.php';
    }
    elseif ($page == 'admin-user') {
        include 'views/admin/user/index.php';
    }
    elseif ($page == 'admin-create-user') {
        include 'views/admin/user/create.php';
    }
    elseif ($page == 'admin-edit-user') {
        include 'views/admin/user/edit.php';
    }
    else {
        die('Page Not Found!');
    }
} else {
    include 'views/home.php';
}
?>

</body>
<script src="./assets/js/maps.js"></script>
<script src="libs/search.js"></script>
</html>
