<?php
include ('db_conn.php');
require('../cards_display.php');



if(isset($_POST["filter"])){
    $province = $_POST["province"];
    $dept = $_POST["speciality"];
    echo $dept ."    ". $province;
    $s = "select * from doctor where md_dept = '$dept' and md_address = '$province'";
    $res = mysqli_query($conn, $s);
    $num = mysqli_num_rows($res);
    if($num>0){
        while($row = $res->fetch_assoc()){                                              //DO SEARCH RESULT PAGE
            card($row['md_name'], $row['md_dept'], $row['md_photo'], $row['md_desc']);  //DO SEARCH RESULT PAGE
        }                                                                               //DO SEARCH RESULT PAGE
//        header("Location: ././index.php?page=register&error=Username already taken"); //DO SEARCH RESULT PAGE
    }else{
        echo "No results";
//        header('location: ././index.php?page=login&message=Register successful!');
    }
}
