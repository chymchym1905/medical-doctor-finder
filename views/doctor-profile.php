<?php
#session_start();
#require('libs/cards_display.php');
require('libs/database/databaseimplement.php');

$database = new DatabaseClass(db_name:"mdfinder", table_name:"doctor");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Doctor List</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Font -->

    <!-- CSS -->
    <link rel="stylesheet" href="./assets/css/style.css">
    <link rel="stylesheet" href="./assets/css/login.css">
    <link rel="stylesheet" href="./assets/css/register.css">
    <link rel="stylesheet" href="./assets/css/main.css">
    <link rel="stylesheet" href="./assets/css/utilities.css">
    <link rel="stylesheet" href="./assets/css/utils.css">

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
<div class="container-fluid">
    <div class="row text-center py-5">
        <?php
            $md_id = $_GET['md_id'];
            $result = $database->displayDoctor($md_id); 
            while ($row = mysqli_fetch_assoc($result)){
            
            #<!-- Make display look better! -->
                #echo "<b> $row['md_id'] </b><br>";
                echo $row['md_name'];
                echo $row['md_dept'];
                echo $row['md_photo'];
                echo $row['md_clinic'];
                echo $row['md_desc'];
        }
            #<!-- Make a Book appointment button here -->
        ?>
    </div>
</div> 
<?php include 'components/footer.php'; ?>
</body>
</html>
