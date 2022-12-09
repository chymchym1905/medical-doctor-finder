<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Creates User</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Font -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,700" rel="stylesheet">

    <!-- CSS -->
    <link rel="stylesheet" href="assets/css/style.css">

    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <!-- Google maps -->
    <script src = "https://maps.googleapis.com/maps/api/js"></script>

    <script defer src = "assets/js/authen.js"></script>

</head>
<body>
<?php include "components/header.php";
if(isset($_GET['error'])){
    echo $_GET['error'];
}
?>

<div class="container content-wrap">
    <div class="row">
        <div class="col-md-6">
            <form action="?page=register_processing" method="post" id="form">
                <h1>Create New User</h1>
                <hr>
                <div class="form-group">
                    <label for="firstname"><b>First name</b></label>
                    <input type="text" placeholder="Enter First name" name="firstname" id="firstname" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="lastname"><b>Last name</b></label>
                    <input type="text" placeholder="Enter Last name" name="lastname" id="lastname" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="username"><b>Username</b></label>
                    <input type="text" placeholder="Enter User name" name="username" id="username" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="email"><b>Email</b></label>
                    <input type="text" placeholder="Enter Email" name="email" id="email" class="form-control" pattern="[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*" required>
                </div>
                <div class="form-group">
                    <label for="usertype"><b>User's type</b></label>
                    <select name="usertype" id="usertype" class="form-control">
                        <option value="admin">Admin</option>
                        <option value="doctor">Doctor</option>
                        <option value="patient">Patient</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="password"><b>Password</b></label>
                    <input type="password" placeholder="Enter Password" name="password" id="password" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="password-repeat"><b>Repeat Password</b></label>
                    <input type="password" placeholder="Repeat Password" name="password-repeat" id="password-repeat" class="form-control" required>
                </div>

                <button type="submit" name="register-btn" class="btn btn-primary mb-3">Create</button>
            </form>
        </div>
    </div>
</div>

<?php include 'components/footer.php';

?>
</body>

</html>