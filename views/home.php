<?php
#session_start();
require('libs/cards_display.php');
require('libs/database/databaseimplement.php');

$database = new DatabaseClass(db_name:"mdfinder", table_name:"doctor");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <title>Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <meta name="format-detection" content="telephone=no">

    <link rel="stylesheet" href="../assets/css/utils.css"/>
    <link rel="stylesheet" href="../assets/css/main.css"/>
    
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

    <script src="https://kit.fontawesome.com/57448d1974.js" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>

</head>

<body>
    <?php include "components/header.php"; ?>

    <div class = "search-frame-bg">
        <div class="search">
            <div class= "search-header">
                <h1 style="color: var(--color-3)">Medical Doctor Finder</h1>
                <b>For Your Better Health Care</b>
            </div>
            <br>
            
            <form>
            <div >    
                <input onfocusin = "toggleSearch()" onfocusout = "hideSearch()" 
                style="width: 25vw;" type="search" class="main-search-bar" 
                type="text" placeholder = "Search doctor by name">
            </div>
            </form>

            <!-- drop down list -->
            <div class = "search-list-wrap" id=''>
                <div class="mysearch-list">
                    
                </div>
            </div>


        </div>


    </div>
    <div class = "container-fluid container-bg search-filter" style="background-color: var(--color-3)">
        <div class = "search-filter-header">
            <h2>Search by doctor department</h2>
            <br>
        </div style = "margin-top: 5px;" class="row text-center py-5">
            <form action="" method="post" class = "form-inline">
                <!-- <div class="form-field">
                    <select class="region" name="province">
                        <option value="">Choose District</option>
                        <option value="Qu???n 1">Qu???n 1</option>
                        <option value="Qu???n 3">Qu???n 3</option>
                        <option value="Qu???n 4">Qu???n 4</option>
                        <option value="Qu???n 5">Qu???n 5</option>
                        <option value="Qu???n 6">Qu???n 6</option>
                        <option value="Qu???n 7">Qu???n 7</option>
                        <option value="Qu???n 8">Qu???n 8</option>
                        <option value="Qu???n 10">Qu???n 10</option>
                        <option value="Qu???n 11">Qu???n 11</option>
                        <option value="Qu???n 12">Qu???n 12</option>
                        <option value="Qu???n B??nh T??n">Qu???n B??nh T??n</option>
                        <option value="Qu???n B??nh Th???nh">Qu???n B??nh Th???nh</option>
                        <option value="Qu???n G?? V???p">Qu???n G?? V???p</option>
                        <option value="Qu???n Ph?? Nhu???n">Qu???n Ph?? Nhu???n</option>
                        <option value="Qu???n T??n B??nh">Qu???n T??n B??nh</option>
                        <option value="Qu???n T??n Ph??">Qu???n T??n Ph??</option>
                        <option value="Th??nh ph??? Th??? ?????c">Th??nh ph??? Th??? ?????c</option>
                        <option value="Huy???n B??nh Ch??nh">Huy???n B??nh Ch??nh</option>
                        <option value="Huy???n C???n Gi???">Huy???n C???n Gi???</option>
                        <option value="Huy???n C??? Chi">Huy???n C??? Chi</option>
                        <option value="Huy???n H??c M??n">Huy???n H??c M??n</option>
                        <option value="Huy???n Nh?? B??">Huy???n Nh?? B??</option>
                    </select>


                </div> -->
                <div class="form-field"> 
                    <select name ="speciality" class="dept">
                        <option value="">Department</option>
                        <option value="Nhi" >Nhi</option>
                        <option value="S???n ph??? khoa" >S???n ph??? khoa</option>
                        <option value="Da li???u" >Da li???u</option>
                        <option value="Ti??u H??a" >Ti&ecirc;u h&oacute;a</option>
                        <option value="Th???n kinh" >Th???n kinh</option>
                        <option value="Tai M??i H???ng" >Tai M??i H???ng</option>
                        <option value="C???t S???ng, C?? X????ng Kh???p" >C???t S???ng, C?? X????ng Kh???p</option>
                        <option value="M???t, Nh??n Khoa" >M???t, Nh&atilde;n Khoa</option>
                        <option value="Ti???t Ni???u Nam Khoa" >Ti???t Ni???u Nam Khoa</option>
                        <option value="Ung B?????u, Ung Th??" >Ung B?????u, Ung Th??</option>
                        <!--<option value="truyen-nhiem" >Truy???n nhi???m</option>-->
                        <option value="Ch???n ??o??n h??nh ???nh" >Ch???n ??o&aacute;n h&igrave;nh ???nh</option>
                        <option value="R??ng, H??m, M???t" >R??ng, H&agrave;m, M???t</option>
                        <option value="Ph???i, H?? h???p" >Ph???i, H&ocirc; h???p</option>
                        <!--<option value="dinh-duong" >Dinh d?????ng</option>-->
                        <option value="N???i t???ng qu??t" >N???i t???ng qu&aacute;t</option>
                        <option value="Th???n kinh" >T&acirc;m Th???n</option>
                        <option value="Tim M???ch" >Tim M???ch</option>
                        <!--<option value="than-tiet-nieu" >Th???n - Ti???t ni???u</option>-->
                        <option value="Ch???n th????ng ch???nh h??nh - C???t s???ng" >Ch???n th????ng ch???nh h&igrave;nh - C???t s???ng</option>
                        <!--<option value="hiem-muon-vo-sinh" >Hi???m mu???n - V&ocirc; sinh</option>-->
                        <!--<option value="di-ung-mien-dich" >D??? ???ng, Mi???n d???ch</option>-->
                        <!--<option value="duoc" >Chuy&ecirc;n Khoa B???ng</option>-->
                        <option value="V???t l?? tr??? li???u, Ph???c h???i ch???c n??ng" >V???t l&yacute; tr??? li???u, Ph???c h???i ch???c n??ng</option>
                        <option value="Y h???c c??? truy???n" >Y h???c c??? truy???n</option>
                        <!--<option value="giai-phau-benh" >Gi???i ph???u b???nh</option>-->
                        <option value="H???i s???c, C???p c???u" >H???i s???c, C???p c???u</option>
                        <option value="Ph???u Thu???t Th???m M???" >Ph???u Thu???t Th???m M???</option>
                        <!--<option value="gay-me-hoi-suc" >G&acirc;y m&ecirc; h???i s???c</option>-->
                        <option value="Ngo???i Th???n kinh" >Ngo???i Th???n kinh</option>
                        <!--<option value="nhi-ung-buou" >N???i Ti???t</option>-->
                        <option value="Ngo???i t???ng qu??t" >Ngo???i t???ng qu&aacute;t</option>
                        <option value="T??m L??" >T&acirc;m L&yacute;</option>
                    </select>
                </div>

                <div class = "button-custom">
                    <button type="submit" name="filter" class="but ">Filter</button>
                </div>
    </div>

    <div class="container-fluid container-bg">
    <div class="row text-center py-5">
        <?php
            if(isset($_POST["filter"])){
            $result = $database->searchData($_POST["speciality"]);
            if($result!=null)
            while ($row = mysqli_fetch_assoc($result)){
                card($row['md_id'], $row['md_name'], $row['md_dept'], $row['md_photo'], $row['md_clinic'], $row['md_desc']);
            }
            }
        ?>
    </div>
</div>

    <?php include 'components/footer.php'; ?>

</body>

<script type="text/javascript">
    let searchlist = document.querySelector(".search-list-wrap");
    

    function hideSearch(){
        searchlist.setAttribute('id','');
    }

    function toggleSearch(){
        searchlist.setAttribute('id','open');
    }
</script>
</html>