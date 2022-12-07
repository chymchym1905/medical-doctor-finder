<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <meta name="format-detection" content="telephone=no">
    <title>Electro</title>
    <!--reset css-->
    <link rel="stylesheet" href="../assets/css/register.css" />
    <link rel="stylesheet" href="../assets/css/utilities.css" />

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

    <script src="https://kit.fontawesome.com/57448d1974.js" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="js/input_validate.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

</head>

<body>
    <!--Navigation bar-->
    <div class="popup-message">
        <?php if (isset($_GET['error'])) { ?>
        <span style="display:table; margin-left: auto; margin-right: auto;" class="error"><?php echo $_GET['error']; ?></span>
        <?php }?>
        <?php if (isset($_GET['success'])) { ?>
        <span style="display:table; margin-left: auto; margin-right: auto;" class="success"><?php echo $_GET['success']; ?></span>
        <?php }?>
    </div>

    <!--Navbar-->
    <?php include 'components/header.php'; ?>

    <!--Body-->
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
    <!--Footer-->
    <?php include "components/footer.php"; ?>
</body>

</html>