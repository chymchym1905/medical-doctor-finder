<?php
    //session_start();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./assets/css/style.css">
    <link rel="stylesheet" href="./assets/Icon/themify-icons.css">
    <script defer src="./validator.js"></script>
    <title>Medical Doctor Finder</title>
</head>

<body>

    <?php
        if (isset($_GET['page'])) {
            $page = $_GET['page'];

            if ($page == 'home') {
                include 'views/home.php';
            } elseif ($page == 'login') {
                include 'views/login.php';
            } elseif ($page == 'login_processing') {
                include 'config/login_processing.php';
            } elseif ($page == 'register') {
                include 'views/register.php';
            } elseif ($page == 'register_processing') {
                include 'config/register_processing.php';
            } else {
                include 'views/register.php';
            }
        } else {
            include 'views/home.php';
        }
    ?>
</body>
</html>
