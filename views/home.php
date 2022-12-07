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
    <!-- <script src="js/cart.js"></script> -->


</head>
<!--Body section-->
<body>
<!--Navbar-->

<!--Navigation bar-->


<body>
    <?php include "components/header.php"; ?>

    <div class = "search-frame-bg">
        <div class="search">
            <div class= "search-header">
                <h1>Medical Doctor Finder</h1>
                <b>For Your Better Health Care</b>
            </div>
            <br>
            
            </form>
            <div >    
                <input style="width: 25vw;" type="search" class="main-search-bar" 
                type="text" placeholder = "Search..">
            </div>
        </div>


    </div>
    <div class = "container-fluid search-filter bg">
        <div class = "search-filter-header">
            <h2>You Can Also Use This For Advance Searching</h2>
            <br>
        </div style = "margin-top: 5px;">
            <form action="" method="post" class = "form-inline">
                <div class="form-field">
                    <select class="select" name="province">
                        <option value="ca-nuoc">Choose Province</option>
                        <option value="Hà Nội">Hà Nội</option>
                        <option value="Hà Giang">Hà Giang</option>
                        <option value="Cao Bằng">Cao Bằng</option>
                        <option value="Bắc Kạn">Bắc Kạn</option>
                        <option value="Tuyên Quang">Tuyên Quang</option>
                        <option value="Lào Cai">Lào Cai</option>
                        <option value="Điện Biên">Điện Biên</option>
                        <option value="Lai Châu">Lai Châu</option>
                        <option value="Sơn La">Sơn La</option>
                        <option value="Yên Bái">Yên Bái</option>
                        <option value="Hoà Bình">Hoà Bình</option>
                        <option value="Thái Nguyên">Thái Nguyên</option>
                        <option value="Lạng Sơn">Lạng Sơn</option>
                        <option value="Quảng Ninh">Quảng Ninh</option>
                        <option value="Bắc Giang">Bắc Giang</option>
                        <option value="Phú Thọ">Phú Thọ</option>
                        <option value="Vĩnh Phúc">Vĩnh Phúc</option>
                        <option value="Bắc Ninh">Bắc Ninh</option>
                        <option value="Hải Dương">Hải Dương</option>
                        <option value="Hải Phòng">Hải Phòng</option>
                        <option value="Hưng Yên">Hưng Yên</option>
                        <option value="Thái Bình">Thái Bình</option>
                        <option value="Hà Nam">Hà Nam</option>
                        <option value="Nam Định">Nam Định</option>
                        <option value="Ninh Bình">Ninh Bình</option>
                        <option value="Thanh Hóa">Thanh Hóa</option>
                        <option value="Nghệ An">Nghệ An</option>
                        <option value="Hà Tĩnh">Hà Tĩnh</option>
                        <option value="Quảng Bình">Quảng Bình</option>
                        <option value="Quảng Trị">Quảng Trị</option>
                        <option value="Thừa Thiên Huế">Thừa Thiên Huế</option>
                        <option value="Đà Nẵng">Đà Nẵng</option>
                        <option value="Quảng Nam">Quảng Nam</option>
                        <option value="Quảng Ngãi">Quảng Ngãi</option>
                        <option value="Bình Định">Bình Định</option>
                        <option value="Phú Yên">Phú Yên</option>
                        <option value="Khánh Hòa">Khánh Hòa</option>
                        <option value="Ninh Thuận">Ninh Thuận</option>
                        <option value="Bình Thuận">Bình Thuận</option>
                        <option value="Kon Tum">Kon Tum</option>
                        <option value="Gia Lai">Gia Lai</option>
                        <option value="Đắk Lắk">Đắk Lắk</option>
                        <option value="Đắk Nông">Đắk Nông</option>
                        <option value="Lâm Đồng">Lâm Đồng</option>
                        <option value="Bình Phước">Bình Phước</option>
                        <option value="Tây Ninh">Tây Ninh</option>
                        <option value="Bình Dương">Bình Dương</option>
                        <option value="Đồng Nai">Đồng Nai</option>
                        <option value="Bà Rịa - Vũng Tàu">Bà Rịa - Vũng Tàu</option>
                        <option value="Hồ Chí Minh">Hồ Chí Minh</option>
                        <option value="Long An">Long An</option>
                        <option value="Tiền Giang">Tiền Giang</option>
                        <option value="Bến Tre">Bến Tre</option>
                        <option value="Trà Vinh">Trà Vinh</option>
                        <option value="Vĩnh Long">Vĩnh Long</option>
                        <option value="Đồng Tháp">Đồng Tháp</option>
                        <option value="An Giang">An Giang</option>
                        <option value="Kiên Giang">Kiên Giang</option>
                        <option value="Cần Thơ">Cần Thơ</option>
                        <option value="Hậu Giang">Hậu Giang</option>
                        <option value="Sóc Trăng">Sóc Trăng</option>
                        <option value="Bạc Liêu">Bạc Liêu</option>
                        <option value="Cà Mau">Cà Mau</option>
                    </select>


                </div>
                <div class="form-field">
                    <select name ="speciality" class="select s1">
                        <option value="tat-ca-chuyen-khoa">Department</option>
                            <option value="nhi" >Nhi</option>
                            <option value="san-phu" >Sản phụ khoa</option>
                            <option value="da-lieu" >Da liễu</option>
                            <option value="tieu-hoa-gan-mat" >Ti&ecirc;u h&oacute;a</option>
                            <option value="than-kinh" >Thần kinh</option>
                            <option value="tai-mui-hong" >Tai Mũi Họng</option>
                            <option value="co-xuong-khop" >Cột Sống, Cơ Xương Khớp</option>
                            <option value="nhan-khoa" >Mắt, Nh&atilde;n Khoa</option>
                            <option value="nam-khoa" >Tiết Niệu Nam Khoa</option>
                            <option value="ung-buoi" >Ung Bướu, Ung Thư</option>
                            <option value="truyen-nhiem" >Truyền nhiễm</option>
                            <option value="chuan-doan-hinh-anh" >Chẩn đo&aacute;n h&igrave;nh ảnh</option>
                            <option value="rang-ham-mat" >Răng, H&agrave;m, Mặt</option>
                            <option value="ho-hap" >Phổi, H&ocirc; hấp</option>
                            <option value="dinh-duong" >Dinh dưỡng</option>
                            <option value="noi-tiet" >Nội tổng qu&aacute;t</option>
                            <option value="tam-than" >T&acirc;m Thần</option>
                            <option value="tim-mach" >Tim Mạch</option>
                            <option value="than-tiet-nieu" >Thận - Tiết niệu</option>
                            <option value="chan-thuong-chinh-hinnh-cot-song" >Chấn thương chỉnh h&igrave;nh - Cột sống</option>
                            <option value="hiem-muon-vo-sinh" >Hiếm muộn - V&ocirc; sinh</option>
                            <option value="di-ung-mien-dich" >Dị ứng, Miễn dịch</option>
                            <option value="duoc" >Chuy&ecirc;n Khoa Bỏng</option>
                            <option value="vat-li-tri-lieu-phuc-hoi-chuc-nang" >Vật l&yacute; trị liệu, Phục hồi chức năng</option>
                            <option value="y-hoc-co-truyen" >Y học cổ truyền</option>
                            <option value="giai-phau-benh" >Giải phẩu bệnh</option>
                            <option value="hoi-suc-cap-cuu" >Hồi sức, Cấp cứu</option>
                            <option value="phau-thuat-tham-my" >Phẫu Thuật Thẩm Mỹ</option>
                            <option value="gay-me-hoi-suc" >G&acirc;y m&ecirc; hồi sức</option>
                            <option value="ngoai-than-kinh" >Ngoại Thần kinh</option>
                            <option value="nhi-ung-buou" >Nội Tiết</option>
                            <option value="ngoai-tim-mach" >Ngoại tổng qu&aacute;t</option>
                            <option value="tam-ly" >T&acirc;m L&yacute;</option>
                            </select>
                </div>
                <div class="form-field">
                    <input class="select" placeholder="Doctor Id" name="doctor_id" 
                    style="width: 100%;padding: 5px;border: 1px solid #848991;border-radius: 3px;
                    color: black;background-color: rgba(255, 255, 255, 0.8);opacity: 0.6;height: 40px;">
                </div>
                <div class = "button-custom">
                    <button type="submit" class="but ">Filter</button>
                </div>
    </div>

    <?php include 'components/footer.php'; ?>

</body>
</html>