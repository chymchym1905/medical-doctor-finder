<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Edits User</title>
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
            <form action="./index.php?page=admin-update-user" method="post" id="form">
                <h1>Edit User</h1>
                <hr>
                <div class="form-group">
                    <label for="firstname"><b>First name</b></label>
                    <input type="text" value="<?php $user->firstname ?>" name="firstname" id="firstname" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="lastname"><b>Last name</b></label>
                    <input type="text" value="<?php $user->lastname ?>" name="lastname" id="lastname" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="username"><b>Username</b></label>
                    <input type="text" value="<?php $user->username ?>" name="username" id="username" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="email"><b>Email</b></label>
                    <input type="text" value="<?php $user->email ?>" name="email" id="email" class="form-control" pattern="[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*" required>
                </div>
                <div class="form-group">
                    <label for="usertype"><b>User's type</b></label>
                    <select name="usertype" id="usertype" class="form-control">
                        <option value="admin" <?php if($user->usertype == 'admin'): ?> selected <?php endif; ?>>Admin</option>
                        <option value="doctor" <?php if($user->usertype == 'doctor'): ?> selected <?php endif; ?>>Doctor</option>
                        <option value="patient" <?php if($user->usertype == 'patient'): ?> selected <?php endif; ?>>Patient</option>
                    </select>
                </div>

                <button type="submit" class="btn btn-primary mb-3">Save</button>
            </form>
            <form class="d-inline" method="POST" action="./index.php?page=admin-delete-user">
                <button class="btn btn-outline-danger btn-sm" type="submit"
                        onclick="">
                    Delete
                </button>
            </form>
        </div>
    </div>
</div>

<?php include 'components/footer.php';

?>
</body>

</html>