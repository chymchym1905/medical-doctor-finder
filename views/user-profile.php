<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User's Profile</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Font -->

    <!-- CSS -->
    
    <link rel="stylesheet" href="./assets/css/main.css">
    <link rel="stylesheet" href="./assets/css/utils.css">
    <link rel="stylesheet" href="./assets/css/profiles.css">
    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <!-- Google maps -->

</head>

<body>
<?php include 'components/header.php'; ?>
<?php
echo '
    <div class="container-fluid">
        <div class="row text-center py-5">
            <h1>Profile</h1>
        </div>

    <div class="container mt-4 mb-4 p-3 d-flex justify-content-center"> 
        <div class="card p-4"> 
            <div class=" image d-flex flex-column justify-content-center align-items-center"> 
                <button class="btn btn-secondary"> 
                    <img src = "" height="100" width="100" />
                </button> 
                <span class="name mt-3">Vo Van Kiet</span> 
                <span class="idd">@</span> 
                <div class="d-flex flex-row justify-content-center align-items-center gap-2"> 
                    <span class="idd1">
                        Description: A user
                    </span> 
                </div> 
                <div class="d-flex flex-row justify-content-center align-items-center mt-3"> 
                    <span class="number">1069 <span class="follow">Followers</span>
                    </span> 
                </div> 
                <div class=" d-flex mt-2"> 
                    <button class="btn1 btn-dark">Order Appointment</button> 
                </div> 
                <div class="text mt-3"> 
                    <span>Eleanor Pena is a creator of minimalistic x bold graphics and digital artwork.<br><br> Artist/ Creative Director by Day #NFT minting@ with FND night. 
                    </span> 
                </div>
                <div class="gap-3 mt-3 icons d-flex flex-row justify-content-center align-items-center"> 
                    <span><i class="fa fa-twitter"></i></span> 
                    <span><i class="fa fa-facebook-f"></i></span> 
                    <span><i class="fa fa-instagram"></i></span> 
                    <span><i class="fa fa-linkedin"></i></span> 
                </div> 
                <div class=" px-2 rounded mt-4 date ">
                    <span class="join">Joined May,2021</span> 
                </div> 
            </div> 
        </div>
    </div>
    </div>'

?>


<?php include 'components/footer.php'; ?>
</body>
</html>

