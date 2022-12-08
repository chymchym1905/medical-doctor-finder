<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User's Profile</title>
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
<?php
    echo '
        <div id="container">
            <div id="body_header">
                <!--This is a division tag for body header-->
                <h1>Appointment Request Form</h1>
                <p>Make your appointments more easier</p>

            </div>
        <form action="index.html" method="post">
            <fieldset>
                <legend><span class="number">1</span>Your basic details</legend>
                <label for="name">Name*:</label>
                <input type="text" id="name" name="user_name" placeholder="(only first names)" required pattern="[a-zA-Z0-9]+">

                <label for="mail">Email*:</label>
                <input type="email" id="mail" name="user_email" placeholder="abc@xyz.com" required>

                <label for="tel">Contact Num:</label>
                <input type="tel" id="tel" placeholder="Include country code" name="user_num">

                <label for="skype_name">Skype username:</label>
                <input type="text" id="skype_name" name="skype_name" placeholder="@atchyutn" pattern="[a-zA-Z0-9]+">


            </fieldset>

            <fieldset>
                <legend><span class="number">2</span>Appointment Details</legend>
                <label for="appointment_for">Appointment for*:</label>
                <select id="appointment_for" name="appointment_for" required>
                    <option value="checking">General Checking</option>
                    <option value="Deep checking">Deep Checking</option>
                    <option value="Re">Business</option>
                    
                </select>
                <label for="appointment_description">Appointment Description:</label>
                <textarea id="appointment_description" name="appointment_description" placeholder="I wish to get an appointment to skype for resolving a software problem."></textarea>
                <label for="date">Date*:</label>
                <input type="date" name="date" value="" required></input>
                <br>
                <label for="time">Time*:</label>
                <input type="time" name="time" value="" required></input>
                <br>
                <label for="duration">How Long??(Minutes)</label>
                <input type="radio" name="duration" value="30" checked> 30
                <input type="radio" name="duration" value="60"> 60
                <input type="radio" name="duration" value="90"> 90
                <input type="radio" name="duration" value="more"> more
            </fieldset>
            <button type="submit">Request For Appointment</button>
        </form>
  </div>
</body>
'
?>


<?php include 'components/footer.php'; ?>
</body>
</html>