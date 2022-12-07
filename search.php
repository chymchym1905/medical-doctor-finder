<?php
  include('libs/process-handling/db_conn.php');

  if (isset($_POST['query'])) {
    $inpText = $_POST['query'];
    $sql = "SELECT * FROM doctor WHERE md_name LIKE '%$inpText%'";
    $result= mysqli_query($conn,$sql);
    $i=10;
    if ($result->num_rows>0) {
      while (($row = $result->fetch_assoc()) && ($i>0)) {
        $i = $i-1;
        echo "<a href=# class='mylist-link' style='color: black;' ><p>". $row['md_name'] . "</p></a>";
      }
    } else {
      echo '<p class="mylist-link">No Record</p>';
    }
  }


  // DO NOT MOVE THIS FILE