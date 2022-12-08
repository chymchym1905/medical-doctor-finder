<?php
#session_start();
require('libs/cards_display.php');
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
            if(empty($_POST["search"])){
            $result = $database->getAllDoctors();
            while ($row = mysqli_fetch_assoc($result)){
                //card($row['md_name'], $row['md_dept'], $row['md_photo'], $row['md_desc']);
                // create a card for each doctor with html
                echo '<div class="col-md-3 col-sm-6 col-xs-12">
                        <div class="card">
                            <img src="'. $row['md_photo'] . '" class="card-img" alt="'. $row['md_name'] .'">
                            <div class="card-container">
                                <h5 class="card-title">'.$row['md_name'].'</h5>
                                <p class="card-text">'.$row['md_dept'].'</p>
                                <p class="card-text">'.$row['md_desc'].'</p>
                                <a href="doctor-profile.php?id='.$row['md_id'].'" class="btn btn-primary">View Profile</a>
                            </div>
                        </div>
                    </div>';
            }
            } else{
                $result = $database->searchData($_POST["search"]);
                if($result!=null){
                    while ($row = mysqli_fetch_assoc($result)){
                        card($row['md_name'], $row['md_dept'], $row['md_photo'], $row['md_desc']);
                    }
                }
            }
        ?>
    </div>
</div> 
<?php include 'components/footer.php'; ?>
</body>
</html>
