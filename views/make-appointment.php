<?php
#session_start();
#require('libs/cards_display.php');
require('libs/database/databaseimplement.php');

$database = new DatabaseClass(db_name:"mdfinder", table_name:"doctor");
?>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Make a doctor's appointment</title>
    <!-- Font -->

    <!-- CSS -->
    <link rel="stylesheet" href="./assets/css/appointment.css">
    <link rel="stylesheet" href="./assets/css/style.css">
    <link rel="stylesheet" href="./assets/css/login.css">
    <link rel="stylesheet" href="./assets/css/register.css">
    <link rel="stylesheet" href="./assets/css/main.css">
    <link rel="stylesheet" href="./assets/css/utilities.css">
    <link rel="stylesheet" href="./assets/css/utils.css">

    <!-- Bootstrap -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    
    <!-- Datepicker -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Google maps -->
    <script src = "https://maps.googleapis.com/maps/api/js"></script>

</head>

<body>
<?php include 'components/header.php';
    if(isset($_GET['md_id'])){
        $md_id = $_GET['md_id'];
    } ?>

        <form action="?page=make-appointment&md_id=1" method="POST">
            <h2>Please fill out form to make an appointment with a doctor</h2>               
                <!-- Doctor's name here -->
            <hr>
            <div class="form-group">
                <label for="ap_desc"><b>A brief description of your symtoms</b></label>
                <input type="text" class="form-control submissionfield" id="ap_desc" name="ap_desc" placeholder="Enter description">

            </div>

            <div class="form-group">
                <label for="ap_time"><b>Pick a time and date for your appointment</b></label>
                <div class='input-group date' id='datetimepicker1'>
                    <input type='text' id="ap_time" name="ap_time" class="form-control" />
                    <div class="input-group-addon">
                            <span class="glyphicon glyphicon-calendar"></span>
                    </div>
                </div>
            </div>

            <button type="submit" name="make-app-btn" class="btn btn-primary mb-3">Make an appointment</button>

        </form>

        <?php if(isset($_POST['make-app-btn'])){
            $getPatientID = $database->getPatientID([$_SESSION['user_id']]);
            $row = mysqli_fetch_assoc($getPatientID);
            $database->makeAppointment($_POST['ap_desc'], date("Y-m-d H:i:s", strtotime($_POST["ap_date_time"])), $row['p_id'], $md_id);
        }?>

<?php include 'components/footer.php'; ?>
</body>
</html>