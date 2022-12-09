<?php if (isset($_SESSION['username'])): ?>
    <?php if (($_SESSION['user_type']) == 'patient'): ?>

<!-- Logged in as patient -->
<div class="header">
    <nav class="navbar fix-top navbar-expand-sm">
        <div id="header" class="container-fluid">
            <a class="navbar-brand" href="./index.php">
                <img src="./assets/img/logo.png" alt="Medical Doctor Finder Logo" width="100" class="d-inline-block align-top">
            </a>
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a href="./index.php?page=home" class="nav-link">Home</a>
                    </li>
                    <li class="nav-item">
                        <a href="./index.php?page=doctors" class="nav-link">Browse</a>
                    </li>
                    <li class="nav-item">
                        <a href="./index.php?page=patient-myprofile" class="nav-link">My Profile</a>
                    </li>
                    <li class="nav-item">
                        <a href="./index.php?page=patient-mydoctor" class="nav-link">My Doctor</a>
                    </li>
                    <li class="nav-item">
                        <a href="./index.php?page=patient-myappointment" class="nav-link">My Appointments</a>
                    </li>
                </ul>
            </div>
            <div class="nav-bar margin-auto">
                <form action="?page=doctors" method="post">
                    <div class= "input-icons">
                        <i class="icon"></i>
                        <input style="width: 20vw;" type="search" class="search-input"
                               type="text" placeholder = "Search..." name="search">
                    </div>
                </form>
            </div>

<?php elseif (($_SESSION['user_type']) == 'doctor'): ?>

<div class="header">
    <nav class="navbar fix-top navbar-expand-sm">
        <div id="header" class="container-fluid">
            <a class="navbar-brand" href="./index.php">
                <img src="./assets/img/logo.png" alt="Medical Doctor Finder Logo" width="100" class="d-inline-block align-top">
            </a>
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a href="./index.php?page=home" class="nav-link">Home</a>
                    </li>
                    <li class="nav-item">
                        <a href="./index.php?page=doctor-myprofile" class="nav-link">My Profile</a>
                    </li>
                    <li class="nav-item">
                        <a href="./index.php?page=doctor-mypatient" class="nav-link">My Patient</a>
                    </li>
                    <li class="nav-item">
                        <a href="./index.php?page=doctor-myappointment" class="nav-link">My Appointments</a>
                    </li>
                </ul>
            </div>
            <div class="nav-bar margin-auto">
                <form action="?page=doctors" method="post">
                    <div class= "input-icons">
                        <i class="icon"></i>
                        <input style="width: 20vw;" type="search" class="search-input"
                               type="text" placeholder = "Search..." name="search">
                    </div>
                </form>
            </div>


<?php else: ?>

<div class="header">
    <nav class="navbar fix-top navbar-expand-sm">
        <div id="header" class="container-fluid">
            <a class="navbar-brand" href="./index.php">
                <img src="./assets/img/logo.png" alt="Medical Doctor Finder Logo" width="100" class="d-inline-block align-top">
            </a>
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a href="./index.php?page=home" class="nav-link">Home</a>
                    </li>
                    <li class="nav-item">
                        <a href="./index.php?page=about" class="nav-link" >About</a>
                    </li>
                    <li class="nav-item">
                        <a href="./index.php?page=doctors" class="nav-link" >Doctors</a>
                    </li>
                    <li class="nav-item">
                        <a href="./index.php?page=medical-facilities" class="nav-link">Medical Facilities</a>
                    </li>
                </ul>
            </div>
            <div class="nav-bar margin-auto">
                <form action="?page=doctors" method="post">
                    <div class= "input-icons">
                        <i class="icon"></i>
                        <input style="width: 20vw;" type="search" class="search-input"
                               type="text" placeholder = "Search..." name="search">
                    </div>
                </form>
            </div>

<?php endif;?>
<?php endif; ?>

<!-- <div class="header">
    <nav class="navbar fix-top navbar-expand-sm">
        <div id="header" class="container-fluid">
            <a class="navbar-brand" href="./index.php">
                <img src="./assets/img/logo.png" alt="Medical Doctor Finder Logo" width="100" class="d-inline-block align-top">
            </a>
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a href="./index.php?page=home" class="nav-link">Home</a>
                    </li>
                    <li class="nav-item">
                        <a href="./index.php?page=about" class="nav-link" >About</a>
                    </li>
                    <li class="nav-item">
                        <a href="./index.php?page=doctors" class="nav-link" >Doctors</a>
                    </li>
                    <li class="nav-item">
                        <a href="./index.php?page=medical-facilities" class="nav-link">Medical Facilities</a>
                    </li>
                </ul>
            </div>
            <div class="nav-bar margin-auto">
                <form action="?page=doctors" method="post">
                    <div class= "input-icons">
                        <i class="icon"></i>
                        <input style="width: 20vw;" type="search" class="search-input"
                               type="text" placeholder = "Search..." name="search">
                    </div>
                </form>
            </div> -->

            <?php if (isset($_SESSION['username'])): ?>
                <div class="dropdown">
                    <button class="btn dropdown-btn dropdown-toggle" type="button" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false">
                        <?php echo $_SESSION['username']; ?>
                    </button>
                    <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                        <li><a class="dropdown-item" href="./index.php?page=user-profile">Profile</a></li>
                        <li><a class="dropdown-item" href="./index.php?page=admin-user">User</a></li>
                        <li><a class="dropdown-item" href="./index.php?page=appointment">Appointment</a></li>
                        <li><a class="dropdown-item" href="./views/logout.php" onclick="return session_unset()" style="color: red">Logout</a></li>
                    </ul>
                </div>

            <?php else: ?>
            <ul class="navbar-nav margin-auto">
                <li class="nav-item">
                    <a id="logout-button" href="./index.php?page=login" style="margin-left: 1rem;" class="button-log blue">
                        <span>Login</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a id="logout-button" href="./index.php?page=register" style="margin-left: 1rem;" class="button-log blue">
                        <span>Register</span>
                    </a>
                </li>
            </ul>
            <?php endif; ?>
        </div>
    </nav>
</div>