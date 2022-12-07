<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Register Page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Font -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,700" rel="stylesheet">

    <!-- CSS -->
    <link rel="stylesheet" href="../assets/css/style.css">

    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <!-- Google maps -->
    <script src = "https://maps.googleapis.com/maps/api/js"></script>

</head>
<body>
<?php include '../components/header.php'; ?>

<div class="container content-wrap">
    <div class="row">
        <div class="col-md-6">
            <form action="?page=login_processing" method="POST">
                <h1>Login</h1>
                <hr>
                <div class="form-group
                <?php
                if (isset($_SESSION['error']['username'])) {
                    echo 'has-error';
                }
                ?>
                ">
                    <label for="username"><b>Username</b></label>
                    <input type="email" class="form-control" id="username" name="username" placeholder="Enter username">
                    <?php
                    if (isset($_SESSION['error']['username'])) {
                        echo '<span class="help-block">' . $_SESSION['error']['username'] . '</span>';
                    }
                    ?>
                </div>
                <div class="form-group
                <?php
                if (isset($_SESSION['error']['password'])) {
                    echo 'has-error';
                }
                ?>
                ">
                    <label for="password"><b>Password</b></label>
                    <input type="password" class="form-control" id="password" name="password" placeholder="Enter password">
                    <?php
                    if (isset($_SESSION['error']['password'])) {
                        echo '<span class="help-block">' . $_SESSION['error']['password'] . '</span>';
                    }
                    ?>
                </div>
                <button type="submit" name="login-btn" class="btn btn-primary mb-3">Login</button>

                <div>
                    <p>Don't have an account? <a href="./index.php?page=register">Register</a>.</p>
                </div>
            </form>
        </div>
    </div>
</div>

<?php include '../components/footer.php'; ?>
</body>
</html>