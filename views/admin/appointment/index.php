<?php
#session_start();
require('libs/cards_display.php');
require('libs/database/databaseimplement.php');

$database = new DatabaseClass(db_name:"mdfinder", table_name:"appointment");
if(!isset($_SESSION['user_type'])){
    header('location: ././index.php?page=login');
}else{
    if($_SESSION['user_type']!="admin"){
        header('location: ././index.php?page=home&error=Your account does not have this permission');
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <title>Admin Manages Appointments</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <meta name="format-detection" content="telephone=no">

    <link rel="stylesheet" href="../assets/css/utils.css"/>
    <link rel="stylesheet" href="../assets/css/main.css"/>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

    <script src="https://kit.fontawesome.com/57448d1974.js" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="./libs/search.js"></script>
</head>

<body>
<?php include "components/header.php"; ?>
<h1>Appointments</h1>
<div class="container-fluid">
    <div class="row">
        <div class="col-2">
            <a class="btn btn-primary" type="button" href="./index.php?page=doctors">
                New
            </a>
        </div>
    </div>
</div>
<div class="row justify-content-center mt-5">
    <div class="col-md-12">
        <div class="card">
            <table class="table table-responsive-sm">
                <thead>
                <tr class="text-center">
                    <th scope="col">ID</th>
                    <th scope="col">Patient ID</th>
                    <th scope="col">Doctor ID</th>
                    <th scope="col">Date</th>
                    <th scope="col">Description</th>
                    <th scope="col">Status</th>
                </tr>
                </thead>
                <tbody>
                <?php
                $result = $database->getAllAppointments();
                while ($ap = mysqli_fetch_assoc($result)) {
                echo '
                    <tr class="text-center">
                        <td>
                            <a href="./index.php?page=admin-edit-appointment&appointment-id='. $ap['ap_id'] .'">'
                            . $ap['ap_id'] .
                            '</a>
                        </td>
                        <td>
                            <a href="./index.php?page=#">'
                            . $ap['p_id'] .
                            '</a>
                        </td>
                        <td>
                            <a href="./index.php?page=#">'
                            . $ap['md_id'] .
                            '</a>
                        </td>
                        <td>'
                            . $ap['ap_date_time'] .
                        '</td>
                        <td>'
                            . $ap['ap_desc'] .
                        '</td>

                        <td>'
                            . $ap['ap_status'] .
                        '</td>
                    </tr>
                ';
                }
                ?>
                </tbody>
            </table>
        </div>
    </div>
</div>
<?php include 'components/footer.php'; ?>

</body>
</html>