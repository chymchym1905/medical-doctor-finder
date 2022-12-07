<div class="header">
<nav class="navbar fix-top navbar-expand-sm">
    <div id="header" class="container-fluid">
        <a class="navbar-brand" href="./index.php">
            <img src="#" alt="Logo" width="" class="">
        </a>

        <?php if (isset($_SESSION['id'])): ?>
            <div class="dropdown">
                <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false">
                    <?php echo $_SESSION['username']; ?>
                </button>
                <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                    <li><a class="dropdown-item" href="./index.php?page=profile">Profile</a></li>
                    <li><a class="dropdown-item" href="./index.php?page=logout">Logout</a></li>
                </ul>
            </div>
        <?php else: ?>
            <div class="login">
                <a href="./index.php?page=login" class="btn btn-primary">Login</a>
            </div>
            <div class="register">
                <a href="./index.php?page=register" class="btn btn-primary">Register</a>
            </div>
        <?php endif; ?>

        <div class="collapse navbar-collapse" id="collapsibleNavbar">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a href="./index.php?page=home" class="nav-link">Home</a>
                </li>
                <li class="nav-item">
                    <a href="./index.php?page=doctor" class="nav-link" >Doctor</a>
                </li>
                <li class="nav-item">
                    <a href="./index.php?page=booking" class="nav-link">Booking</a>
                </li>
            </ul>
        </div>

    </div>
</nav>
</div>