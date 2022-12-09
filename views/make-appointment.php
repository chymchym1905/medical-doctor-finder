<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Make a doctor's appointment</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Font -->

    <!-- CSS -->
    
    
    <link rel="stylesheet" href="../assets/css/appointment.css">

    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <!-- Google maps -->
    <script src = "https://maps.googleapis.com/maps/api/js"></script>
</head>

<body>
<?php include 'components/header.php'; ?>

        <form action="?page=login_processing" method="POST">
            <h2>Please fill out form to make an appointment with</h2>
                <!-- Doctor's name here -->
            <hr>
            <div class="form-group">
                <label for="ap_desc"><b>A brief description of your symtoms</b></label>
                <input type="text" class="form-control submissionfield" id="ap_desc" name="ap_desc" placeholder="Enter description">

            </div>
            <div class="form-group">
                <label for="ap_time"><b>Appointment time</b></label>
                <input type="text" class="form-control" id="ap_time" name="ap_time" placeholder="Enter time">

            </div>
            <button type="submit" name="make-app-btn" class="btn btn-primary mb-3">Make an appointment</button>

        </form>

<?php
    
?>

<?php include 'components/footer.php'; ?>
</body>
</html>