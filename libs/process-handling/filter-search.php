<?php
include ('db_conn.php');




if(isset($_POST["filter"])){
    $province = $_POST["province"];
    $dept = $_POST["speciality"];
    $s = "select * from doctor where md_dept = '$dept' and md_address = '$province'";
    $res = mysqli_query($conn, $s);
    $num = mysqli_num_rows($res);
    if($num!=0){
//        header("Location: ././index.php?page=register&error=Username already taken"); DO SEARCH RESULT PAGE
    }else{
        echo "No results";
//        header('location: ././index.php?page=login&message=Register successful!');
    }
}
