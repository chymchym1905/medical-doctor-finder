<?php
    include_once ('database.php');

    $newUser = new Users();
    $newUser->createConnection($servername, $username, $password, $dbname);
    if (isset($_POST['username']) && isset($_POST['password']) && isset($_POST['firstname'])&& isset($_POST['lastname'])) {
        $newUser->register($_POST);
    } else {
        header("Location: index.php?page=login");
        exit();
    }
    $newUser->connection->close();
