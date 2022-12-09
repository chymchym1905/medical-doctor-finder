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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/js/bootstrap-datetimepicker.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    
    <!-- Datepicker -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/css/bootstrap-datetimepicker.css">
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.43/css/bootstrap-datetimepicker.min.css"> 
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.43/css/bootstrap-datetimepicker-standalone.css">

    <!-- Google maps -->
    <script src = "https://maps.googleapis.com/maps/api/js"></script>

</head>

<body>
<?php include 'components/header.php'; ?>

        <form action="?page=" method="POST">
            <h2>Please fill out form to make an appointment with</h2>
                <!-- Doctor's name here -->
            <hr>
            <div class="form-group">
                <label for="ap_desc"><b>A brief description of your symtoms</b></label>
                <input type="text" class="form-control" id="ap_desc" name="ap_desc" placeholder="Enter description">

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

        <script type="text/javascript">
            $(function () {
                $('#datetimepicker1').datetimepicker();
            });
        </script>

<?php include 'components/footer.php'; ?>
</body>
</html>