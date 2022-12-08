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
    <script src="./libs/search.js"></script>
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
                    <a href=# class="my-list-link" ></a>
                </div>
            </div>


        </div>


    </div>
    <div class = "container-fluid search-filter" style="background-color: var(--color-3)">
        <div class = "search-filter-header">
            <h2>Search by doctor department</h2>
            <br>
        </div style = "margin-top: 5px;" class="row text-center py-5">
            <form action="?page=home" method="post" class = "form-inline">
                <!-- <div class="form-field">
                    <select class="region" name="province">
                        <option value="">Choose District</option>
                        <option value="Quận 1">Quận 1</option>
                        <option value="Quận 3">Quận 3</option>
                        <option value="Quận 4">Quận 4</option>
                        <option value="Quận 5">Quận 5</option>
                        <option value="Quận 6">Quận 6</option>
                        <option value="Quận 7">Quận 7</option>
                        <option value="Quận 8">Quận 8</option>
                        <option value="Quận 10">Quận 10</option>
                        <option value="Quận 11">Quận 11</option>
                        <option value="Quận 12">Quận 12</option>
                        <option value="Quận Bình Tân">Quận Bình Tân</option>
                        <option value="Quận Bình Thạnh">Quận Bình Thạnh</option>
                        <option value="Quận Gò Vấp">Quận Gò Vấp</option>
                        <option value="Quận Phú Nhuận">Quận Phú Nhuận</option>
                        <option value="Quận Tân Bình">Quận Tân Bình</option>
                        <option value="Quận Tân Phú">Quận Tân Phú</option>
                        <option value="Thành phố Thủ Đức">Thành phố Thủ Đức</option>
                        <option value="Huyện Bình Chánh">Huyện Bình Chánh</option>
                        <option value="Huyện Cần Giờ">Huyện Cần Giờ</option>
                        <option value="Huyện Củ Chi">Huyện Củ Chi</option>
                        <option value="Huyện Hóc Môn">Huyện Hóc Môn</option>
                        <option value="Huyện Nhà Bè">Huyện Nhà Bè</option>
                    </select>


                </div> -->
                <div class="form-field"> 
                    <select name ="speciality" class="dept">
                        <option value="">Department</option>
                        <option value="Nhi" >Nhi</option>
                        <option value="Sản phụ khoa" >Sản phụ khoa</option>
                        <option value="Da liễu" >Da liễu</option>
                        <option value="Tiêu Hóa" >Ti&ecirc;u h&oacute;a</option>
                        <option value="Thần kinh" >Thần kinh</option>
                        <option value="Tai Mũi Họng" >Tai Mũi Họng</option>
                        <option value="Cột Sống, Cơ Xương Khớp" >Cột Sống, Cơ Xương Khớp</option>
                        <option value="Mắt, Nhãn Khoa" >Mắt, Nh&atilde;n Khoa</option>
                        <option value="Tiết Niệu Nam Khoa" >Tiết Niệu Nam Khoa</option>
                        <option value="Ung Bướu, Ung Thư" >Ung Bướu, Ung Thư</option>
                        <!--<option value="truyen-nhiem" >Truyền nhiễm</option>-->
                        <option value="Chẩn đoán hình ảnh" >Chẩn đo&aacute;n h&igrave;nh ảnh</option>
                        <option value="Răng, Hàm, Mặt" >Răng, H&agrave;m, Mặt</option>
                        <option value="Phổi, Hô hấp" >Phổi, H&ocirc; hấp</option>
                        <!--<option value="dinh-duong" >Dinh dưỡng</option>-->
                        <option value="Nội tổng quát" >Nội tổng qu&aacute;t</option>
                        <option value="Thần kinh" >T&acirc;m Thần</option>
                        <option value="Tim Mạch" >Tim Mạch</option>
                        <!--<option value="than-tiet-nieu" >Thận - Tiết niệu</option>-->
                        <option value="Chấn thương chỉnh hình - Cột sống" >Chấn thương chỉnh h&igrave;nh - Cột sống</option>
                        <!--<option value="hiem-muon-vo-sinh" >Hiếm muộn - V&ocirc; sinh</option>-->
                        <!--<option value="di-ung-mien-dich" >Dị ứng, Miễn dịch</option>-->
                        <!--<option value="duoc" >Chuy&ecirc;n Khoa Bỏng</option>-->
                        <option value="Vật lý trị liệu, Phục hồi chức năng" >Vật l&yacute; trị liệu, Phục hồi chức năng</option>
                        <option value="Y học cổ truyền" >Y học cổ truyền</option>
                        <!--<option value="giai-phau-benh" >Giải phẩu bệnh</option>-->
                        <option value="Hồi sức, Cấp cứu" >Hồi sức, Cấp cứu</option>
                        <option value="Phẫu Thuật Thẩm Mỹ" >Phẫu Thuật Thẩm Mỹ</option>
                        <!--<option value="gay-me-hoi-suc" >G&acirc;y m&ecirc; hồi sức</option>-->
                        <option value="Ngoại Thần kinh" >Ngoại Thần kinh</option>
                        <!--<option value="nhi-ung-buou" >Nội Tiết</option>-->
                        <option value="Ngoại tổng quát" >Ngoại tổng qu&aacute;t</option>
                        <option value="Tâm Lý" >T&acirc;m L&yacute;</option>
                    </select>
                </div>

                <div class = "button-custom">
                    <button type="submit" name="filter" class="but ">Filter</button>
                </div>
    </div>

    <div class="container-fluid">
    <div class="row text-center py-5">
        <?php
            if(isset($_POST["filter"])){
            $result = $database->searchData($_POST["speciality"]);
            while ($row = mysqli_fetch_assoc($result)){
                card($row['md_id'], $row['md_name'], $row['md_dept'], $row['md_photo'], $row['md_clinic']);
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