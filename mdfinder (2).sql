-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Dec 09, 2022 at 02:34 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mdfinder`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `ap_id` int(32) NOT NULL,
  `ap_date_time` datetime DEFAULT NULL,
  `ap_desc` varchar(512) DEFAULT NULL,
  `ap_status` varchar(50) NOT NULL,
  `p_id` int(32) NOT NULL,
  `md_id` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `md_id` int(32) NOT NULL,
  `md_name` varchar(41) DEFAULT NULL,
  `md_dept` varchar(50) DEFAULT NULL,
  `md_clinic` varchar(600) DEFAULT NULL,
  `md_address` varchar(100) DEFAULT NULL,
  `md_photo` varchar(100) DEFAULT NULL,
  `md_desc` varchar(1300) DEFAULT NULL,
  `md_degree` varchar(500) DEFAULT NULL,
  `user_id` int(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`md_id`, `md_name`, `md_dept`, `md_clinic`, `md_address`, `md_photo`, `md_desc`, `md_degree`, `user_id`) VALUES
(0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1, 'Bác sĩ Nguyễn Bá Thông', 'Chẩn đoán hình ảnh', 'Bệnh Viện đa khoa quốc tế Nam Sài Gòn', 'Hồ Chí Minh', 'public/images/doctor/drnguyenbathong.jpg', 'CHuyên khoa chuẩn đoán hình ảnh tại Bệnh Viện đa khoa quốc tế Nam Sài Gòn', 'Học Viện Quân Y', NULL),
(2, 'Bác sĩ NGUYỄN DUY PHƯƠNG', 'Chấn thương chỉnh hình - Cột sống', 'Bệnh viện quận Bình Thạnh', 'Hồ Chí Minh', 'public/images/doctor/285188303bsnguyenduyphuong.jpg', '10 năm Chuyên khoa chuyên khoa ngoại chấn thương chỉnh hình', 'ĐH Y Dược TP.HCM', NULL),
(3, 'Bác sĩ  Quế Dậu', 'Chấn thương chỉnh hình - Cột sống', 'Bệnh Viên Sai Sòn-ITO', 'Hồ Chí Minh', 'public/images/doctor/bsquedau1.jpg', '10 năm Chuyên khoa chấn thương chỉnh hình', 'ĐH Y Dược TP.HCM', NULL),
(4, 'Bác sĩ Mào Thạch Sơn', 'Chấn thương chỉnh hình - Cột sống', 'CHuyên khoa chấn thương chỉnh hình tại Bệnh viện Triều An', 'Hồ Chí Minh', 'public/images/doctor/drmaotrachson.jpg', 'CHuyên khoa chấn thương chỉnh hình tại Bệnh viện Triều An', 'Học Viện Quân Y', NULL),
(5, 'Bác sĩ Trần Quốc Tuấn', 'Chấn thương chỉnh hình - Cột sống', 'Bệnh viện Đa khoa Tâm Anh HCM', 'Hồ Chí Minh', 'public/images/doctor/drtranquoctuan1.jpg', 'CHuyên khoa chấn thương chỉnh hình tại Bệnh viện đa khoa Tâm Anh HCM. CHuyên khám và điều trị các bệnh  Hậu phẫu chấn thương sọ não, cơ xương khớp, Di chứng Đột quỵ, Bệnh lý thần kinh- cơ, Chấn thương thể thao...\n- Chích gân, khe khớp.', 'Đại học y dược HCM', NULL),
(6, 'Bác sĩ, Thạc sĩ LÊ VĂN TƯ', 'Chấn thương chỉnh hình - Cột sống', '2001-2008	BÁC SĨ CTCH	BV CHỢ RẪY\n2009-2012	GĐ PK ĐK VIETSIN	TPHCM\n2013-2016	PGĐ CHUYÊN MÔN	BV TÂM TRÍ SÀI GÒN\n2017-NAY	BS CTCH\nGIẢNG VIÊN KHOA Y	PK QUỐC TẾ EXSON\nĐH NGUYỄN TẤT THÀNH', 'Hồ Chí Minh', 'public/images/doctor/drlevantu.jpg', 'Chuyên khoa chính	CHẤN THƯƠNG CHỈNH HÌNH, Học vị	THẠC SĨ BÁC SĨ, Chức vụ	THSBS CTCH-PKQT EXSON, Giảng viên khoa Y-ĐH NGUYỄN TẤT THÀNH, HỢP TÁC CHUYÊN MÔN: BV TÂM TRÍ SÀI GÒN, BV STO PHƯƠNG ĐÔNG, BV BƯU ĐIỆN, BV NAM SÀI GÒN… Chuyên khám và điều trị các bệnh về CHẤN THƯƠNG CƠ, XƯƠNG, KHỚP, DÂY CHẰNG	ĐAU, SƯNG BẦM, BIẾN DẠNG, MẤT VẬN ĐỘNG….SAU CHẤN THƯƠNG, TRẬT KHỚP, DÂY CHẰNG\nBỆNH LÍ CƠ XƯƠNG KHỚP: THOÁI HÓA KHỚP, VIÊM GÂN, VIÊM KHỚP, HOẠI TỬ CHỎM XƯƠNG ĐÙI….	ĐAU CƠ, XƯƠNG, KHỚP, DÂY CHẰNG KHÔNG DO CHẤN THƯƠNG', '1995-2001	BÁC SĨ ĐA KHOA	ĐH Y DƯỢC TP.HCM\n2006-2008	THS.BS CTCH	ĐH Y DƯỢC TP.HCM', NULL),
(7, 'Bác sĩ TRƯƠNG VIẾT THÔNG', 'Chấn thương chỉnh hình - Cột sống', '1- Mọi người chuẩn bị sẵn giấy bút, ghi sẵn các câu hỏi hoặc các vấn đề thắc mắc của mình ra giấy để hỏi Bs Thông.\n2- Nếu có X Quang mới chụp hay giấy tờ toa thuốc cũ thì chụp hình và gửi để Bs xem trước. Có thể soạn sẵn các câu hỏi trên mục 1, và gửi trước.\n3- Đăng kí  => Hẹn giờ khám và Bs sẽ xác nhận giờ thuận tiện và gọi qua video call.\n4- Nên ở nơi yên tĩnh và sóng wifi mạnh hoặc 3G ổn định. Điện thoại có loa ngoài hoặc đeo tai nghe.\n5- Nếu không rành về điện thoại có thể nhờ người thân trợ giúp.\nThương mến ❤️\n\nBs Trương Viết Thông', 'Hồ Chí Minh', 'public/images/doctor/drtruongvietthong.jpg', 'Đứt dây chằng chéo trước khớp gối', 'Đại học y dược HCM', NULL),
(8, 'Bác sĩ, Tiến sĩ Huỳnh Văn Khoa', 'Cột Sống, Cơ Xương Khớp', 'Bệnh viện Chợ Rẫy', 'Hồ Chí Minh', 'public/images/doctor/743717778bshuynhvankhoa.jpg', '10 năm Chuyên khoa cơ xương khớp chuyên xâu', 'học tiến sĩ về cơ xương khớp chuyên xâu tại Pháp', NULL),
(9, 'Bác sĩ Nguyễn Ngọc Thôi', 'Cột Sống, Cơ Xương Khớp', 'Bệnh viện Đại Học Y Dược Hồ Chí Minh', 'Hồ Chí Minh', 'public/images/doctor/drnguyenngocthoi.jpg', 'Chuyên cột sống, thoát vị, thoái hoá cột sống, các bệnh lý cột sống, thoái hoá khớp, chấn thương thể thao, gãy xương, trật khớp, dây chằng tại Bệnh viện Đại Học Y Dược Hồ Chí Minh', 'Đại học y dược HCM', NULL),
(10, 'Bác sĩ BÙI XUÂN HUÂN', 'Cột Sống, Cơ Xương Khớp', 'Giám Đốc tại TMV SIAM THÁI LAN\nDoctor tại Bệnh Viện Tân Bình\nTừng làm BÁC SỸ tại Bệnh viện Phú Nhuận\nTừng làm Bác sĩ tại Bệnh Viện Đa Khoa Thái An\nTừng làm BÁC SỸ tại Bệnh Viện STO Phương Đông', 'Hồ Chí Minh', 'public/images/doctor/drbuixuanhuan.jpg', 'Bs khoa Ngoại PT: CTCH, THAY KHỚP, NỘI SOI KHỚP, Pt TVĐĐ CỘT SỐNG, PT TẠO HÌNH THẨM MỸ', 'Học Ngoại Thần Kinh tại BV Chợ Rẫy\nHọc Phẫu Thuật Tạo Hình Thẩm Mỹ tại ĐH Y Hà Nội\nHọc Gây mê hồi sức tại ĐH Y Dược TPHCM\nHọc Đại học Y Khoa tại Đại Học Y Thái Bình', NULL),
(11, 'Bác sĩ Phạm Thị Thanh Dung', 'Cột Sống, Cơ Xương Khớp', 'Giám đốc phòng khám yhct Nhân Ái', 'Hồ Chí Minh', 'public/images/doctor/drphamthithanhdung.jpg', 'Chuyên khoa Y học cổ truyền, vật lý trị liệu, \n\n\n\nGiám đốc phòng khám yhct Nhân Ái, chuyên khám và điều trị\n\nThoát vị đĩa đệm, thoái hóa cột sống, các bệnh lý cơ xương khớp, suy nhược cơ thể, stress, rối loạn lo âu điều trị đông tây y kết hợp', 'Đại học y dược HCM', NULL),
(12, 'Thạc sĩ BS CK2 DƯƠNG MINH TRÍ', 'Cột Sống, Cơ Xương Khớp', 'Bệnh viện Nhân Dân Gia Định', 'Hồ Chí Minh', 'public/images/doctor/drnguyenminhtri.jpg', 'hơn 15 năm kinh nghiệm, chuyên sâu bệnh Cơ Xương Khớp: Viêm khớp dạng thấp, gút, thoái hóa khớp, ngón tay lò xo, đau vai, đau thần kinh tọa, thoái hóa cột sống lưng- cổ, tiêm kháng viêm vào khớp-gân, tiêm thần kinh tọa, truyền thuốc loãng xương, rút dịch chữa các khớp viêm sưng...\n\n - Do Thạc Sĩ BS CK2 DƯƠNG MINH TRÍ, là phó trưởng khoa nội Cơ Xương Khớp Bệnh Viện Nhân Dân Gia Định phụ trách, trực tiếp khám và điều trị. Bs Trí tu nghiệp chuyên sâu cơ xương khớp tại: Mỹ, Đức, Hà Lan, Úc, Bồ Đào Nha...Là Ủy viên hội thấp khớp học, Ủy viên hội khớp tự miễn.', 'Đại học y dược HCM', NULL),
(13, 'Bác sĩ TRẦN XUÂN ANH', 'Cột Sống, Cơ Xương Khớp', 'Bệnh viện Đa khoa Tâm Anh TP.HCM', 'Hồ Chí Minh', 'public/images/doctor/drtranxuananh.jpg', 'BS.CKI Trần Xuân Anh tốt nghiệp bác sĩ Đa khoa năm 2009 tại Đại học Y Dược Huế. Sau khi ra trường, bác sĩ Xuân Anh tiếp tục học sau đại học tại Bệnh viện Chợ Rẫy và Đại học Y Dược TP.HCM. Từ năm 2014-2019, bác sĩ Xuân Anh công tác tại Bệnh viện Đa khoa Xuyên Á TP.HCM, Bệnh viện ITO Đồng Nai và đã phẫu thuật thành công các ca bệnh lý, chấn thương cột sống, góp phần đem lại sức khỏe, niềm vui cho hàng nghìn bệnh nhân. Trong quá trình làm việc, bác sĩ cũng đã trải qua nhiều đợt tập huấn chuyên sâu trong nước và nước ngoài như Singapore, Mỹ, Hàn Quốc…', 'Đại học Y Dược Huế', NULL),
(14, 'ThS BS CK II Nguyễn Ngọc Thạch', 'Cột Sống, Cơ Xương Khớp', 'Bệnh viện chấn thương chỉnh hình HCM', 'Hồ Chí Minh', 'public/images/doctor/drnguyenngocthach1.jpg', 'Khám và chữa bệnh về Cơ xương khớp, cột sống, bệnh lý thần kinh ngoại biên, tê tay, tê chân, chấn thương thể thao, đứt dây chằng chéo ở gối,Phẫu thuật cho bệnh nhân tại các bệnh viện theo yêu cầu và lịch hẹn của bệnh nhân cụ thể. Các phẫu thuật thường được tiến hành: Gãy xương- mổ kết hợp xương, mổ vạt da tái tạo mất da và mô mềm do tai nạn lao động, tai nạn giao thông, mổ vi phẫu nối thần kinh, mổ vi phẫu nối mạch máu bị tai nạn, mổ nội soi tái tạo dây chằng chéo ở gối, mổ thay khớp…\n\nvà Các bệnh lý nằm ở vùng chi trên như gãy xương cánh tay, gãy xương cẳng tay, bàn tay, các bệnh lý viêm gân như tennis elbow, hội chứng ống cổ tay….\n, Các bệnh lý nằm ở vùng chi dưới như gãy xương đùi, gãy mâm chày, gãy xương cẳng chân, gãy 2 mắt cá, và các bệnh lý viêm gân, bong gân…\nCột sống: Các bệnh lý về thoái hóa cột sống cổ, cột sống thắt lưng gây đau, tê tay, tê chân, thoát vị đĩa đệm…\nChấn thương thể thao: Các bệnh lý liên quan tới hoạt động thể thao như đứt dây chằng chéo ở gối, rách sụn chêm, bong gân…\nVi phẫu tạo hình thẩm mỹ: Các bệnh lý liên quan tới chấn thương đứt thần kinh, đứt mạch máu cần nối bằng kính lúp, kính hiển vi. Các tổn thương mất da ở tay, chân cần phải được ghép da, làm vạt da để che phủ lại. Các vấn đề liên quan tới thẩm mỹ ở mắt, mũi, ngực, bụng.', 'Đại học y dược HCM', NULL),
(15, 'Bác sĩ TRẦN QUỐC PHONG', 'Cột Sống, Cơ Xương Khớp', 'Bệnh viện quận Bình Tân HCM', 'Hồ Chí Minh', 'public/images/doctor/drtranquocphong.jpg', 'Kinh nghiệm về cấp cứu , phòng khám tim mạch, hô hấp và đọc ct scan ,MRI\nNội khoa cơ xương khớp', 'Tốt nghiệp:đại học y dược tphcm,  và chuyên khoa 1 tại học viện quân y', NULL),
(16, 'Bác sĩ CK2 Võ Châu Duyên', 'Cột Sống, Cơ Xương Khớp', 'Trưởng khoa Chấn Thương Chỉnh Hình, bệnh viện Nguyễn Tri Phương', 'Hồ Chí Minh', 'public/images/doctor/drvochauduyen.jpg', 'Trưởng khoa Chấn Thương Chỉnh Hình, bệnh viện Nguyễn Tri Phương\nTrưởng đơn vị Y học Thể thao bệnh viện Nguyễn Tri Phương\nPhẫu thuật viên thay khớp và nội soi khớp bệnh viện Columbia Asia – Bình Dương\nTu nghiệp phẫu thuật nội soi khớp và thay khớp nhân tạo tại Thái Lan, Hàn Quốc\nChủ trì các nghiên cứu chuyên sâu về thay khớp gối tại bệnh viện Nguyễn Tri Phương', 'Tốt nghiệp bác sĩ đa khoa, Đại Học Y Dược Tp. HCM năm 2008, \n	Tốt nghiệp thạc sỹ chuyên ngành CTCH, Đại Học Y Dược Tp. HCM năm 2012\nvà 	Tốt nghiệp bác sĩ chuyên khoa cấp II, ĐH Y Khoa Phạm Ngọc Thạch năm 2020.', NULL),
(17, 'Bác sĩ Trần Thị Đoan Trang', 'Da liễu', 'Eri International Clinic', 'Hồ Chí Minh', 'public/images/doctor/975408294bstranthidoantrang.jpg', '10 năm chuyên khoa 1 Da Liễu, dịch vụ thẩm mỹ nội khoa', 'ĐH Y khoa Phạm Ngọc Thạch TP.HCM', NULL),
(18, 'Thạc sĩ, Bác sĩ Ngọc Trai', 'Da liễu', 'Đại học Y khoa Phạm Ngọc Thạch và \n\nBệnh viện Da Liễu thành phố Hồ Chí Minh', 'Hồ Chí Minh', 'public/images/doctor/drngoctrai.jpg', 'Thạc sĩ-Bác sĩ chuyên khoa Da liễu\nGiảng viên Đại học Y Khoa Phạm Ngọc Thạch', 'Bác sĩ nội trú, BS. CK1, Thạc sĩ tại Đại học Y dược TP. HCM', NULL),
(19, 'Bác sĩ Vi Mạnh Linh', 'Da liễu', 'Bác sĩ da liễu tại Phòng Khám Da Liễu Sài Gòn\nViện Thẩm Mỹ Jollie D\n Viện Sắc Đẹp KeangNam Korea\nBác sĩ thẩm mỹ tại Thẩm mỹ MIA', 'Hồ Chí Minh', 'public/images/doctor/drvimanhlinh.jpg', 'Nhiều năm kinh nghiêm về da liễu thẩm mỹ tại Bác sĩ da liễu tại Phòng Khám Da Liễu Sài Gòn', 'Đại học y dược HCM và Bệnh viện Da Liễu thành phố Hồ Chí Minh', NULL),
(20, 'Bác Sĩ Trần Thanh Trường', 'Da liễu', 'Thẩm mỹ viện CK Beauty và Cosany MD Clinic và Bác sĩ tại khoa Ngoại-Laser-Thẩm mỹ bệnh viện da liễu Quảng Nam', 'Hồ Chí Minh', 'public/images/doctor/drbstruong.jpg', 'Chuyên thẩm mỹ làm đệp tại Thẩm mỹ viện CK Beauty và Cosany MD Clinic', 'Bệnh viện Da Liễu thành phố Hồ Chí Minh \nvà \nĐại Học Y Dược TP Hồ Chí Minh', NULL),
(21, 'Bác sĩ Nguyễn Đức Quyền', 'Da liễu', 'Phòng Khám Platinum spa and clinic', 'Hồ Chí Minh', 'public/images/doctor/drnguyenducquyen.jpg', 'Chuyên khoa da liễu thẩm mỹ tại  tại Phòng Khám Platinum spa and clinic', 'Học Bác sĩ Đa Khoa tại Hanoi Medical University', NULL),
(22, 'Bác sĩ Nguyễn Văn Mạnh', 'Da liễu', 'Phòng khám chuyên khoa da liễu Việt Pháp', 'Hồ Chí Minh', 'public/images/doctor/drnguyenvanmanh.jpg', '20 năm  bệnh viện Chợ rẫy', 'Đại học y Hà Nội', NULL),
(23, 'Bác sĩ CK1 Nguyễn Phương Thảo', 'Da liễu', 'Phòng khám chuyên khoa da liễu- thẩm mỹ Pensilia', 'Hồ Chí Minh', 'public/images/doctor/drnguyenphuongthao.jpg', 'Chuyên khoa da liễu tại Phòng khám chuyên khoa da liễu- thẩm mỹ Pensilia', 'Đai học y dược TP HCM', NULL),
(24, 'Bác sĩ Lương Ngọc Khải Hoàn', 'Da liễu', 'Phòng Khám Da Liễu Dr Huệ Clinic', 'Hồ Chí Minh', 'public/images/doctor/drluongngockhaihoan.jpg', 'Chuyên Khoa Da Liễu \ntại \nPhòng Khám Da Liễu Dr Huệ Clinic chuyên về\nBệnh lý da liễu, các vấn đề thẩm mỹ nội khoa.', 'Đại Học Y Dược Cần Thơ. đang học Thạc Sĩ Da Liễu 2020-2022 - Đại Học Y Dược TP.HCM', NULL),
(25, 'Bác sĩ Trà Thị Nhật Mai', 'Da liễu', 'Bệnh viện Đa khoa Hoàn Hảo', 'Hồ Chí Minh', 'public/images/doctor/drtrathinhatmai.jpg', 'Các bệnh thường khám: mụn, nám, viêm da cơ địa, viêm da tiếp xúc, viêm da tiết bã, lang ben, nấm da, vảy nến, rụng tóc, các bệnh lí tăng giảm sắc tố, bệnh lây truyền qua đường tình dục, ...\n \nBác sĩ Trà Thị Nhật Mai tốt nghiệp đại học Y Dược TP. Hồ Chí Minh, hiện đang khám chữa bệnh chuyên khoa Da liễu. Với chuyên môn vững vàng, nhiều năm kinh nghiệm và sự ân cần, quan tâm, bác sĩ Trà Thị Nhật Mai được bệnh nhân tin tưởng lựa chọn để được thăm khám và chữa trị, tư vấn.', 'Đại học Y Dược TP. Hồ Chí Minh', NULL),
(26, 'Bác sĩ Chu Thị Mùi', 'Da liễu', 'Bệnh viện quận Bình Thạnh', 'Hồ Chí Minh', 'public/images/doctor/drchuthimui.jpg', 'có bằng laser và tế bào gốc kèm theo , ngoài ra còn còn chứng chỉ bệnh nghề nghiệp . Nơi công tác là Bv quận Bình Thạnh , ngoài ra còn hợp tác tmv bb Thanh Mai , có phòng khám ở nhà ngoài giờ nữa . Khám các bệnh về da liễu , các bệnh lây qua đường tình dục . Có kinh nghiệm 5 năm điều trị các bệnh về da liễu nội khoa , da liễu thẩm Mỹ', 'Đại Học Y Hà Nội', NULL),
(27, 'Bác sĩ Bùi Thị Trang', 'Da liễu', 'Thẩm mỹ MEDDI', 'Hồ Chí Minh', 'public/images/doctor/drbuithitrang.jpg', 'Bệnh da liễu: Bệnh zona ,Phát ban ,Bệnh vẩy nến, mụn , nám,Nấm da chân, vảy phấn hồng,Mụn cóc,Tiết bã sừng', 'Đại học y Hải Phòng', NULL),
(28, 'Bác sĩ Võ Thị Phương', 'Da liễu', 'Bệnh viện quận Thủ Đức', 'Hồ Chí Minh', 'public/images/doctor/drvothiphuong1.jpg', 'Các bệnh thường khám: mụn trứng cá, viêm da tiếp xúc, viêm da cơ địa, dị ứng, kê toa dược mỹ phẩm,', 'Đại học y Phạm Ngọc Thạch', NULL),
(29, 'PGS. TS. BS CHÂU VĂN TRỞ', 'Da liễu', 'Phó trưởng Phòng khám Đa khoa Trường ĐH Y khoa Phạm Ngọc Thạch\n\nHơn 15 năm kinh nghiệm trong chuyên khoa Da liễu\n\nBác sĩ khám và điều trị tại Phòng V.I.P Bệnh viện Da Liễu TP.HCM', 'Hồ Chí Minh', 'public/images/doctor/drchauvancho.jpg', 'Chuyên khám, điều trị, tư vấn các vấn đề về Da liễu – Thẩm mỹ nội khoa:\n* Ngoài da như: Mụn trứng cá, chàm, vảy nến, nấm da, ghẻ ngứa…\n\n* Bệnh lý lây qua đường tình dục như: Lậu, giang mai, herpes sinh dục…\n\n* Vấn đề về thẩm mỹ như: Lão hóa da, sạm da, da mỏng, da nhạy cảm, dãn mạch, sẹo lồi, sẹo rổ…\n\nQuá trình công tác\nGiảng dạy lâm sàng cho sinh viên Đại học và học viên Sau đại học  tại Bệnh viện Da Liễu TPHCM\n\nTrưởng Bộ môn Da liễu trường Đại học Y khoa Phạm Ngọc Thạch', 'Năm 2001 tốt nghiệp Bác sĩ đa khoa tại ĐH Y Dược TPHCM.\n\nNăm 2004 tốt nghiệp Bác sĩ nội trú Da liễu.\n\nNăm 2008 tốt nghiệp Thạc sĩ Da liễu.\n\nNăm 2014 tốt nghiệp Tiến sĩ Da liễu tại ĐH Y Hà Nội.\n\nNăm 2020 được hội đồng giáo sư nhà nước công nhận PGS.', NULL),
(30, 'Bác sĩ Nguyễn Tùng Lâm', 'Hồi sức, Cấp cứu', 'Bệnh viện đa khoa Tân Hưng.', 'Hồ Chí Minh', 'public/images/doctor/drvutunglam.jpg', 'Chuyên khoa: Hồi sức cấp cứu\n\ntại Bệnh viện đa khoa Tân Hưng. \nKinh nghiệm: học hồi sức cấp cứu bệnh viện chợ rẫy, đang làm  tại khoa gay mê vs hồi sức sau mổ\nCó kinh nghiệm khám điều trị các bệnh nội khoa nguoi  lớn tim mạch, hô hấp,  chăm sóc giảm đau  sau phẫu thuật .', 'Trường Khoa Y Đại học Võ Trường Toản', NULL),
(31, 'Bác sĩ Bùi Thị Minh Trang', 'Mắt, Nhãn Khoa', 'Bệnh viện  Mắt TP.HCM', 'Hồ Chí Minh', 'public/images/doctor/drbuithiminhtrang.jpg', 'Tư vấn điều trị các bệnh gây ngứa, đỏ mắt thường gặp: viêm kết mạc, viêm bờ mi, chắp lẹo mi mắt…. mỏi mắt, chảy nước mắt ở những người làm việc lâu, những người lớn tuổi\nTư vấn xử trí ban đầu các trường hợp: dị vật kết giác mạc do đi đường hoặc trong lúc làm việc, bỏng do hóa chất, do tia lửa hàn…, các chấn thương tại mắt \nTư vấn hướng xử trí với các trường hợp nhìn mờ: cườm nước glôcôm, cườm khô đục thể thủy tinh, một số bệnh lý dịch kính võng mạc tắc mạch máu võng mạc, xuất huyết pha lê thể, thoái hóa dịch kính, võng mạc do tiểu đường, do tăng huyết áp…\nTư vấn theo dõi những biến chứng mắt đối với những bệnh nhân có bệnh nền: Tăng huyết áp, Đái tháo đường tại Bệnh viện  Mắt TP.HCM', 'ĐH Y khoa Phạm Ngọc Thạch', NULL),
(32, 'Bác sĩ BÙI TRUNG HẬU', 'Mắt, Nhãn Khoa', 'Bệnh viện đa khoa Sài Gòn', 'Hồ Chí Minh', 'public/images/doctor/drbuitrunghau.jpg', '2016 - 2020: Bs điều trị , Bệnh viện đa khoa Sài Gòn.                                                                                                                                                          2020-nay : Bs hợp tác chuyên môn Bv quận 10 , Bv mắt Sài Gòn , Bv mắt Việt Nga , Bv mắt Hoàn Mỹ', '2009 - 2015: Tốt nghiệp Trường đại học Y Dược TPHCM, chuyên ngành BS Đa khoa\n2017 - 2019: Tốt nghiệp Trường đại học Y khoa Phạm Ngọc Thạch, chuyên ngành BS Ck I Nhãn khoa.   \n2020-nay : đang theo học chuyên ngành Bs CK II Nhãn khoa tại đại học Y Khoa Phạm Ngọc Thạch.     \n2017-nay : tham gia các khoá học chuyên sâu như siêu âm nhãn khoa , khúc xạ nhãn khoa , Phẫu thuật PHACO , phẫu thuật Khúc xạ , laser YAG , Cận lâm sàng chuyên sâu nhãn khoa', NULL),
(33, 'Bác sĩ  Trần Đức Anh', 'Ngoại Thần kinh', 'Viện ngoại khoa Laser', 'Hồ Chí Minh', 'public/images/doctor/969794204bstranducanh.jpg', '10 năm Chuyên khoa Ngoại thần kinh', 'First Moscow State Medical University', NULL),
(34, 'Bác sĩ Trịnh Quang Nghĩa', 'Ngoại tổng quát', 'Đại Học Y Dược', 'Hồ Chí Minh', 'public/images/doctor/drtrinhquangnghia.jpg', 'Chuyên khoa ngoại tổng quát', 'Đại học Y dược TP. HCM', NULL),
(35, 'Bác sĩ Ck2 Võ Đức Hiếu', 'Nhận Đặt khám Online', 'Chuyên sâu về ung thư vú, ung thư đường tiêu hoá, ung thư hệ niệu sinh dục, ung thư và bệnh lý tuyến giáp bướu cổ và Các bệnh lý Ung Thư khác và y học thường thức: đều có thể tư vấn những điểm chính và nguyên tắc trong kế hoạch điều trị, tầm soát phát hiện sớm ung thư, phòng ngừa các loại ung thư phổ biến,', 'Hồ Chí Minh', 'public/images/doctor/drvoduchieu.jpg', 'Bác Sĩ Y Đa Khoa -General Doctor tại Pham Ngoc Thach University of Medicine\nHọc Chuyên khoa cấp II Ung thư học tại DHYDTPHCM - universety of medicine & pharmacy at HCMC\nHọc Chuyên khoa cấp II- Tổ chức quản lý y tế tại Trường Đại học Y tế công cộng', '', NULL),
(36, 'Bác sĩ Nguyễn Tuấn Khiêm', 'Nhi', 'Đại học y khoa Phạm Ngọc Thạch và Bệnh viện nhi đồng 2 HCM', 'Hồ Chí Minh', 'public/images/doctor/drnguyentuankhiem.jpg', 'Nội Nhi Khoa tại Đại học y khoa Phạm Ngọc Thạch và Bệnh viện nhi đồng 2 HCM', 'Đại học y  dược HCM', NULL),
(37, 'BS NGUYỄN ĐĂNG KHOA', 'Nhi', 'Bệnh viện Nhi đồng 2 HCM', 'Hồ Chí Minh', 'public/images/doctor/966166934NguyenDangKhoa.jpg', '5 năm kinh nghiệm tại bệnh viện Nhi đồng 2 HCM', 'ĐH Y Dược TP.HCM', NULL),
(38, 'Bác sĩ Lưu Nguyễn An Thuận', 'Nhi', 'Bệnh Viện Nhi Đồng 2 HCM', 'Hồ Chí Minh', 'public/images/doctor/drluunguyenanthuan.jpg', 'chuyên phẫu nhi tại Bệnh Viện Nhi Đồng 2 HCM', 'ĐH Y Dược TPHCM', NULL),
(39, 'Bác Sĩ Nguyễn Ngọc Bách', 'Nhi', 'Bệnh viện Nhi Đồng 1 Hồ Chí Minh', 'Hồ Chí Minh', 'public/images/doctor/drnguyenngocbach.jpg', 'Chuyên khoa nhi tại Bệnh viện Nhi Đồng 1 Hồ Chí Minh', 'Học Bác sĩ Đa Khoa tại Phạm Ngọc Thạch University of Medicine , HCM City', NULL),
(40, 'Bác sĩ CK2 Nguyễn Văn Phước Chiến', 'Nhi', 'Phòng Khám Đa Khoa Nhi Nancy', 'Hồ Chí Minh', 'public/images/doctor/drnguyenphuocchien.jpg', 'Chuyên khoa chuẩn đoán hình ảnh tại Phòng Khám Đa Khoa Nhi Nancy. gồm: xquang.. siêu âm: tất cả và 3chieu  4 chiều..5 chiều.\n, \nSoi dạ dày và đại tràng\n, \nTrực tràng', 'Đại học y dược HCM', NULL),
(41, 'Bác sĩ CK1 Nguyễn Dương Phi', 'Nhi', 'Bệnh viện nhi Thành Phố HCM', 'Hồ Chí Minh', 'public/images/doctor/drnguyenduongphi.jpg', 'Chuyên khám các dị tật bẩm.sinh cơ quan vận động và các loại chấn thương phần mềm, vết thương hoặc gãy xương ở nhi khoa, Dị tật thì các cái như trật khớp háng bẩm sinh, dính ngón , thừa ngón , thiểu sản xương quay...tại Bệnh viện nhi Thành Phố HCM', 'Đại học y dược HCM', NULL),
(42, 'Bác sĩ Sử Nữ Thuỳ Dương', 'Nhi', 'Bệnh viện nhi đồng 1 HCM', 'Hồ Chí Minh', 'public/images/doctor/drsunuthuyduong.jpg', 'Chuyên cấp cứu ban đầu ngộ độc, suy hô hấp. viêm tiểu phế quản, viêm phế quản, hen, viem phoi,sốt co giật, tiêu chảy, táo bón, tay chân miệng, hội chứng thận hư lần đầu tại Bệnh viện nhi đồng 1 HCM', 'Đại học y dược HCM', NULL),
(43, 'Bác sĩ Trịnh Ngọc Bình', 'Nhi', 'Phòng khám Mai Khôi\n155B đường Bà Huyện Thanh Quan - F7- Q3\nKhám đa khoa', 'Hồ Chí Minh', 'public/images/doctor/drtrinhngocbinh.jpg', 'Chuyên khoa nhi tại Phòng khám Mai Khôi\n155B đường Bà Huyện Thanh Quan - F7- Q3', 'Tốt nghiệp trường Đại Học Y Dược TP. HCM', NULL),
(44, 'Bác sĩ Lê Thị Thuỳ Anh', 'Nhi', 'Bệnh viện Nhi Đồng 2 HCM', 'Hồ Chí Minh', 'public/images/doctor/drthuyanh.jpg', 'Chuyên khoa nhi tại Bệnh viện Nhi Đồng 2 HCM', 'Đại học y dược HCM', NULL),
(45, 'Bác sĩ Nguyễn Dy Lưu', 'Nhi', 'Bênh viện nhi đồng 2 HCM', 'Hồ Chí Minh', 'public/images/doctor/drnguyendyluu.jpg', 'CHuyên khoa nhi , thường khám: hô hấp, tiêu hoá, dinh dưỡng, bỏng, chỉnh hình nhi, bệnh lý cơ quan vận động nhi tại Bênh viện nhi đồng 2 HCM', 'Đại học y dược HCM', NULL),
(46, 'Bác sĩ Phan Thuỳ Dương', 'Nhi', 'Công ty cổ phần Dinh dưỡng Nutrihome', 'Hồ Chí Minh', 'public/images/doctor/drphanthhuyduong.jpg', 'CHuyên khoa nhi dinh dưỡng tại Công ty cổ phần Dinh dưỡng Nutrihome', 'Học Viện quân y', NULL),
(47, 'Bác sĩ Phan Trần Trúc Ly', 'Nhi', 'Bệnh viện An Bình', 'Hồ Chí Minh', 'public/images/doctor/drphantrantrucly.jpg', 'Các bệnh thường khám: các bệnh thường gặp ở trẻ em về hô hấp, tiêu hoá, nhiễm,...', 'Đại học y khoa Phạm Ngọc Thạch', NULL),
(48, 'Bác sĩ Đặng Ngọc Phú', 'Nhi', 'Bệnh viện Nhi đồng Tp.HCM', 'Hồ Chí Minh', 'public/images/doctor/drdangngocphu.jpg', 'CHuyên khoa nhi', 'Đại học y dược HCM', NULL),
(49, 'Bác sĩ Trương Đình Tiến', 'Nhi', 'Bệnh viện 103', 'Hồ Chí Minh', 'public/images/doctor/drtruongdinhtien.jpg', 'CHuyên khám u tuyến giáp, u tuyến vú, cổ tử cung, hạch ngoại vi, các khối u dưới da, ung bướu', 'Học viện quân y', NULL),
(50, 'Bác sĩ Lê Thị Thanh Huyền', 'Nhi', 'Bệnh viện Nhi đồng 2 HCM- phòng khám đa khoa CHAC và hệ thống PK Nhi đồng Sài Gòn', 'Hồ Chí Minh', 'public/images/doctor/drlethithanhhuyen.jpg', 'Kinh nghiệm 9 năm điều trị bệnh lý ở trẻ em: hô hấp, tiêu hoá, tai mũi họng,.. Điều trị chuyên sâu về hô hấp, hen suyễn nhi, các bệnh về dị ứng- da liễu nhi và các bệnh da liễu người lớn', 'Đại học Y dược TPHCM', NULL),
(51, 'Bác sĩ Hoàng Kim Biên', 'Nhi', 'Bệnh viện Nhân Ái thuộc sở y tế TP Hồ Chí Minh', 'Hồ Chí Minh', 'public/images/doctor/drhoangkimbien.jpg', 'Các bệnh thường khám\nNội khoa như: Viêm phế quản, viêm phổi, hen suyễn, viêm họng viêm amydal, viêm xoang, rối loạn tiền đình, tăng huyết áp, rối loạn lipid máu, đái tháo đường, nhiễm trùng đường tiết niệu, viêm da tiếp xúc.viêm dạ dày trào ngược, rối loạn tiêu hoá, viêm đại tràng, thoái hoá cột sống cổ- lưng, thoái hoá khớp gối....\nCác bệnh nhi khoa: viêm đường hô hấp trên, viêm phế quản phổi, viêm phổi, viêm họng, viêm amydal, viêm mũi họng, hen suyễn, viêm đường ruột, thuỷ dậu, sởi, quay bị,áp xe nhọt cụm ở da, viêm nướu răng, sâu răng, sốt phát ban,thalasemia,kagasaki, viêm tai giữa \nCác bệnh lý về răng miệng của người lớn: viêm nướu răng, viêm quanh răng ,\nCác bệnh lý ngoại khoa khác: áp xe nhọt cụm..\nDa liễu: viêm da tiếp xúc \nNấm da...có kinh nghiệm làm trong môi trường nhà nước trực tiếp khám bệnh và điều trị các bệnh lý NỘI - NHI từ năm 2013 đến nay. \nHợp tác với các phòng khám đa khoa trên địa bàn Bến Cát - Tân Uyên thuộc Bình Dương', 'Đại học y dược HCM', NULL),
(52, 'Bác sĩ Bùi Thanh Liêm', 'Nhi', 'Giảng viên đại học y dược Hồ Chí Minh', 'Hồ Chí Minh', 'public/images/doctor/drbuithanhliem.jpg', 'Giảng viên đại học y dược Hồ Chí Minh', 'Đại học y dược HCM', NULL),
(53, 'Bác sĩ CK1 Trần Thanh An', 'Nhi', 'Bệnh viện Nhiệt Đới HCM', 'Hồ Chí Minh', 'public/images/doctor/drtranthanhan1.jpg', 'Các bệnh thường khám: Nuôi con bằng sữa mẹ, khám rốn, khám sốt ho sổ mũi, biếng ăn, phát ban, ban đỏ, chích ngừa, tiêm chủng, đổ mồ hôi trộm, đái dầm, xổ giun, ngứa mề đay, ói, ỉa chảy, kiết lỵ, dị ứng sữa đạm bò…\n10 năm kinh nghiệm điều trị các bệnh lý nhi khoa', 'Đại học y Phậm Ngọc Thạch HCM', NULL),
(54, 'Bác sĩ Lý Thị Tuyền', 'Nhi', 'Bệnh viện nhi đồng 2 HCM', 'Hồ Chí Minh', 'public/images/doctor/drlythituyen.jpg', 'CHuyên khám và điều trị các bệnh về nhi nhu : hô hấp, tiêu hoá, dinh dưỡng tại Bệnh viện nhi đồng 2 HCM', 'Đại học y dược HCM', NULL),
(55, 'Thạc sĩ, Bác sĩ Huỳnh Thanh Trà Giang', 'Nhi', 'Phòng khám đa khoa Vạn Phước, quận Bình Tân, tp HCM.', 'Hồ Chí Minh', 'public/images/doctor/drhuynhthanhtragiang.jpg', 'Khám và điều trị bệnh nội khoa và nhi khoa', 'Tốt nghiệp thạc sĩ đại học Y Dược HCM năm 2019', NULL),
(56, 'Điều Dưỡng Hoàng  Nhân  Hiếu', 'Nhi', 'Phòng khám đa khoa Vạn Phước, quận Bình Tân, tp HCM.', 'Hồ Chí Minh', 'public/images/doctor/ddhoangnhanhieu.jpg', 'Các bệnh thường khám: Nuôi con bằng sữa mẹ, khám rốn, khám sốt ho sổ mũi, biếng ăn, phát ban, ban đỏ, chích ngừa, tiêm chủng, đổ mồ hôi trộm, đái dầm, xổ giun, ngứa mề đay, ói, ỉa chảy, kiết lỵ, dị ứng sữa đạm bò…\n10 năm kinh nghiệm điều trị các bệnh lý nhi khoa', 'Đại học Y Dược Thành phố Hồ Chí Minh - chuyên khoa Nhi', NULL),
(57, 'Bác sĩ Nguyễn Đoàn Thanh Thanh', 'Nhi', 'Bệnh viện Nhiệt Đới HCM', 'Hồ Chí Minh', 'public/images/doctor/drnguyendoanthanhthanh.jpg', 'Khám và điều trị bệnh nội khoa và nhi khoa', 'ĐH Y Dược TP.HCM', NULL),
(58, 'Bác sĩ Nguyễn Trọng Tuân', 'Nhi', 'Bệnh viện Nhi đồng 2 HCM- phòng khám đa khoa CHAC và hệ thống PK Nhi đồng Sài Gòn', 'Hồ Chí Minh', 'public/images/doctor/bsnguyentrongtuan.jpg', 'CHuyên khám và điều trị các bệnh về nhi nhu : hô hấp, tiêu hoá, dinh dưỡng tại Bệnh viện nhi đồng 2 HCM', 'ĐH Y Dược TP.HCM', NULL),
(59, 'Thạc sĩ - Bác sĩ Nguyễn Thi Phú', 'Nhi', 'Bệnh viện Nhi đồng Tp.HCM', 'Hồ Chí Minh', 'public/images/doctor/drnguyenthiphu.jpg', 'Kinh nghiệm 9 năm điều trị bệnh lý ở trẻ em: hô hấp, tiêu hoá, tai mũi họng,.. Điều trị chuyên sâu về hô hấp, hen suyễn nhi, các bệnh về dị ứng- da liễu nhi và các bệnh da liễu người lớn', 'Từng học tại ĐHY Thái Bình\n\nTừng học SĐH tại ĐHY Dược Tp Hcm\nHọc CKI Tại ĐHY Phạm Ngọc Thạch', NULL),
(60, 'Bác sĩ  CK 2 Từ Quốc Thanh', 'Nội tổng quát', 'Trưởng khoa, khoa Điều tri theo yêu cầu khoa dịch vụ tại  Bệnh viện Trưng Vương, TPHCM', 'Hồ Chí Minh', 'public/images/doctor/BSTuQuocThanh1.jpg', 'Chuyên về Tim mạch, hô hấp, tiêu hóa, đái tháo đường, cơ xương khớp....\n\n+ Thạc sĩ Chuyên khoa Hô Hấp, Chuyên khoa cấp 2 Nội tổng quát. \n+ Khoa Điều trị theo yêu cầu, BV Trưng Vương, TPHCM.', 'ĐH Y Dược TP.HCM', NULL),
(61, 'Bác sĩ , Thạc sĩ Trần Thị Như Hoa', 'Nội tổng quát', 'Phòng Khám Sala B1 00.09 Sarimi, đường D9, Khu Đô Thị Sala, Q2, HCM', 'Hồ Chí Minh', 'public/images/doctor/981067969bstranthinhuhoa.jpg', 'Bác Sĩ đã và đang công tác tại các Bệnh Viện và Phòng Khám uy tín tại Việt Nam vị trí Trưởng Kíp Trực, Trưởng Phòng Khám:\n- Bệnh Viện Đa Khoa\n- Viện Tim TP. HCM\n- Bệnh Viện Tim Tâm Đức TP. HCM\n- Phòng Khám Quốc Tế Victoria\n- Phòng Khám 139', 'ĐH Y Dược TP.HCM', NULL),
(62, 'Bác sĩ Huỳnh Tuyết Linh', 'Nội tổng quát', 'Bệnh viện quận Tân Phú', 'Hồ Chí Minh', 'public/images/doctor/275254660bshuynhtuyetlinh.jpg', '5 năm chuyên khoa nội tổng quát', 'ĐH Y Dược TP.HCM', NULL),
(63, 'Bác sĩ Duy Lê Cao Phương', 'Nội tổng quát', 'Phó giám đốc phụ trách chuyên môn BV Nguyễn Tri Phương', 'Hồ Chí Minh', 'public/images/doctor/drlecaoduyphuong.jpg', 'Phó giám đốc phụ trách chuyên môn BV Nguyễn Tri Phương', 'Đại học y dược HCM', NULL),
(64, 'Bác sĩ Lưu Hoàng Phúc', 'Nội tổng quát', 'CHuyên nội tổng quát tại VNVC HCM', 'Hồ Chí Minh', 'public/images/doctor/drluuhoangphuc.jpg', 'CHuyên nội tổng quát: Copd, hen, đái tháo đường, viêm dạ dày, tăng huyết áp, viêm khớp dạng thấp, nhiễm trùng hô hấp trên, dưới tại VNVC HCM', 'Đại học y khoa phạm ngọc thạch', NULL),
(65, 'Bác sĩ Võ Phước Chiểu', 'Nội tổng quát', 'Phòng khám Đa khoa Quốc Tế Nhân Hậu và Bệnh viện Nhân Dân 115', 'Hồ Chí Minh', 'public/images/doctor/drvophuocchieu.jpg', 'Chuyên khám và điều trị các bệnh lý tim mạch: huyết áp, bệnh mạch vành, suy tim, rối loạn nhịp tim...các bệnh lý nội tiết: đái tháo đường, tuyến giáp...bệnh chuyển hoá: rối loạn mỡ máu, gout....các bệnh lý về hô hấp, tiêu hoá, cơ xương khớp tại Phòng khám Đa khoa Quốc Tế Nhân Hậu và Bệnh viện Nhân Dân 115', 'Khoa Y - Đại học Tây Nguyên', NULL),
(66, 'Bác sĩ Châu Hoàng Sinh', 'Nội tổng quát', 'Bệnh viện quận Thủ Đức', 'Hồ Chí Minh', 'public/images/doctor/drchauhoangsinh.jpg', 'Chuyên khoa nội tổng quát tại Bệnh viện quận Thủ Đức', 'Đại học y dược HCM', NULL),
(67, 'Bác sĩ TRẦN THỊ THÀNH HUẾ', 'Nội tổng quát', 'Đa khoa Anh Minh', 'Hồ Chí Minh', 'public/images/doctor/drtranthithanhhua.jpg', 'Chuyên khoa : Nội - Nhi- dinh dưỡng.   Các bệnh thg khám: Người lớn như đtđ , rối loạn mỡ máu , cao Huyết áp, gut, béo phì, tiêu hóa, hô hấp , thoái hoá khớp , rối loạn tiền đình. Trẻ em các bệnh hô hấp , tiêu hoá, suy dinh dưỡng , béo phì, biếng ăn...đặc biệt có tư vấn vaccin tiêm ngừa trẻ e và người lớn tại Bệnh viện  Đa khoa Anh Minh.', 'Trường ĐHY Thái Nguyên.', NULL),
(68, 'Thạc sĩ, Bác sĩ Lê Tuấn', 'Nội tổng quát', 'Bệnh viện TP THủ Đức', 'Hồ Chí Minh', 'public/images/doctor/drletuan.jpg', 'Bệnh viện TP THủ Đức', 'Đại học y dược HCM', NULL),
(69, 'Bác sĩ HUỲNH VI HỒNG ÂN', 'Phẫu Thuật Thẩm Mỹ', 'VIỆN THẨM MỸ PHÁP VIỆT', 'Hồ Chí Minh', 'public/images/doctor/448175049bshuynhvihongan.jpg', 'PHẨU THUẬT TẠO HÌNH VÀ THẨM MỸ CÔNG TÁC tại VIỆN THẨM MỸ PHÁP VIỆT', 'TỐT NGHIỆP BÁC SĨ: ĐHYD TPHCM TỐT NGHIỆP CHUYÊN KHOA TẠO HÌNH THẨM MỸ : ĐHY PHẠM NGỌC THẠCH TU NGHIỆP VỀ PHẨU THUẬT THẨM MỸ TẠI HÀN QUỐC', NULL),
(70, 'Bác sĩ CK1 Hà Trung Chính', 'Phẫu Thuật Thẩm Mỹ', 'Bệnh viện Giao Thông Vận Tải Thành phố Hồ Chí Minh, Bác sỹ thẩm mỹ hợp tác tại Emcas Plastic Surgery Hospital & Spa, Phẫu Thuật Thẩm Mỹ Bác sĩ Chính', 'Hồ Chí Minh', 'public/images/doctor/794261160bshachungchinh.jpg', '10 năm Chuyên khoa phẫu thuật tạo hình thẩm mỹ', 'ĐẠI HỌC Y KHOA PHẠM NGỌC THẠCH', NULL),
(71, 'Dr. Việt - Đôi tay vàng - Tôn sắc Việt', 'Phẫu Thuật Thẩm Mỹ', 'Dr. Việt - Trưởng khoa Phẩu Thuật Thẩm mỹ - Phó Giám Đốc Bệnh viện Giao thông vận tải', 'Hồ Chí Minh', 'public/images/doctor/8233690drviet.jpg', 'Dr. Việt - Trưởng khoa Phẩu Thuật Thẩm mỹ - Phó Giám Đốc Bệnh viện Giao thông vận tải', 'Trường Đại Học Y Dược', NULL),
(72, 'Bác sĩ Dương Xuân Lực', 'Phẫu Thuật Thẩm Mỹ', 'Thẩm mỹ viện Thalia', 'Hồ Chí Minh', 'public/images/doctor/drdaovanluc.jpg', 'Chuyên Phẫu thuật tạo hình - Thẩm mỹ tại Thẩm mỹ viện Thalia', 'Đại học Y Dược Thành phố Hồ Chí Minh - chuyên khoa Phẫu thuật tạo hình - Thẩm mỹ', NULL),
(73, 'Bác sĩ CK1 Nguyễn Thanh Sĩ', 'Phẫu Thuật Thẩm Mỹ', 'Giáo viên dạy Văn cấp 3 dưới Sóc trăng. Làm mũi 1 lần từ 2008 ko suôn sẻ nên Chị buồn khổ suốt gần 13 năm trời. Cám ơn Chị đã đặt niềm tin vào ekip Bs..', 'Hồ Chí Minh', 'public/images/doctor/drnguyenthanhsi.jpg', '', 'Từng học tại ĐHY Thái Bình\n\nTừng học SĐH tại ĐHY Dược Tp Hcm\nHọc CKI Tại ĐHY Phạm Ngọc Thạch', NULL),
(74, 'Bác sĩ CK1 Nguyễn Đỗ Chỉnh', 'Phẫu Thuật Thẩm Mỹ', 'Bệnh Viện Thẩm Mỹ MEDIKA', 'Hồ Chí Minh', 'public/images/doctor/drnguyendochinh.jpg', 'Bác sĩ Phẫu thuật Tạo hình Thẩm mỹ tại Bệnh Viện Thẩm Mỹ MEDIKA và Bác sĩ Ngoại Tiết Niệu tại Bệnh viện Bình Dân', 'Học CK1 phẫu thuật tạo hình tại Trường Đại học Y khoa Phạm Ngọc Thạch và\n\nHọc Định hướng Chuyên khoa phẫu thuật tạo hình thẩm mỹ tại Đại học Y dược TP. HCM', NULL),
(75, 'Bác sĩ Phạm Minh Trường', 'Phẫu Thuật Thẩm Mỹ', 'PMT Cosmetics - Dược Mỹ Phẩm Chuẩn Y Khoa', 'Hồ Chí Minh', 'public/images/doctor/drphamminhtruong.jpg', 'Là Founder và CEO PMT Aesthetic Clinic, Bác sĩ Phạm Minh Trường – CHUYÊN GIA THẨM MỸ NỘI KHOA, luôn là cái tên được rất nhiều đồng nghiệp trong giới nể trọng và là “bạn đồng hành” của những tên tuổi ngôi sao Việt Nam', 'Pham Ngoc Thach University of Medicine', NULL),
(76, 'Phó Giáo sư TS. BS Cao cấp  ĐỖ QUANG HÙNG', 'Phẫu Thuật Thẩm Mỹ', 'nguyên Trưởng khoa Thẩm mỹ BV Chợ Rẫy, Phó Bộ Môn, Phó Chủ tịch Hội PTTM', 'Hồ Chí Minh', 'public/images/doctor/drdoquanghung.jpg', 'nguyên Trưởng khoa Thẩm mỹ BV Chợ Rẫy, Phó Bộ Môn, Phó Chủ tịch Hội PTTM', 'Ho Chi Minh City University of Medicine and Pharmacy tại Medical\n\nvà Pham Ngoc Thach University of Medicine', NULL),
(77, 'Bác sĩ, Thạc sĩ  NGUYỄN THỊ PHỤNG', 'Phổi, Hô hấp', 'Bệnh viện chợ rẫy', 'Hồ Chí Minh', 'public/images/doctor/412463124nguyenthiphung.jpg', '16 năm hành nghề\n10 năm kinh nghiệm tại BVCR tại  bệnh viện chợ rẫy', 'ĐH Y Dược Cần Thơ', NULL),
(78, 'Bác sĩ CK1 Nguyễn Phi Tùng', 'Phổi, Hô hấp', 'Một hình cũ thôi chứ ko phải sinh nhật gì hôm nay nha:\n\n\nGóc nhìn của mình thì sự quan trọng và công sức của điều dưỡng hiện tại ở đa số nơi chưa xứng đáng với giá trị thực sự. Nếu được quan tâm và được hưởng đúng giá trị thì chất lượng sẽ tăng, mối quan hệ lẫn kết cục với bệnh nhân sẽ tốt hơn.\n\n\nNói chung anh bờ sờ trẻ đi đâu đó tới giờ đều được mấy chị với mấy bạn thương : mà anh bờ sờ trẻ là nói quá khứ thôi, chứ giờ ko còn dám nhận nữa :', 'Hồ Chí Minh', 'public/images/doctor/drnguyenphitung.jpg', 'khoa Hồi sức và cấp cứu Bệnh viện quốc tế Vinmec Central Park', 'Đại học y dược HCM', NULL),
(79, 'Bác sĩ Vũ Thanh Tùng', 'Phổi, Hô hấp', 'Bệnh viện Phạm Ngọc Thạch', 'Hồ Chí Minh', 'public/images/doctor/drvuthanhtung.jpg', 'Chuyên khám và điều trị các bệnh  phổi và lao tại Bệnh viện Phạm Ngọc Thạch', 'Đại học y Hà Nội', NULL),
(80, 'Bác sĩ Nguyễn Hồ Lam', 'Phổi, Hô hấp', 'Đại học Y dược TP. HCM', 'Hồ Chí Minh', 'public/images/doctor/drnguyenholam.jpg', 'Chuyên khoa Hô hấp tại Đại học Y dược TP. HCM', 'Đại học y dược HCM', NULL),
(81, 'Bác sĩ Nguyễn Thành Tâm', 'Phổi, Hô hấp', 'Bệnh viện Bệnh Nhiệt đới - Hospital for Tropical Diseases', 'Hồ Chí Minh', 'public/images/doctor/drnguyenthanhtam.jpg', 'Bệnh viện Bệnh Nhiệt đới - Hospital for Tropical Diseases', 'Đại học y dược HCM', NULL),
(82, 'Bác sĩ Lưu Hoài Nam', 'Phổi, Hô hấp', 'Bệnh viện Chợ Rẫy', 'Hồ Chí Minh', 'public/images/doctor/drluuhoainam.jpg', 'làm việc trên lĩnh vực lồng ngực, tim, mạch máu. Điều trị covid tại trung tâm hồi sức covid Bệnh viện ung bướu Cơ sở 2. thường khám  phổi, trung thất, mạch máu, bướu giáp, lồng ngực tại Chuyên khoa Ngoại Lồng Ngực tại  Bệnh viện Chợ Rẫy', 'Đại học y dược HCM', NULL),
(83, 'Bác sĩ NGUYỄN HOÀNG LINH', 'Phổi, Hô hấp', 'Bệnh viện PHẠM NGỌC THẠCH 2017 đến nay', 'Hồ Chí Minh', 'public/images/doctor/drnguyenhoanglinh.jpg', 'Chẩn đoán và điều trị bệnh lí nội khoa nói chung và hô\nhấp nói riêng. \nHồi sức cấp cứu, \nĐiều trị bệnh nhân nhiễm Sar-CoV2, \nNội soi phế quản, \nTham gia công tác gêm chủng', 'ĐHYK PHẠM NGỌC THẠCH 2011-2017', NULL),
(84, 'Bác sĩ Trần Quang Tín', 'Răng, Hàm, Mặt', 'BV Tâm Trí Q12', 'Hồ Chí Minh', 'public/images/doctor/775508820bstranquangtin.jpg', '10 năm Chuyên khoa Răng hàm mặt', 'ĐH Y Dược TP.HCM', NULL),
(85, 'Bác sĩ Hoàng Văn Đạt', 'Răng, Hàm, Mặt', 'Nha KHOA QUỐC TẾ VIỆT PHÁP', 'Hồ Chí Minh', 'public/images/doctor/624715419bshoangvandat.jpg', '10 năm Chuyên khoa Răng hàm mặt', 'ĐH Y Dược TP.HCM', NULL),
(86, 'Ths. Bs Hồ Quang Nhật', 'Sản phụ khoa', 'Bệnh viện Từ dũ HCM', 'Hồ Chí Minh', 'public/images/doctor/570867929bshoquangnhat.jpg', '10 năm Chuyên khoa Sản phụ khoa', 'ĐH Y Dược TP.HCM', NULL),
(87, 'BS CKI Trần Thị Trúc Phương', 'Sản phụ khoa', 'Bệnh viện Nguyễn Tri Phương', 'Hồ Chí Minh', 'public/images/doctor/938558824bstranthitrucphuong.jpg', '15 năm	kinh nghiệm về sản phụ khoa', 'ĐH Y Dược TP.HCM', NULL),
(88, 'Bác sĩ CK2 Lê Thanh Vân', 'Sản phụ khoa', 'Bệnh viện Từ Dũ HCM', 'Hồ Chí Minh', 'public/images/doctor/drlethanhvan.jpg', 'Chuyên Sản Khoa , Phụ Khoa , Bệnh xã hội , Kế hoạch hóa gia đình , Hiến muộn - Vô sinh tại Bệnh viện Từ Dũ HCM', 'Đại học y dược HCM', NULL),
(89, 'Bác sĩ HUỲNH THỊ THÚY OANH', 'Sản phụ khoa', 'Bệnh viện Triều An và  Vạn Hạnh quận 10', 'Hồ Chí Minh', 'public/images/doctor/drthuyoang.jpg', 'Điều trị bệnh lý viêm nhiễm phụ khoa, kế hoạch hóa gia đình : đặt DCTC, cấy que tránh thai, phá thai bằng thuốc, theo dõi thai và đỡ sanh, mổ lấy thai chủ động, Mổ cắt Tử cung, bóc u BT nội soi.  hẹn giờ tại Bệnh viện Triều An và  Vạn Hạnh quận 10', 'Đại học y dược HCM', NULL),
(90, 'Bác sĩ Hoàng Thị Thanh Nhàn', 'Sản phụ khoa', 'Phòng khám careplus', 'Hồ Chí Minh', 'public/images/doctor/drhoangthithanhnhan.jpg', 'Khám thai, điều trị phụ khoa viêm âm  đạo, các bệnh liên quan tuổi mãn kinh', 'Đại học y dược HCM', NULL),
(91, 'Bác sĩ Văn Hoàng Bảo Trân', 'Sản phụ khoa', 'Bệnh viện An Sinh', 'Hồ Chí Minh', 'public/images/doctor/drvanhoangbaochan.jpg', 'Khám sản phụ khoa, hiếm muộn tại \nBệnh viện An Sinh', 'ĐH Y Dược Cần Thơ', NULL),
(92, 'Bác sĩ CK1 Lê Thị Mỹ Duyên', 'Sản phụ khoa', 'Chuyên sản phụ khoa tại Phòng khám Timec và Phòng khám  Quốc Tế Queen, Nguyên bác sĩ sản tại bệnh viện Hùng Vương', 'Hồ Chí Minh', 'public/images/doctor/drlethimyxduyen.jpg', 'Chuyên sản phụ khoa tại Phòng khám Timec và Phòng khám  Quốc Tế Queen, Nguyên bác sĩ sản tại bệnh viện Hùng Vương', 'Đại học y dược HCM', NULL),
(93, 'Bác sĩ, Thạc sĩ Trần Huy Dũng', 'Sản phụ khoa', 'Bệnh viện Từ Dũ', 'Hồ Chí Minh', 'public/images/doctor/drtranhuydung.jpg', 'Chuyên hiếm muộn, bệnh phụ khoa, khám thai , mổ u xơ … khám tiền mãn kinh tại Bệnh viện Từ Dũ', 'Đại học y dược HCM', NULL),
(94, 'Bác sĩ Sơn Thị Ngọc Bích', 'Sản phụ khoa', 'Bệnh viện Hùng Vương', 'Hồ Chí Minh', 'public/images/doctor/drsonthingocbich.jpg', 'Khám thai, phát hiện và điều trị nhiễm trùng hậu sản, khám và điều trị viêm nhiễm phụ khoa, tầm soát ung thư cổ tử cung và tư vấn các biện pháp kế họach hóa gia đình tại Bệnh viện Hùng Vương', 'Đại học y dược HCM', NULL),
(95, 'Bác sĩ Trần Thị Kim Liên', 'Sản phụ khoa', 'Bệnh viện Từ Dũ', 'Hồ Chí Minh', 'public/images/doctor/drtranthikimlien.jpg', 'Chuyên khoa sản tại Bệnh viện Từ Dũ', 'Đại học y dược HCM', NULL),
(96, 'Bác sĩ Nguyễn Thị Cúc', 'Sản phụ khoa', 'Phó trưởng khoa sản phụ khoa bệnh viện đa khoa thanh hà thanh hóa đến 9/2020\nHiện tại  làm tại phòng khám sản phụ khoa vô sinh hiếm muộn Tâm phúc Hà nội', 'Hồ Chí Minh', 'public/images/doctor/drnguyenthicuc.jpg', '20 năm  bệnh viện Chợ rẫy', 'Đại học y hải Phòng, định hướng sản phụ khoa 2016- 2017 đại học y hà nội , học siêu âm dị tật thai  tai phụ sản trung ương, học soi đốt cổ tử cung tại Bệnh viện phụ sản trung ương và \nhọc mổ nội soi phụ khoa tại Bệnh việnTừ Dũ', NULL),
(97, 'Bác sĩ CK2 Bùi Thanh Vân', 'Sản phụ khoa', 'Khoa Sản Phụ Khoa BV Từ Dũ HCM', 'Hồ Chí Minh', 'public/images/doctor/drbuithanhvan.jpg', 'BS Sản Phụ Khoa BV Từ Dũ', 'Đại học Y Dược TP.HCM', NULL),
(98, 'Tiến sĩ, Bác sĩ Nguyễn Hữu Trung', 'Sản phụ khoa', 'trưởng khoa phụ sản tại Bệnh viện Đại học Y Dược', 'Hồ Chí Minh', 'public/images/doctor/drnguyenhuutrung.jpg', 'trưởng khoa phụ sản tại Bệnh viện Đại học Y Dược\n\nGiảng viên chính thức tại Bệnh viện Hùng Vương,  \n\nGiám đốc chuyên môn tại Phòng Khám Hoàng Gia Healthcare- Hiếm muộn, Phụ sản, Siêu âm 4D, \n\nGiám đốc chuyên môn tại Phòng Khám Hiếm Muộn Hoàng Gia- 284B Nguyễn Trọng Tuyển, P10, Phú Nhuận,HCM \n\nGiảng viên tại Đại học Y Dược TP.HCM - 217 Hồng Bàng - Quận 5 - TP.HCM, \n\nĐã làm việc tại Bệnh viện Từ Dũ', 'Học Ob/Gyn tại University of Medicine and Pharmacology at HCMC,\n\nHọc Plastic surgery tại Trường Đại học Y Hà Nội, \n\nHọc Medicine tại Đại Học Y Dược Huế', NULL),
(99, 'Bác sĩ VŨ KIM NGÂN', 'Tai Mũi Họng', 'Bệnh viện Đa khoa Tâm Anh', 'Hồ Chí Minh', 'public/images/doctor/drvukimngan.jpg', 'là bác sĩ có tay nghề cao, gần 10 năm kinh nghiệm trong khám, điều trị các bệnh lý liên quan đến Tai Mũi Họng. Bác sĩ Ngân từng công tác chuyên môn tại 2 bệnh viện uy tín là Bệnh viện Tai Mũi Họng TP.HCM và Bệnh viện Nhân Dân Gia Định. Khám và điều trị các bệnh lý tai – mũi – họng Phẫu thuật bệnh lý tai – mũi – họng người lớn & trẻ em. Phẫu thuật nội soi Mũi xoang, nội soi vi phẫu Tai, vi phẫu Thanh quản.', 'Học CK2 tại y dược TPHCM khóa 2019-2021', NULL),
(100, 'Bác sĩ Phạm Ngọc Thái Sơn', 'Tai Mũi Họng', 'Bệnh viện Đa Khoa Xuyên Á', 'Hồ Chí Minh', 'public/images/doctor/drphamngocthaison.jpg', 'Bệnh thường khám: viêm họng, viêm thanh quản, viêm tai giữa, viêm tai ngoài, viêm mũi dị ứng, viêm xoang, u vùng đầu mặt cổ Kih nghiệm: tốt nghiệp đh Y Tây Nguyên 2015 2017: định hướng chuyên khoa TMH bv Chợ Rẫy 2018-2020: bs CK 1 đh Y Dược Tp HCM Công tác tại khoa TMH bv Đa Khoa Xuyên Á 2016- nay', 'Đh Y Tây Nguyên', NULL),
(101, 'Chuyên viên Nguyễn Thái Hằng', 'Tâm Lý', 'Phòng khám chuyên gia Y học giấc ngủ', 'Hồ Chí Minh', 'public/images/doctor/drnguyenthaihang.jpg', 'Hiện đang công tác tại phòng khám Y học giấc ngủ cùng bác sĩ Đính.', 'tốt nghiệp cử nhân tâm lý tại trường Đại học Xã hội & Nhân văn.', NULL),
(102, 'Bác si Ck1 NGUYỄN ĐỖ CHÌNH', 'Tâm Lý', 'Bệnh viện Tâm thần TP.HCM', 'Hồ Chí Minh', 'public/images/doctor/drnguyendochinh1.jpg', 'Bệnh viện Tâm thần TP.HCM', '-Đào tạo:\n• Tốt nghiệp Trường ĐH Y Hà Nội\n• Bảo vệ Luận văn Thạc sĩ ĐH Y HN.\n• Tốt nghiệp CKI chuyên ngành Tâm thần tại ĐH Y Dược Huế.\n• Tham gia các chương trình đào tạo, thực tập tại Ustralia, Twan, Thailand.\n-Từng tham gia làm việc tại:\n• BV Tâm thần TƯ2\n• BV Bạch Mai.', NULL),
(103, 'Bác sĩ Nguyễn Tường Vũ', 'Thần kinh', 'Bệnh viện Chợ Rẫy HCM', 'Hồ Chí Minh', 'public/images/doctor/drnguyentruongvu.jpg', 'Chuyên khoa thần kinh tại Bệnh viện Chợ Rẫy HCM', 'Đại học y dược HCM', NULL),
(104, 'Bác sĩ Ck1 Hoàng Châu Bảo Đính', 'Thần kinh', 'ĐH Y Khoa Phạm Ngọc Thạch', 'Hồ Chí Minh', 'public/images/doctor/drhoangchaubaodinh.jpg', 'CHuyên khoa nội thần kinh tại ĐH Y Khoa Phạm Ngọc Thạch. CHuyên khám và điều trị rối loạn giấc ngủ, đột quỵ, đau đầu, chóng mặt, bệnh Parkinson và các bệnh thần kinh thoái hóa, động kinh.', 'ĐH Y Dược TP Hồ Chí Minh', NULL),
(105, 'Thạc sĩ, Bác sĩ Nguyễn Mậu Ngọc', 'Thần kinh', 'Nguyên phó phòng kế hoạch tổng hợp kiêm phụ trách phòng khám chuyên gia cao cấp bv châm cứu trung ương và \nGiám đốc phòng khám Chuyên khoa Yhct Thiên Thảo Đường', 'Hồ Chí Minh', 'public/images/doctor/drnguyenmaungoc.jpg', 'Nguyên phó phòng kế hoạch tổng hợp kiêm phụ trách phòng khám chuyên gia cao cấp bv châm cứu trung ương\nGiám đốc phòng khám Chuyên khoa Yhct Thiên Thảo Đường', 'Học viện đông y Vân nam', NULL),
(106, 'Bác sĩ NGUYỄN THANH KHA', 'Thần kinh', 'Phòng Khám Đông Y-Vật Lý Trị Liệu Tâm An', 'Hồ Chí Minh', 'public/images/doctor/drnguyenthanhkha.jpg', 'Các bệnh thường khám : Cơ xương khớp, Thần kinh cột sống', 'TRƯỜNG TRUNG CẤP Y- DƯỢC LÊ HỮU TRÁC', NULL),
(107, 'Bác si Ck2 LÊ VĂN HIẾU NHÂN', 'Tiết Niệu Nam Khoa', 'Bệnh viện Bình Dân HCM', 'Hồ Chí Minh', 'public/images/doctor/246170446bacsi.jpg', 'khoa Niệu C bệnh viện Bình Dân HCM. Chuyên khám và điều trị bệnh Thận-Niệu-Nam giới', 'Đại học y dược HCM', NULL),
(108, 'Thạc sĩ, Bác sĩ Trần Thanh Phong', 'Tiết Niệu Nam Khoa', 'Bệnh Viện Nhân Dân 115, TPHCM', 'Hồ Chí Minh', 'public/images/doctor/drtadinhphong.jpg', 'Chuyên bệnh lý về thận: suy thận…\nBệnh lý tiết niệu: nhiễm trùng tiểu, sỏi thận, sỏi tiết niệu, bướu đường tiết niệu, u xơ tuyến tiền liệt, hẹp bao quy đầu…..\nBệnh lý nam khoa: rối loạn cương, xuất tinh sớm…\nGhép thận: tư vấn ghép thận, theo dõi sau ghép thận', 'Đại học y dược TP. HCM', NULL),
(109, 'Bs CK II. Nguyễn Bá Hiệp', 'Tiêu hóa', 'Trưởng khoa tiết niệu tại Bệnh viện Thống Nhất, Hồ Chí Minh, Việt Nam', 'Hồ Chí Minh', 'public/images/doctor/60143673bsnguyenbahiep.jpg', 'hơn 30 năm Chuyên khoa Tiết niệu,  Trưởng khoa tiết niệu tại Bệnh viện Thống Nhất, Hồ Chí Minh, Việt Nam', 'ĐH Y Dược TP.HCM', NULL),
(110, 'Bác sĩ, Thạc sĩ Nguyễn Kim Tân', 'Tiêu hóa', 'Bệnh viện đa khoa Xuyên Á', 'Hồ Chí Minh', 'public/images/doctor/982115841bsnguyenkimtan.jpg', '10 năm Chuyên khoa Tiêu hóa- gan mật và hậu môn trực tràng', 'ĐH Y Dược TP.HCM', NULL),
(111, 'TS. BS TRẦN THANH BÌNH', 'Tiêu hóa', 'Bệnh viện Chợ Rẫy', 'Hồ Chí Minh', 'public/images/doctor/676706241bstranthanhbinh.jpg', '20 năm Chuyên khoa NỘI SOI TIÊU HOÁ, NỘI TIÊU HOÁ, GI MOTILITY High reslution manometry KHOA NỘI SOI tại CHỢ RẪY', 'ĐHYD TP HCM và ngiên cứu sinh tiến sĩ TẠI NHẬT BẢN', NULL),
(112, 'Bác sĩ Nguyễn Vũ Tuấn Anh', 'Tiêu hóa', 'Thêm một thế hệ Bs sắp ra lò nữa...', 'Hồ Chí Minh', 'public/images/doctor/drnguyenvutuananh.jpg', 'Chuyên khoa tiêu hoá , Giảng viên tại University of Medicine and Pharmacy, HCM city', 'General Surgery Resident 2010-2013 tại UNIVERSITY OF MEDICINE OF HO CHI MINH CITY và Taipei Medical University International', NULL),
(113, 'Bác sĩ CK2 Phan Quốc Việt', 'Tiêu hóa', 'Bệnh viện Bình Dân', 'Hồ Chí Minh', 'public/images/doctor/drphanquocviet.jpg', 'Trưởng Trưởng khoa Hồi sức cấp cứu và khoa ngoai tổng quát tiêu hóa gan mật tại Bệnh viện Bình Dân HCM', 'Học Phẫu Thuật Tạo Hình Thẩm Mỹ tại Bệnh viện Đại học Y Dược', NULL),
(114, 'Bác sĩ Đỗ Minh Hùng', 'Tiêu hóa', 'Giám đốc Trung tâm Nội soi - Phẫu thuật nội soi Tiêu hoá', 'Hồ Chí Minh', 'public/images/doctor/drdominhhung.jpg', 'Giám đốc Trung tâm Nội soi - Phẫu thuật nội soi Tiêu hoá tại Làm việc tại BV Tâm Anh HCM', 'Đại học y dược HCM', NULL),
(115, 'Bác sĩ Huỳnh Công Bằng', 'Tiêu hóa', 'Bệnh viện Đại Học Y Dược TPHCM', 'Hồ Chí Minh', 'public/images/doctor/drhuynhcongbang.jpg', 'Chuyên khoa: Tiêu hóa tại Bệnh viện Đại Học Y Dược TPHCM', 'Đại học y dược HCM', NULL),
(116, 'Bác sĩ Ck2 VÕ NGỌC BÍCH', 'Tiêu hóa', 'Bệnh viện Bình Dân HCM', 'Hồ Chí Minh', 'public/images/doctor/drvongocbich.jpg', 'Ngoại Tổng Quát  tiêu  hoá - Gan Mật Tuỵ , khám và phẫu thuật benh ly gan mat tuy, tieu hoa da day dai trang, trĩ, rò hậu môn, thoát vị bẹn tại Bệnh viện Bình Dân HCM.', 'Đại học y dược HCM', NULL),
(117, 'Bác sĩ Nguyễn Khắc Huy', 'Tiêu hóa', 'Bệnh viện Chợ Rẫy', 'Hồ Chí Minh', 'public/images/doctor/drnguyenkhacduy.jpg', 'Chuyên khoa tiêu hoá tại Bệnh viện Chợ Rẫy', 'Đại học y dược HCM', NULL),
(118, 'Bác sĩ Phạm Công Khanh', 'Tiêu hóa', 'Chuyên khoa tiêu hoá tại Bệnh viện THống Nhất HCM', 'Hồ Chí Minh', 'public/images/doctor/drphamcongdanh.jpg', 'Chuyên khoa tiêu hoá tại Bệnh viện THống Nhất HCM', 'Đại học y dược HCM', NULL),
(119, 'Tiến sĩ, Bác sĩ Võ Nguyên Phong', 'Tiêu hóa', 'Đại học Y Đài Bắc', 'Hồ Chí Minh', 'public/images/doctor/drvonguyenphong.jpg', 'Bác sĩ ngoại tổng quát, Bệnh viện Chợ Rẫy, Việt Nam\nBác sĩ nội soi tiêu hóa, Trung tâm Y tế Đại học, Việt Nam\nBằng tiến sĩ. ứng cử viên, IGPM, Đại học Y, Đại học Y Đài Bắc', 'Đại học y dược HCM', NULL),
(120, 'Bác sĩ Bùi Minh Tín', 'Tiêu hóa', '', 'Hồ Chí Minh', 'public/images/doctor/drbuiminhtin.jpg', 'Khám bệnh lý tiêu hoá, hậu môn trực tràng, Khám , điều trĩ, phẫu thuật tiêu hoá, hậu môn trực tràng', 'Đại học y dược HCM', NULL),
(121, 'Bác sĩ PHAN XUÂN TRUNG', 'Tiêu hóa', 'Trung tâm y khoa MEDIC Hòa Hảo HCM', 'Hồ Chí Minh', 'public/images/doctor/drphanxuantrung.jpg', 'Các bệnh nội khoa: \n- Tăng huyết áp\n- Tim mạch\n- Tiểu đường\n- Bướu cổ\n- Bệnh dạ dày, tiêu hóa. \n- Cơ xương khớp\n- Tiểu phẩu u nhọt ngoài da...', 'Đại học y dược HCM', NULL),
(122, 'Bác sĩ Phan Tiến Đạt', 'Tiêu hóa', 'Bệnh viện\n Khu Vực Thủ Đức', 'Hồ Chí Minh', 'public/images/doctor/drphantiendat.jpg', 'Bệnh thường khám: GERD, Viêm loét dạ dày-tá tràng, Xuất huyết tiêu hóa, Xơ gan, Viêm gan, Viêm tụy . \nBản thân: kinh nghiệm 2 năm trong lĩnh vực tiêu hóa – nội soi tiêu hóa tại bệnh viện đa khoa khu vực, gặp hầu hết các mặt bệnh, khả năng giao tiếp tốt, tư vấn nhiệt tình, thời gian rãnh hầu hết các buổi tối trong tuần', 'Đại học y khoa Phạm Ngọc Thạch', NULL),
(123, 'Bác sĩ Nguyễn Hoài Nam', 'Tim Mạch', 'Bệnh viện Đại học Y Dược HCM, chủ tịnh hội đồng quản trị bv quốc tế MINH ANH', 'Hồ Chí Minh', 'public/images/doctor/24579741bsnguyenhoainam.jpg', '35 năm	kinh nghiệm về phẩu thuật lồng ngực, tim mạch', 'ĐH Y Dược TP.HCM', NULL),
(124, 'Giáo sư, Tiến sĩ Nguyễn Đức Công', 'Tim Mạch', 'Hiện là Chủ tịch Hội đồng chuyên môn, Bác sĩ điều trị tại Phòng khám đa khoa Saigon Healthcare 2019 - nay\nChủ nhiệm Bộ môn Lão khoa, Đại học Y khoa Phạm Ngọc Thạch 2012 – nay\nPhó Chủ nhiệm Bộ môn Nội, khoa Y, Đại học Quốc gia TPHCM 2012 - nay\nPhó chủ nhiệm Bộ môn Lão khoa, Đại học Y Dược TPHCM 2010 - nay\nChủ tịch Hội đồng chuyên môn Bảo vệ chăm sóc sức khỏe cán bộ miền Nam 2010 - nay\nNguyên Giám đốc Bệnh viện Thống Nhất 2008', 'Hồ Chí Minh', 'public/images/doctor/drnguyenduccong.jpg', 'Bác sĩ nhận khám và điều trị: \n\nBệnh lý Tim Mạch, Bệnh mạch vành\nXơ vữa động mạch\nRối loạn mỡ máu, Huyết áp, Chủ tịch Hội đồng bảo vệ sức khỏe cán bộ miền Nam, \nNguyên Giám đốc Bệnh viện Thống Nhất\n\nPhó Chủ tịch Hội Nội khoa Việt Nam\nPhó Chủ tịch Hội Lão khoa Việt Nam\nPhó Chủ tịch Hội Tim mạch Thành phố Hồ Chí Minh\nNguyên Ủy viên Thường vụ Hội Thận học Hà Nội\nNguyên Ủy viên Ban chấp hành Hội Thấp khớp học Việt Nam', 'Thực tập sinh về Tim mạch và Nội khoa tại Đại học Y khoa Oita, Nhật Bản 1993 - 1995\nNghiên cứu sinh Tiến sĩ tại Đại học Y khoa Oita, Nhật Bản 1995 - 1999\nTốt nghiệp Bác sĩ chuyên khoa I Nội chung, Học viện Quân y 1989\nTốt nghiệp Bác sĩ Đa khoa, Học viện Quân Y 1982', NULL),
(125, 'Bác sĩ, Thạc Sỹ Nguyễn Thùy Châu', 'Tim Mạch', 'Trường ĐHYK Phạm Ngọc Thạch', 'Hồ Chí Minh', 'public/images/doctor/drnguyenthuychau.jpg', 'CHuyên khoa Nội Tim mạch - Y học gia đình tại  Trường ĐHYK Phạm Ngọc Thạch', 'ĐH Y Dược TpHCM', NULL),
(126, 'Bác sĩ Trần Quý Tường', 'Tim Mạch', 'Bệnh viện THống Nhất HCM', 'Hồ Chí Minh', 'public/images/doctor/drtranquytuong.jpg', 'CHuyên khoa hình ảnh học và điện quang can thiệp tại Bệnh viện THống Nhất HCM', 'Đại học y dược HCM', NULL),
(127, 'Bác sĩ Vũ Ngọc Duy', 'Tim Mạch', 'Bệnh viện Chợ Rẫy', 'Hồ Chí Minh', 'public/images/doctor/drvungocduy.jpg', 'Bs chuyên khoa phẫu thuật tim, lồng ngực, mạch máu tại Bệnh viện Chợ Rẫy. Ngoài ra điều trị các bệnh nội khoa: nội tim mạch, nội tiêu hoá, tiểu đường, khớp,\nPhẫu thuật tim như đã mổ tim rồi, hở van tim , bệnh mạch vành...\nMạch máu: dãn mạch máu chi dưới, hẹp tắc các mạch máu\nNội tim mạch: suy tim, tăng huyết áp, hở van tim, bệnh mạch vành, ...\nNội tiêu hoá: viêm dạ dày, trào ngược dạ dày, hp.....\nTiểu đường\nKhớp\nNgoài ra còn tư vấn mấy vấn đề sức khoẻ....', 'Đại học y dược HCM', NULL),
(128, 'Bác sĩ Lê Đức Tín', 'Tim Mạch', 'Khoa Phẫu Thuật Mạch Máu tại Bệnh viện Chợ Rẫy', 'Hồ Chí Minh', 'public/images/doctor/drleductin.jpg', 'Khám chuyên khoa Tim Mạch – Mạch Máu luôn phục vụ những bệnh nhân có bệnh lý về:\n\n- Bệnh lý van tim - cơ tim: Hẹp, hở van tim; suy tim....  \n\n- Bệnh lý bệnh mạch vành: tắc, hẹp mạch vành....  \n\n- Bệnh lý động mạch: tắc, hẹp động mạch chi dưới, động mạch cảnh; phình động mạch chủ ngực, bụng...\n  \n- Bệnh lý tĩnh mạch tứ chi: suy tĩnh mạch chi dưới; huyết khối tĩnh mạch.....\n\n- Bệnh lý phổi - Lồng ngực - \n\n- Bệnh lý bướu giáp: nhân giáp; Bướu giáp đa nhân; cường giáp; nhược giáp....\n \n- Bệnh lý nội tổng quát. \n \n- Bênh ngoại tiết niệu tiểu gắt, tiểu buốt, sỏi niệu.  \n\n- Bệnh nội thần kinh  cao huyết áp, suy nhược, mất ngủ', 'Đại học y dược HCM', NULL);
INSERT INTO `doctor` (`md_id`, `md_name`, `md_dept`, `md_clinic`, `md_address`, `md_photo`, `md_desc`, `md_degree`, `user_id`) VALUES
(129, 'Thạc sĩ, Bác sĩ Nguyễn Hưng Trường', 'Tim Mạch', 'Đại Học Y Dược Tp.HCM', 'Hồ Chí Minh', 'public/images/doctor/drnguyenhungtruong.jpg', 'Chuyên khoa Lồng Ngực - Mạch Máu tại Bệnh viện Đại Học Y Dược Tp.HCM', 'Đại học y dược HCM', NULL),
(130, 'Bác sĩ NGUYỄN TRỌNG TUẤN', 'Tim Mạch', 'Bệnh viện đa khoa khu vực Thủ Đức', 'Hồ Chí Minh', 'public/images/doctor/drnguyentrongtuan4.jpg', 'Các bệnh thường khám: Tăng huyết áp, các vấn đề về đau ngực, khám và tầm soát các bệnh lí tim mạch.\n1 tấm hình bs mặc áo blue: \n1 đoạn giới thiệu về kinh nghiêm và bản thân bác sĩ\n- Công tác 2 năm tại khoa nội tim mạch, kinh nghiệm 1 năm tại đơn vị tim mạch can thiệp bệnh viện đa khoa khu vực Thủ Đức.\n- Tham vấn tận tâm, quan tâm chất lượng cuộc sống người bệnh, có kinh nghiệm phát hiện và điều trị các bệnh lí tim mạch thông thường và chuyên sâu.\n- Hiện bác sĩ vẫn đang tham vấn, theo dõi điều trị cho nhiều bệnh nhân có nhu cầu tại Phòng khám Dịch vụ Tim mạch can thiệp tại bệnh viện đa khoa khu vực Thủ Đức vào ngày thứ 4 hàng tuần.\n- Ngoài công tác chuyên môn, hiện bác sĩ đang là thư kí của Câu lạc bộ Bác sĩ trẻ bệnh viện và là biên tập viên của fanpage khoa nội tim mạch bệnh viện đa khoa khu vực Thủ Đức.', 'Trường tốt nghiệp: Trường Đại học Y khoa Phạm Ngọc Thạch', NULL),
(131, 'Bác sĩ Vũ Đức Chiến', 'Tim Mạch', 'Bệnh viện quân y 103', 'Hồ Chí Minh', 'public/images/doctor/drvuduchien.jpg', 'tim mạch, thận, khớp, Nội TIết, Hô Hấp', 'Học viện quân y', NULL),
(132, 'Bác sĩ Nguyễn Quốc Việt', 'Ung Bướu, Ung Thư', 'Phòng khám đa khoa Vạn Phước, quận Bình Tân, tp HCM.', 'Hồ Chí Minh', 'public/images/doctor/drnguyenquocviet.jpg', 'Chuyên khoa Chẩn đoán hình ảnh, \nChuyên siêu âm Tầm soát Ung thư vú, Bướu cổ, Ung thư tuyến giáp, Ung thư phụ khoa, Hạch, Bướu phần mềm tại Phòng Khám Đa khoa Vạn Phước Bình Tân', 'Đại học Y Dược Thành phố Hồ Chí Minh - chuyên khoa Ung Bướu', NULL),
(133, 'Bác sĩ CkII Nguyễn Hồng Phúc', 'Ung Bướu, Ung Thư', 'Bệnh viện ung bướu Tp.hcm', 'Hồ Chí Minh', 'public/images/doctor/751089693bsnguyenhongphuc.jpg', '35 năm kinh nghiệm về Chuyên khoa Ung Thư , bs phẫu thuật các bệnh lý tuyến vú, tuyến giáp , các u phần mềm , ...... tại Bệnh viện ung bướu Tp.hcm', 'ĐH Y Dược TP.HCM', NULL),
(134, 'Bác sĩ CK2 TRƯƠNG CÔNG GIA THUẬN', 'Ung Bướu, Ung Thư', 'Bệnh viện Ung Bướu HCM', 'Hồ Chí Minh', 'public/images/doctor/drttruongconggiathuan.jpg', 'Chuyên khám điều trị: Ung thư Vú, Ung thư tuyến giáp, Bướu cổ, Ung thư Phụ khoa, Ung thư tiêu hoá , Hạch , Bướu phần mềm tại Bệnh viện Ung Bướu HCM', 'Đại học Y dược TPHCM', NULL),
(135, 'Bác sĩ CK2 Nguyễn Thị Hồng Ánh', 'Ung Bướu, Ung Thư', 'Phòng Khám Siêu Âm Ung Bướu 6A', 'Hồ Chí Minh', 'public/images/doctor/drnguyenthihonganh.jpg', 'Chuyên khoa Chẩn đoán hình ảnh, \nChuyên siêu âm Tầm soát Ung thư vú, Bướu cổ, Ung thư tuyến giáp, Ung thư phụ khoa, Hạch, Bướu phần mềm tại Phòng Khám Siêu Âm Ung Bướu 6A', 'Tốt nghiệp Đại học Y dược', NULL),
(136, 'Thạc sĩ, Bác sĩ Nguyễn Hữu Huy', 'Ung Bướu, Ung Thư', 'Bệnh viện Ung Bướu TPHCM', 'Hồ Chí Minh', 'public/images/doctor/drnguyenhuuhuy.jpg', 'Các bệnh thường khám: ung thư phổi, ung thư phụ khoa, ung thư đầu cổ tại Bệnh viện Ung Bướu TPHCM', 'Đại học y dược HCM', NULL),
(137, 'Bác sĩ Nguyễn Tuấn Anh', 'Ung Bướu, Ung Thư', 'Bệnh viện nhân dân Gia Định HCM', 'Hồ Chí Minh', 'public/images/doctor/drnguyentuananh.jpg', 'Chuyên  ngoại lồng ngực mạch máu - ung thư  phổi vs vú  tại Bệnh viện nhân dân Gia Định HCM', 'Đại học y dược HCM', NULL),
(138, 'Bác sĩ Lê Hoài Bảo', 'Vật lý trị liệu, Phục hồi chức năng', 'Bệnh viện Thánh mẫu HCM', 'Hồ Chí Minh', 'public/images/doctor/135111285bslehoaibao.jpg', '10 năm Chuyên khoa Vật lý trị liệu Phục hồi chức năng', 'ĐH Y Dược TP.HCM', NULL),
(139, 'Bác sĩ Nguyễn Hữu Mạnh', 'Vật lý trị liệu, Phục hồi chức năng', 'Phòng khám đa khoa quốc tế Nhân Hậu', 'Hồ Chí Minh', 'public/images/doctor/797479073bsnguyenhuumanh.jpg', '10 năm Chuyên khoa vật lý trị liệu', 'ĐH Y Dược TP.HCM', NULL),
(140, 'Bác sĩ LÊ CÔNG TIẾN', 'Vật lý trị liệu, Phục hồi chức năng', 'Phòng khám LASENTA CLINIC', 'Hồ Chí Minh', 'public/images/doctor/drlecongtien.jpg', 'Bệnh lý cơ xương khớp như: thoát vị đĩa đệm, thoái hoá cột sống, tê tay, tê chân, suy van tĩnh mạch chi dưới, thoái hoá khớp háng, thoái hoá khớp gối, viêm cân gan bàn chân, Tennis elbow, hội chứng ống cổ tay, ngón tay cò súng, viêm chu vai, đông cứng khớp vai, Gout, viêm khớp dạng thấp...vvv', 'ĐẠI HỌC Y DƯỢC TPHCM', NULL),
(141, 'Bác sĩ TRƯƠNG VĂN QUÂN', 'Y học cổ truyền', 'Phòng khám tư', 'Hồ Chí Minh', 'public/images/doctor/drtruongvanquan.jpg', 'Chuyên thăm khám và điều trị các bệnh lý bằng pp YHCT: Nội khoa, cơ xương khớp, nam nữ khoa', 'Học viện y dược học cổ truyền Việt Nam', NULL),
(142, 'Bác sĩ Nguyễn Văn khánh', 'Y học cổ truyền', 'Phòng khám tư', 'Hồ Chí Minh', 'public/images/doctor/drnguyenvankhanh.jpg', 'Chuyên khám và điều trị các bệnh về  cơ , xương , khớp , thần kinh , cột sống', 'Trường trung cấp cữu long', NULL),
(143, 'Bác sĩ Phạm Quốc Vượng', 'Y học cổ truyền', 'Phòng khám đa khoa Y học cổ truyền Quốc Y Đường', 'Hồ Chí Minh', 'public/images/doctor/drphamquocvuong.jpg', 'Các bệnh thường khám: thần kinh- tâm thần: mất ngủ, trầm cảm, tâm thần phân liệt, Tim mạch:  bệnh động mạch vành, rối loạn nhịp tim. Tiêu hóa: Viêm loét dạ dày tá tràng,Trào ngược dạ dày thực quản, Viêm đại tràng mạn tính, viêm gan B. Thận tiết niệu: Sỏi thận, Viêm bàng quang, Phì đại tiền liệt tuyến. Cơ xương khớp: Thoát vị đĩa đệm cột sống thắt lưng, Thoát vị đĩa đệm cột sống cổ. Vô sinh hiếm muộn.', 'Đại học Y Hà Nội', NULL),
(144, 'Bác sĩ CK2 Nguyễn Xuân Thắng', 'Y học cổ truyền', 'Bệnh viện 115 HCM', 'Hồ Chí Minh', 'public/images/doctor/drnguyenxuanthang.jpg', 'chuyên khoa YHCT & phục hồi chức năng nên chuyên môn khá nhiều lĩnh vực. Nhưng thế mạnh là khám & điều trị cơ xương khớp, cột sống, liệt do đột quỵ, tập cho bệnh nhân rối loạn ngôn ngữ sau đột quỵ và các bệnh thần kinh', 'Đại học y dược HCM', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(32) NOT NULL,
  `p_name` varchar(12) DEFAULT NULL,
  `p_dob` varchar(8) DEFAULT NULL,
  `p_desc` varchar(12) DEFAULT NULL,
  `p_address` varchar(22) DEFAULT NULL,
  `user_id` int(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `p_name`, `p_dob`, `p_desc`, `p_address`, `user_id`) VALUES
(0, 'asd', NULL, 'asd', 'asdasd', 1),
(1, 'asd', NULL, 'asd232', 'asdasdwqre', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(32) NOT NULL,
  `firstname` varchar(128) NOT NULL,
  `lastname` varchar(128) NOT NULL,
  `username` varchar(128) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `user_type` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `user_type`) VALUES
(1, 'Dau', 'Gia', 'kien.dauoofman', 'captainjack981@gmail.com', '123', 'patient'),
(2, 'Dau', 'Gia', 'qwe', 'captainjack981@gmail.com', '123', 'admin'),
(3, '3454', '1sad', 'wer', 'captainjack981@gmail.com', '123', 'patient'),
(4, 'Dau', 'Gia', 'rdt', 'captainjack981@gmail.com', '123', 'doctor'),
(5, 'Dau', 'Gia', 'asd', 'captainjack981@gmail.com', '123', 'patient'),
(7, 'wert', 'hgdfh', 'zxc', 'captainjack981@gmail.com', '123', 'doctor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`ap_id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`md_id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
