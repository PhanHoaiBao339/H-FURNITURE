CREATE DATABASE `hfurniture`;
USE `hfurniture`;
 
/* SQLINES DEMO *** le [dbo].[Accounts]    Script Date: 05-11-2022 11:43:36 PM ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 

CREATE TABLE `Accounts`(
	`Username` varchar(25) NOT NULL,
	`Email` varchar(64) NULL,
	`Password` varchar(25) NOT NULL,
	`Fullname` nvarchar(50) NULL,
	`Gender` Tinyint NULL,
	`Birthday` date NULL,
	`Phone` varchar(11) NULL,
	`Address` nvarchar(255) NULL,
	`Photo` nvarchar(50) NULL,
	`Active` Tinyint NOT NULL,
	`CreateDay` Datetime(0) NULL,
	`DeleteDay` Datetime(0) NULL,
	`UpdateDay` Datetime(0) NULL,
	`PersonDelete` varchar(25) NULL,
	`PersonUpdate` varchar(25) NULL,
PRIMARY KEY 
(
	`Username` ASC
) 
);
/* SQLINES DEMO *** le [dbo].[Authorities]    Script Date: 05-11-2022 11:43:36 PM ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 

CREATE TABLE `Authorities`(
	`Id` int AUTO_INCREMENT NOT NULL,
	`AccountId` varchar(25) NOT NULL,
	`RoleId` varchar(10) NOT NULL,
PRIMARY KEY 
(
	`Id` ASC
) 
);
/* SQLINES DEMO *** le [dbo].[Categories]    Script Date: 05-11-2022 11:43:36 PM ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 

CREATE TABLE `Categories`(
	`Id` varchar(20) NOT NULL,
	`Name` nvarchar(50) NOT NULL,
	`Active` Tinyint NOT NULL,
	`CreateDay` Datetime(0) NULL,
	`DeleteDay` Datetime(0) NULL,
	`UpdateDay` Datetime(0) NULL,
	`PersonCreate` varchar(25) NULL,
	`PersonDelete` varchar(25) NULL,
	`PersonUpdate` varchar(25) NULL,
PRIMARY KEY 
(
	`Id` ASC
) 
);
/* SQLINES DEMO *** le [dbo].[Comments]    Script Date: 05-11-2022 11:43:36 PM ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 

CREATE TABLE `Comments`(
	`Id` bigint AUTO_INCREMENT NOT NULL,
	`AccountId` varchar(25) NOT NULL,
	`ProductId` varchar(20) NOT NULL,
	`Text` nvarchar(250) NOT NULL,
	`CreateDay` Datetime(0) NOT NULL,
PRIMARY KEY 
(
	`Id` ASC
) 
);
/* SQLINES DEMO *** le [dbo].[News]    Script Date: 05-11-2022 11:43:36 PM ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 

CREATE TABLE `News`(
	`Id` varchar(10) NOT NULL,
	`Name` nvarchar(50) NOT NULL,
	`Type` nvarchar(10) NULL,
	`Content` Longtext NULL,
PRIMARY KEY 
(
	`Id` ASC
) 
);
/* SQLINES DEMO *** le [dbo].[OrderDetails]    Script Date: 05-11-2022 11:43:36 PM ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 

CREATE TABLE `OrderDetails`(
	`Id` bigint AUTO_INCREMENT NOT NULL,
	`OrderId` bigint NOT NULL,
	`ProductId` varchar(20) NOT NULL,
	`Price` Double NULL,
	`Quantity` int NULL,
PRIMARY KEY 
(
	`Id` ASC
) 
);
/* SQLINES DEMO *** le [dbo].[Orders]    Script Date: 05-11-2022 11:43:36 PM ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 

CREATE TABLE `Orders`(
	`Id` bigint AUTO_INCREMENT NOT NULL,
	`Username` varchar(25) NOT NULL,
	`CreateDate` Datetime(0) NOT NULL,
	`Address` nvarchar(255) NULL,
	`StatusId` varchar(10) NOT NULL,
PRIMARY KEY 
(
	`Id` ASC
) 
);
/* SQLINES DEMO *** le [dbo].[Products]    Script Date: 05-11-2022 11:43:36 PM ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 

CREATE TABLE `Products`(
	`Id` varchar(20) NOT NULL,
	`Name` nvarchar(100) NOT NULL,
	`Price` Double NOT NULL,
	`Image1` varchar(80) NULL,
	`Image2` varchar(80) NULL,
	`Image3` varchar(80) NULL,
	`Available` Tinyint NOT NULL,
	`Status` Tinyint NOT NULL,
	`SubstanceDes` nvarchar(255) NULL,
	`Contents` Longtext NULL,
	`Size` varchar(60) NULL,
	`PromotionId` varchar(10) NULL,
	`CategoryId` varchar(20) NULL,
	`CreateDay` Datetime(0) NULL,
	`DeleteDay` Datetime(0) NULL,
	`UpdateDay` Datetime(0) NULL,
	`PersonCreate` varchar(25) NULL,
	`PersonDelete` varchar(25) NULL,
	`PersonUpdate` varchar(25) NULL,
PRIMARY KEY 
(
	`Id` ASC
) 
);
/* SQLINES DEMO *** le [dbo].[Promotions]    Script Date: 05-11-2022 11:43:36 PM ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 

CREATE TABLE `Promotions`(
	`Id` varchar(10) NOT NULL,
	`Detail` nvarchar(255) NULL,
	`Active` Tinyint NOT NULL,
	`Percent` int NOT NULL,
PRIMARY KEY 
(
	`Id` ASC
) 
);
/* SQLINES DEMO *** le [dbo].[Roles]    Script Date: 05-11-2022 11:43:36 PM ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 

CREATE TABLE `Roles`(
	`Id` varchar(10) NOT NULL,
	`Name` nvarchar(10) NOT NULL,
PRIMARY KEY 
(
	`Id` ASC
) 
);
/* SQLINES DEMO *** le [dbo].[StatusOrders]    Script Date: 05-11-2022 11:43:36 PM ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 

CREATE TABLE `StatusOrders`(
	`Id` varchar(10) NOT NULL,
	`Name` nvarchar(50) NOT NULL,
PRIMARY KEY 
(
	`Id` ASC
) 
);
/* SQLINES DEMO *** le [dbo].[Substance_Products]    Script Date: 05-11-2022 11:43:36 PM ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 

CREATE TABLE `Substance_Products`(
	`Id` int AUTO_INCREMENT NOT NULL,
	`SubstanceDetailId` varchar(10) NOT NULL,
	`ProductId` varchar(20) NOT NULL,
PRIMARY KEY 
(
	`Id` ASC
) 
);
/* SQLINES DEMO *** le [dbo].[SubstanceDetail]    Script Date: 05-11-2022 11:43:36 PM ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 

CREATE TABLE `SubstanceDetail`(
	`Id` varchar(10) NOT NULL,
	`Name` nvarchar(100) NULL,
PRIMARY KEY 
(
	`Id` ASC
) 
);

INSERT `Accounts` (`Username`, `Email`, `Password`, `Fullname`, `Gender`, `Birthday`, `Phone`, `Address`, `Photo`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonDelete`, `PersonUpdate`) VALUES ('administrator', 'tanphat9859@gmail.com', 'admin@123', 'Tài khoản admin', 1, NULL, '', '', '', 1, NULL, NULL, NULL, '', '');

INSERT `Accounts` (`Username`, `Email`, `Password`, `Fullname`, `Gender`, `Birthday`, `Phone`, `Address`, `Photo`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonDelete`, `PersonUpdate`) VALUES ('congthanh15305', 'thanhlcps15305@fpt.edu.vn', '369299584', 'Lê Công Thành', 1, NULL, '369299584', '', '', 1, NULL, NULL, NULL, '', '');

INSERT `Accounts` (`Username`, `Email`, `Password`, `Fullname`, `Gender`, `Birthday`, `Phone`, `Address`, `Photo`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonDelete`, `PersonUpdate`) VALUES ('dangkhoa15449', 'khoaldps15449@fpt.edu.vn', '898524485', 'Lê Đăng Khoa', 1, NULL, '898524485', '', '', 1, NULL, NULL, NULL, '', '');

INSERT `Accounts` (`Username`, `Email`, `Password`, `Fullname`, `Gender`, `Birthday`, `Phone`, `Address`, `Photo`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonDelete`, `PersonUpdate`) VALUES ('daouyen16716', 'uyendtps16716@fpt.edu.vn', '357628935', 'Đào Thị Uyên', 0, NULL, '357628935', '', '', 1, NULL, NULL, NULL, '', '');

INSERT `Accounts` (`Username`, `Email`, `Password`, `Fullname`, `Gender`, `Birthday`, `Phone`, `Address`, `Photo`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonDelete`, `PersonUpdate`) VALUES ('ducphat15413', 'phatndps15413@fpt.edu.vn', '339792319', 'Nguyễn Đức Phát', 1, NULL, '339792319', '', '', 1, NULL, NULL, NULL, '', '');

INSERT `Accounts` (`Username`, `Email`, `Password`, `Fullname`, `Gender`, `Birthday`, `Phone`, `Address`, `Photo`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonDelete`, `PersonUpdate`) VALUES ('hoaibao15317', 'baophps15317@fpt.edu.vn', '793818670', 'Phan Hoài Bảo', 1, NULL, '793818670', '463 Dương Thị Mười, Phường Tân Chánh Hiệp, Q12, Hồ Chí Minh', '', 1, NULL, NULL, NULL, '', '');

INSERT `Accounts` (`Username`, `Email`, `Password`, `Fullname`, `Gender`, `Birthday`, `Phone`, `Address`, `Photo`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonDelete`, `PersonUpdate`) VALUES ('tanphat15403', 'phathtps15403@fpt.edu.vn', '347803555', 'Huỳnh Tấn Phát', 1, CAST('1998-06-06' AS Date), '347803555', '', '', 1, NULL, NULL, NULL, '', '');

INSERT `Accounts` (`Username`, `Email`, `Password`, `Fullname`, `Gender`, `Birthday`, `Phone`, `Address`, `Photo`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonDelete`, `PersonUpdate`) VALUES ('thanhngan15765', 'nganntps15765@fpt.edu.vn', '941439361', 'Nguyễn Thanh Ngân', 0, NULL, '941439361', '', '', 1, NULL, NULL, NULL, '', '');

INSERT `Accounts` (`Username`, `Email`, `Password`, `Fullname`, `Gender`, `Birthday`, `Phone`, `Address`, `Photo`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonDelete`, `PersonUpdate`) VALUES ('thanhtung15314', 'tungltps15314@fpt.edu.vn', '941996062', 'Lê Thanh Tùng', 1, NULL, '941996062', '', '', 1, NULL, NULL, NULL, '', '');

INSERT `Accounts` (`Username`, `Email`, `Password`, `Fullname`, `Gender`, `Birthday`, `Phone`, `Address`, `Photo`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonDelete`, `PersonUpdate`) VALUES ('thanhtuyen15840', 'tuyennttps15840@fpt.edu.vn', '397030931', 'Nguyễn Thị Thanh Tuyền', 0, NULL, '397030931', '', '', 1, NULL, NULL, NULL, '', '');

INSERT `Accounts` (`Username`, `Email`, `Password`, `Fullname`, `Gender`, `Birthday`, `Phone`, `Address`, `Photo`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonDelete`, `PersonUpdate`) VALUES ('vanhai15407', 'haigvps15407@fpt.edu.vn', '866417438', 'Giáp Văn Hải', 1, NULL, '866417438', '', '', 1, NULL, NULL, NULL, '', '');

INSERT `Accounts` (`Username`, `Email`, `Password`, `Fullname`, `Gender`, `Birthday`, `Phone`, `Address`, `Photo`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonDelete`, `PersonUpdate`) VALUES ('xuanmai12019', 'maintxps12019@fpt.edu.vn', '829990649', 'Nguyễn Thị Xuân Mai', 0, NULL, '829990649', '', '', 1, NULL, NULL, NULL, '', '');
 
/* SET IDENTITY_INSERT [dbo].[Authorities] ON */ 


INSERT `Authorities` (`Id`, `AccountId`, `RoleId`) VALUES (1, 'administrator', 'ADMIN');

INSERT `Authorities` (`Id`, `AccountId`, `RoleId`) VALUES (2, 'tanphat15403', 'ADMIN');

INSERT `Authorities` (`Id`, `AccountId`, `RoleId`) VALUES (3, 'hoaibao15317', 'ADMIN');

INSERT `Authorities` (`Id`, `AccountId`, `RoleId`) VALUES (4, 'congthanh15305', 'ADMIN');

INSERT `Authorities` (`Id`, `AccountId`, `RoleId`) VALUES (5, 'thanhtung15314', 'ADMIN');

INSERT `Authorities` (`Id`, `AccountId`, `RoleId`) VALUES (6, 'thanhtuyen15840', 'USER');

INSERT `Authorities` (`Id`, `AccountId`, `RoleId`) VALUES (7, 'daouyen16716', 'USER');

INSERT `Authorities` (`Id`, `AccountId`, `RoleId`) VALUES (8, 'thanhngan15765', 'USER');

INSERT `Authorities` (`Id`, `AccountId`, `RoleId`) VALUES (9, 'xuanmai12019', 'USER');

INSERT `Authorities` (`Id`, `AccountId`, `RoleId`) VALUES (10, 'vanhai15407', 'USER');

INSERT `Authorities` (`Id`, `AccountId`, `RoleId`) VALUES (11, 'ducphat15413', 'USER');

INSERT `Authorities` (`Id`, `AccountId`, `RoleId`) VALUES (12, 'dangkhoa15449', 'USER');
/* SET IDENTITY_INSERT [dbo].[Authorities] OFF */
 

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY1', 'Armchair', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY10', 'Bình trang trí', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY11', 'Dụng cụ bếp', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY12', 'Đèn trang trí', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY13', 'Đồng hồ', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY14', 'Ghế ăn', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY15', 'Ghế Bar', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY16', 'Ghế dài & đôn', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY17', 'Ghế làm việc', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY18', 'Ghế ngoài trời', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY19', 'Ghế thư giãn', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY2', 'Bàn ăn', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY20', 'Gối và thú bông', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY21', 'Gương', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY22', 'Giường ngủ', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY23', 'Hàng trang trí khác', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY24', 'Hoa và cây', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY25', 'Kệ sách', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY26', 'Kệ trưng bày', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY27', 'Khung hình', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY28', 'Michael Aram', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY29', 'Nệm', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY3', 'Bàn bên', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY30', 'Nến & chân nến', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY31', 'Sofa', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY32', 'Sofa góc', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY33', 'Tủ áo', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY34', 'Tủ âm tường', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY35', 'Tủ bếp', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY36', 'Tủ giày', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY37', 'Tủ hộc kéo', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY38', 'Tủ ly', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY39', 'Tủ tivi', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY4', 'Bàn Console', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY40', 'Tượng trang trí', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY41', 'Thảm trang trí', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY42', 'Thiết bị bếp', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY43', 'Tranh', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY44', 'Xe đẩy', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY5', 'Bàn đầu giường', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY6', 'Bàn làm việc', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY7', 'Bàn nước', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY8', 'Bàn ngoài trời', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY9', 'Bàn trang điểm', 1, NULL, NULL, NULL, '', '', '');
 

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY1_PRO01', 'Armchair + Đôn Cabo PMA42005 KD1092-6', 23000000, 'CTGY1_PRO1 (1).jpg', 'CTGY1_PRO1 (2).jpg', 'CTGY1_PRO1 (3).jpg', 1, 1, 'Khung gỗ Walnut, nệm bọc vải', 'Armchair Cabo được thiết kế nhỏ gọn nhằm tiết kiệm diện tích. Phần khung được làm từ gỗ walnut bền bỉ và nệm ghế được bọc vải mềm mại tạo nên tổng thể thiết kế sang trọng. Armchair Cabo sử dụng kết hợp với Đôn Cabo càng làm tăng cảm giác dễ chịu khi ngồi khi đọc sách hoặc làm việc.', 'D745 - R850 - C745 / D500 - R400 - C400 mm', NULL, 'CTGY1', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY1_PRO02', 'Armchair + Đôn Cabo PMA42005 KD1092-12', 23000000, 'CTGY1_PRO2 (1).jpg', 'CTGY1_PRO2 (2).jpg', 'CTGY1_PRO2 (3).jpg', 1, 1, 'Khung gỗ Walnut, nệm bọc vải', 'Armchair Cabo được thiết kế nhỏ gọn nhằm tiết kiệm diện tích. Phần khung được làm từ gỗ walnut bền bỉ và nệm ghế được bọc vải mềm mại tạo nên tổng thể thiết kế sang trọng. Armchair Cabo sử dụng kết hợp với Đôn Cabo càng làm tăng cảm giác dễ chịu khi ngồi khi đọc sách hoặc làm việc.', 'D745 - R850 - C745 / D500 - R400 - C400 mm', NULL, 'CTGY1', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY1_PRO03', 'Armchair Polo + gối simili xám', 8740000, 'CTGY1_PRO3 (1).jpg', 'CTGY1_PRO3 (2).jpg', 'CTGY1_PRO3 (3).jpg', 1, 1, 'Khung gỗ bọc da công nghiệp', 'Đối với những tín đồ của phong cách bán cổ điển thì chiếc ghế armchair Polo này rất đáng để thử. Nhờ vào thiết kế với những đường cong nhẹ nhàng, vừa đủ và phần vải bọc trung tính, armchair có thể đi kèm với rất nhiều phong cách và không gian khác nhau, từ phòng khách đến phòng ngủ và cả phòng đọc sách.', 'D680 - R680 - C770  mm', NULL, 'CTGY1', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY1_PRO04', 'Armchair Polo + gối vải xám', 8740000, 'CTGY1_PRO4 (1).jpg', 'CTGY1_PRO4 (2).jpg', 'CTGY1_PRO4 (3).jpg', 1, 1, 'Khung gỗ bọc vải', 'Đối với những tín đồ của phong cách bán cổ điển thì chiếc ghế armchair Polo này rất đáng để thử. Nhờ vào thiết kế với những đường cong nhẹ nhàng, vừa đủ và phần vải bọc trung tính, armchair có thể đi kèm với rất nhiều phong cách và không gian khác nhau, từ phòng khách đến phòng ngủ và cả phòng đọc sách.', 'D680 - R680 - C770  mm', NULL, 'CTGY1', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY1_PRO05', 'Armchair Polo + gối vải xanh xám', 8740000, 'CTGY1_PRO5 (1).jpg', 'CTGY1_PRO5 (2).jpg', 'CTGY1_PRO5 (3).jpg', 1, 1, 'Khung gỗ bọc vải', 'Đối với những tín đồ của phong cách bán cổ điển thì chiếc ghế armchair Polo này rất đáng để thử. Nhờ vào thiết kế với những đường cong nhẹ nhàng, vừa đủ và phần vải bọc trung tính, armchair có thể đi kèm với rất nhiều phong cách và không gian khác nhau, từ phòng khách đến phòng ngủ và cả phòng đọc sách.', 'D680 - R680 - C770  mm', NULL, 'CTGY1', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY1_PRO06', 'Armchair Bridge Gỗ Nâu Da cognac', 64900000, 'CTGY1_PRO6 (1).jpg', 'CTGY1_PRO6 (2).jpg', 'CTGY1_PRO6 (3).jpg', 1, 1, 'Khung gỗ sồi đặc tự nhiên nhập khẩu từ Mỹ - Da Ý tự nhiên cao cấp', 'Sự gần gũi, sang trọng của chất liệu gỗ sồi và da tự nhiên Ý giúp armchair Bridge xứng đáng là sản phẩm được lựa chọn cho không gian hiện đại. Kết cấu thiết kế được tính toán khoa học từ tỉ lệ lưng tựa cho đến phần tay vịn mang lại cảm giác thoải mái cho bạn. Bridge – Tình yêu thiên nhiên và sức quyến rũ của gỗ. Bộ sưu tập Bridge mang hơi thở Scandinavian là sự kết hợp hoàn hảo của nhà thiết kế nổi tiếng Đan Mạch Hans Sandgren Jakobsen cùng công nghệ sản xuất thủ công của Nhật Bản. Mang thiết kế vượt thời gian, sử dụng chất liệu gỗ sồi và da bò tự nhiên, Bridge mang đến cảm giác sang trọng, gần gũi và thoải mái cho gia chủ. Điểm nổi bật của Bridge là sự tinh xảo trong hoàn thiện, từng chi tiết, những đường cong, bề mặt gỗ sồi được thực hiện và chọn lựa vô cùng kỹ càng, để tạo ra một Bridge hoàn hảo, chạm đến tâm hồn đầy cảm xúc và yêu quý những giá trị lâu bền của gia chủ Việt.', 'D900 - R900 - C750 mm', NULL, 'CTGY1', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY1_PRO07', 'Armchair Osaka vải 29', 14900000, 'CTGY1_PRO7 (1).jpg', 'CTGY1_PRO7 (2).jpg', '', 1, 1, 'Khung inox 304 PVD bọc vải cao cấp', '', 'D670 - R770 - C660/400 mm', NULL, 'CTGY1', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY1_PRO08', 'Armchair Osaka vải 46', 14900000, 'CTGY1_PRO8 (1).jpg', 'CTGY1_PRO8 (2).jpg', '', 1, 1, 'Khung inox 304 PVD bọc vải cao cấp', '', 'D670 - R770 - C660/400 mm', NULL, 'CTGY1', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY1_PRO09', 'Armchair Leonard Leat/Meta 37528P', 28520000, 'CTGY1_PRO9 (1).jpg', 'CTGY1_PRO9 (2).jpg', '', 1, 1, 'khung kim loại nhồi, nệm bọc da tổng hợp', '', 'D600 - R770 - H730 mm', NULL, 'CTGY1', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY1_PRO10', 'Armchair Xoay Club Walnut 82994K', 28200000, 'CTGY1_PRO10 (1).jpg', 'CTGY1_PRO10 (2).jpg', 'CTGY1_PRO10 (3).jpg', 1, 1, 'Chân kim loại xoay, lưng ốp gỗ Walnut, nệm 100 % polyurethane', '', 'D620 - R610 - C680 mm', NULL, 'CTGY1', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY10_PRO001', 'Bình hoa Matteo L Turquoise 114709E', 7700000, 'CTGY10_PRO01 (1).jpg', '', '', 1, 1, 'Thủy tinh xanh', '', 'Ø190 - C390 mm', NULL, 'CTGY10', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY10_PRO002', 'Bình hoa gốm hình vuông xanh dương FLC059', 5780000, 'CTGY10_PRO02 (1).jpg', 'CTGY10_PRO2 (2).jpg', '', 1, 1, 'Gốm', '', 'Ø160 - C330 mm', NULL, 'CTGY10', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY10_PRO003', 'Bình hoa gốm đỏ 16×32 FLC002', 4450000, 'CTGY10_PRO03 (1).jpg', 'CTGY10_PRO3 (2).jpg', '', 1, 1, 'Gốm', '', 'Ø160 - C320 mm', NULL, 'CTGY10', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY10_PRO004', 'Bình hoa gốm xanh đậm FLC002', 4450000, 'CTGY10_PRO04 (1).jpg', 'CTGY10_PRO04 (2).jpg', '', 1, 1, 'Gốm', '', 'Ø160 - C320 mm', NULL, 'CTGY10', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY10_PRO005', 'Bình Sacha Blanc', 1710000, 'CTGY10_PRO05 (1).jpg', '', '', 1, 1, 'Gốm', '', 'C250 mm', NULL, 'CTGY10', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY10_PRO006', 'Chậu hoa Paulownia trắng lớn 26X26X23WD 11170', 1940000, 'CTGY10_PRO06 (1).jpg', 'CTGY10_PRO06 (2).jpg', 'CTGY10_PRO06 (3).jpg', 1, 1, 'Gỗ công nghiệp, nhựa công nghiện', '', 'D260 - R260 - C230 mm', NULL, 'CTGY10', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY10_PRO007', 'Chậu hoa gốm Ocher lớn 16.5×16.5cm 22977', 950000, 'CTGY10_PRO07 (1).jpg', 'CTGY10_PRO07 (2).jpg', 'CTGY10_PRO07 (3).jpg', 1, 1, 'Gốm', '', 'D165 - R165 - C165 mm', NULL, 'CTGY10', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY10_PRO008', 'Chậu hoa gốm xanh lá lớn 16.5×16.5cm 22980', 950000, 'CTGY10_PRO08 (1).jpg', 'CTGY10_PRO08 (2).jpg', '', 1, 1, 'Gốm', '', 'D165 - R165 - C165 mm', NULL, 'CTGY10', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY10_PRO009', 'Chậu hoa treo xi măng taupe lớnl 20×19.5 22779', 760000, 'CTGY10_PRO09 (1).jpg', 'CTGY10_PRO09 (2).jpg', '', 1, 1, 'Xi măng', '', 'D200 - R200 - C195 mm', NULL, 'CTGY10', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY10_PRO010', 'Bình hoa Darius', 11980000, 'CTGY10_PRO010 (1).jpg', '', '', 1, 1, 'Thủy tinh', '', 'D400- R230- C150 mm', NULL, 'CTGY10', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY11_PRO001', 'Ấm trà Infuseur Imany', 1300000, 'CTGY11_PRO01 (1).jpg', '', '', 1, 1, 'Gốm sứ', '', 'D147 - R120 - C130 mm', NULL, 'CTGY11', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY11_PRO002', 'Ấm trà sọc xanh trắng QV31913', 790000, 'CTGY11_PRO02 (1).jpg', '', '', 1, 1, 'Gốm sứ', '', 'D190-R155-C155 mm', NULL, 'CTGY11', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY11_PRO003', 'Khay deco Parrot 52914K', 1030000, 'CTGY11_PRO03 (1).jpg', 'CTGY11_PRO03 (2).jpg', 'CTGY11_PRO03 (3).jpg', 1, 1, 'Nhựa, sơn thủ công màu gold - xanh', '', 'D205 - R100 - C140 mm', NULL, 'CTGY11', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY11_PRO004', 'Chén hồng QV51992', 140000, 'CTGY11_PRO04 (1).jpg', '', '', 1, 1, 'Gốm sứ cao cấp', '', 'D105-R105-C60 mm', NULL, 'CTGY11', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY11_PRO005', 'Bát nón số 1 hoa xanh', 1200000, 'CTGY11_PRO05 (1).jpg', '', '', 1, 1, 'Gốm Bát Tràng chạm hợp kim', '', 'Ø200 - C70', NULL, 'CTGY11', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY11_PRO006', 'Bộ 2 lá trang trí Metal 93X28-148776C', 2200000, 'CTGY11_PRO06 (1).jpg', '', '', 1, 1, 'Kim loại', '', 'D300 - R360 mm', NULL, 'CTGY11', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY11_PRO007', 'Dĩa Cá Xanh', 799000, 'CTGY11_PRO07 (1).jpg', 'CTGY11_PRO07 (2).jpg', '', 1, 1, 'Gốm sứ', '', 'Ø280 - C320 mm', NULL, 'CTGY11', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY11_PRO008', 'Chén trắng viền nhũ vàng QV51992', 170000, 'CTGY11_PRO08 (1).jpg', '', '', 1, 1, 'Gốm sứ cao cấp', '', 'D127-R127-C60 mm', NULL, 'CTGY11', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY11_PRO009', 'Khay gốm Ninfea màu xám smoke grey', 2455000, 'CTGY11_PRO09 (1).jpg', 'CTGY11_PRO09 (2).jpg', '', 1, 1, 'Gốm', 'Thương hiệu Ý -Calligaris', 'D402 - R160 - C15 mm', NULL, 'CTGY11', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY11_PRO010', 'Tô xanh hoa trắng', 860000, 'CTGY11_PRO010 (1).jpg', '', '', 1, 1, 'Gốm Bát Tràng chạm hợp kim', '', 'Ø200 - C90', NULL, 'CTGY11', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY12_PRO001', 'Đèn bàn Lombard 107338E', 17200000, 'CTGY12_PRO01 (1).jpg', 'CTGY12_PRO01 (2).jpg', '', 1, 1, 'Thủy tinh pha lê, hoàn thiện bằng niken, hình dạng 90% polyester, 10% bông', '', 'Ø350 - C530 mm', NULL, 'CTGY12', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY12_PRO002', 'Đèn chùm trang trí H80 373008', 8970000, 'CTGY12_PRO02 (1).jpg', '', '', 1, 1, 'Kim loại, Thủy tinh', '', 'Ø750 - C900 mm', NULL, 'CTGY12', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY12_PRO003', 'Đèn bàn Savona', 19670000, 'CTGY12_PRO03 (1).jpg', 'CTGY12_PRO03 (2).jpg', '', 1, 1, 'Gốm, vải', 'Thêm điểm nhấn về kết cấu cho mặt bàn của bạn với Đèn bàn Savona tinh xảo, có đế đèn bằng sứ trắng có chạm khắc hình xoắn ốc. Vẻ ngoài đặc biệt của nó được thể hiện bởi đế đèn hoàn thiện bằng đồng cổ và một chao đèn màu kem đơn giản.', 'D260 - R580 - C660 mm', NULL, 'CTGY12', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY12_PRO004', 'Đèn bàn Kelcie', 21900000, 'CTGY12_PRO04 (1).jpg', '', '', 1, 1, 'Vải, thạch cao', 'Đèn bàn, đèn trang trí phòng khách, phòng ngủ từ lâu không chỉ đơn thuần là giải pháp cung cấp ánh sáng, mà còn là một vật dụng nội thất trang trí giúp gia tăng tính thẩm mỹ, phong cách trong không gian của gia đình bạn.', 'D420 - R220 - C540 mm Bóng 60W', NULL, 'CTGY12', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY12_PRO005', 'Đèn trần Crystal 5 bóng màu Gold', 26000000, 'CTGY12_PRO05 (1).jpg', '', '', 1, 1, 'Kim loại', '', 'D560 - R540', NULL, 'CTGY12', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY12_PRO006', 'Đèn treo Prisma Ice Cube', 12900000, 'CTGY12_PRO06 (1).jpg', 'CTGY12_PRO06 (2).jpg', 'CTGY12_PRO06 (3).jpg', 1, 1, 'Thép, kính', '', 'D410- R410- C161 mm', NULL, 'CTGY12', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY12_PRO007', 'Đèn trần Black E27-40W', 666300, 'CTGY12_PRO07 (1).jpg', '', '', 1, 1, 'Nhựa', '', 'Ø350', NULL, 'CTGY12', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY12_PRO008', 'Đèn áp trần trang trí Kinan white', 6900000, 'CTGY12_PRO08 (1).jpg', 'CTGY12_PRO08 (2).jpg', '', 1, 1, 'Kim loại', '', 'D540 - R540 - C300 mm', NULL, 'CTGY12', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY12_PRO009', 'Đèn đứng Anea', 7500000, 'CTGY12_PRO09 (1).jpg', 'CTGY12_PRO09 (2).jpg', 'CTGY12_PRO09 (3).jpg', 1, 1, 'Kim loại', '', 'D585 - R 254 C1675 mm', NULL, 'CTGY12', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY12_PRO010', 'Đèn bàn Ignes', 3300000, 'CTGY12_PRO10 (1).jpg', 'CTGY12_PRO10 (2).jpg', '', 1, 1, 'Kim loại', '', 'D280- R200- C635 mm', NULL, 'CTGY12', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY13_PRO001', 'Đồng hồ để bàn báo thức ALU COPPAR 15X11 KA5721', 960000, 'CTGY13_PRO01 (1).jpg', '', '', 1, 1, 'Kim loại mạ đồng, kính', '', 'D110 - C150 mm', NULL, 'CTGY13', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY13_PRO002', 'Đồng hồ để bàn BAN WORLD', 890000, 'CTGY13_PRO02 (1).jpg', 'CTGY13_PRO02 (2).jpg', '', 1, 1, 'Kim loại nhôm, mặt kính trắng - nhập khẩu Ấn Độ', '', 'Ø125- C140 mm', NULL, 'CTGY13', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY13_PRO003', 'Đồng hồ để bàn SB FINSIH 53185', 1300000, 'dsc05824.jpg', 'dsc05826-768x511.jpg', '', 1, 1, 'Kim loại', '', '9 x 9 x C7cm', NULL, 'CTGY13', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY13_PRO004', 'Đồng hồ để bàn Brass kim loại 6″ 54131', 1300000, 'Dong-ho-de-ban-Brass-6p-SB-54131-1-768x495.jpg', '', '', 1, 1, 'Kim loại, Thủy tinh', '', 'D175-R90-C260 mm', NULL, 'CTGY13', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY13_PRO005', 'Đồng hồ để bàn SB/ Satin Grey 55254', 2200000, 'dsc05783.jpg', 'dsc05784-768x511.jpg', '', 1, 1, 'Kin loại', '', 'N26 x C40 x X12', NULL, 'CTGY13', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY13_PRO006', 'Đồng hồ để bàn SB FINSIH 53216', 1100000, 'dsc05817.jpg', 'dsc05819.jpg', '', 1, 1, 'Kin loại', '', 'C7 x N9 x X5', NULL, 'CTGY13', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY13_PRO007', 'Đồng hồ để bàn STEEL/ ALUM BL 53715', 2900000, 'dsc05795.jpg', 'dsc05796-768x511.jpg', '', 1, 1, 'Kin loại', '', '25 x 12 x 40', NULL, 'CTGY13', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY13_PRO008', 'Đồng hồ treo tường Nickel bọc da', 4230000, '65161-noi-that-nha-xinh-dong-treo-tuong-boc-da1.jpg', '', '', 1, 1, 'Kin loại', '', 'Ø310', NULL, 'CTGY13', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY14_PRO001', 'Ghế Hudson Beige 80006K', 10900000, 'GHE-HUDSON-BEIGE-80006K-3105860-768x511.jpg', 'GHE-HUDSON-BEIGE-80006K-3105860-4-768x511.jpg', '', 1, 1, 'Chân kim loại sơn 2 màu đen, gold - nệm bọc vải', '', 'D490 - R540 - C840 mm', NULL, 'CTGY14', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY14_PRO002', 'Ghế ăn Peak vải xanh', 4900000, 'ghe-an-peak-mau-xanh-1-768x511.jpg', 'ghe-an-peak-mau-xanh-2-768x511.jpg', '', 1, 1, 'Bọc Vải, Chân sắt sơn tĩnh điện màu đen', '', 'D470-R490-C800mm', NULL, 'CTGY14', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY14_PRO003', 'Ghế ăn Peak vải cam', 4900000, 'ghe-an-peak-mau-cam-hien-dai-1-768x511.jpg', 'ghe-an-peak-mau-cam-hien-dai-2-768x511.jpg', '', 1, 1, 'Bọc Vải, Chân sắt sơn tĩnh điện màu đen', '', 'D470-R490-C800mm', NULL, 'CTGY14', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY14_PRO004', 'Nệm ngồi ghế Elegance da Semia đen S2', 3920000, '102414-ghe-elegance-da-den-semia-768x511.jpg', '', '', 1, 1, 'Da bò thật', 'Phần nệm ngồi đặt trên ghế', 'D380 - R370 - C10 mm', NULL, 'CTGY14', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY14_PRO005', 'Ghế Bridge Gỗ màu Tự nhiên Da đen', 18800000, '1000-ghe-bridge2-768x511.jpg', 'phong-an-bridge3.jpg', '', 1, 1, 'Gỗ sồi đặc tự nhiên nhập khẩu từ Mỹ- Da Ý tự nhiên cao cấp', 'Cảm giác thoái mái và dễ chịu của ghế ăn Bridge mang lại là trải nghiệm tuyệt vời bằng việc sử dụng chất liệu da ý mềm mại và gỗ sồi tự nhiên. Đặc biệt, phần lưng ghế của Bridge được thực hiện thủ công với độ khó gấp 10 lần thông thường tạo ra một sản phẩm hoàn hảo, đẹp ở mọi góc nhìn.', 'D600- R500- C680 mm', NULL, 'CTGY14', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY14_PRO006', 'Ghế ăn Harry', 10700000, '84681-ghe-an-harry-1-768x511.jpg', '84681-ghe-an-harry-5-768x511.jpg', '', 1, 1, 'Chân kim loại mặt ngồi khung ván ép công nghiệp bọc da công nghiệp', '', 'D630 - R600 - C840 mm', NULL, 'CTGY14', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY14_PRO007', 'Ghế ăn Mây – da Mushroom', 7700000, 'ghe-an-may-kem-768x511.jpg', 'nhaxinh-phong-an-may-201210-768x511.jpg', '', 1, 1, 'Gỗ Acacia ( Tràm )- Mây tự nhiên- Nệm bọc da- Chân bọc inox mạ đồng', '', 'D510-R530-C880', NULL, 'CTGY14', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY14_PRO008', 'Ghế ăn Miami vải màu kem', 3900000, 'Ghe-an-Miami-vai-mau-kem-768x511.jpg', 'Ghe-an-Miami-vai-mau-kem-1-768x495.jpg', '', 1, 1, 'Gỗ sồi tự nhiên bọc vải', '', 'D540 - R450 - C820', NULL, 'CTGY14', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY15_PRO001', 'Ghế Bar Bridge màu nâu Da Cognac', 29900000, 'ghe-bar-bridge-mau-nau-cognac-go-soi-768x511.jpg', '', '', 1, 1, 'Khung gỗ sồi đặc tự nhiên nhập khẩu từ Mỹ - da Ý tự nhiên cao cấp', '', 'D500 - R500 - C750/980 mm', NULL, 'CTGY15', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY15_PRO002', 'Ghế bar Fifties da màu cognac', 20450000, '103801-ghe-bar-fifties-da-cognac-calligaris-768x511.jpg', '', '', 1, 1, 'Chân kim loại màu gold nệm bọc da tổng hợp cao cấp', '', 'D505 - R540 - C650/950 mm', NULL, 'CTGY15', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY15_PRO003', 'Ghế bar Fifties da màu mud brown', 19500000, '103439-ghe-bar-fifties-da-mau-mud-brown-768x511.jpg', '', '', 1, 1, 'Chân kim loại màu gold, nệm bọc da tổng hợp cao cấp', 'ifties thu hẹp khoảng cách giữa thiết kế và sự thoải mái một cách hoàn hảo và tạo nên sự cân bằng lý tưởng giữa vẻ đẹp hiện đại và nét cổ điển. Phần đệm thêm được bảo vệ bằng đai đàn hồi hiệu suất cao cho cảm giác cực kỳ thoải mái và dễ chịu', 'D505 - R540 - C650/950 mm', NULL, 'CTGY15', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY15_PRO004', 'Ghế Bar Boheme da taupe', 9900000, '62688-noi-that-nha-xinh-phong-khach-ghe-bar-boheme-da-taupe-b-l.jpg', 'ghe-bar-boheme-13-768x511.jpg', '', 1, 1, 'Khung kim loại - bọc da tổng hợp cao cấp', 'Ghế quầy bar Boheme nhập khẩu từ Ý có màu sắc sang trọng. Sản phẩm được thiết kế đơn giản nhưng không kém phần tinh tế, hiện đại. Ghế được làm bằng khung kim loại chắc chắn bọc lớp da nâu tự nhiên cho vẻ đẹp hoàn hảo', 'D400 - R400 - C900 mm', NULL, 'CTGY15', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY15_PRO005', 'Ghế bar Boheme da Coffee', 9900000, '56577-noi-that-nha-xinh-phong-khach-ghe-bar-boheme-da-coffee-b-l.jpg', 'ghe-bar-boheme-1-768x511.jpg', '', 1, 1, 'Khung kim loại - bọc da tổng hợp cao cấp', 'Ghế quầy bar Boheme nhập khẩu từ Ý có màu sắc sang trọng. Sản phẩm được thiết kế đơn giản nhưng không kém phần tinh tế, hiện đại. Ghế được làm bằng khung kim loại chắc chắn bọc lớp da nâu tự nhiên cho vẻ đẹp hoàn hảo', 'D400 - R400 - C900', NULL, 'CTGY15', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY15_PRO006', 'Ghế bar Monaco', 9200000, 'ghe-monaco-10001-768x511.jpg', 'ghe-monaco-5002.jpg', '', 1, 1, 'Kim loại không rỉ, da công nghiệp', '', 'D480- C1000 mm', NULL, 'CTGY15', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY15_PRO007', 'Ghế bar Tulij màu petrol xanh dương', 22950000, 'Ghe-bar-Tulij-mau-petrol-xanh-duong-768x511.jpg', 'Ghe-bar-Tulij-mau-petrol-xanh-duong-1-768x495.jpg', '', 1, 1, 'Chân kim loại sơn ngồi polyurethane', '', 'D435 - R425 - C650 mm', NULL, 'CTGY15', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY15_PRO008', 'Ghế bar Jenny – 96364J', 5800000, 'ghe-bar-3-101653-768x511.jpg', 'ghe-bar-3-101653-3-768x511.jpg', '', 1, 1, 'Kim loại không rỉ, da công nghiệp', '', 'D470- C860 mm', NULL, 'CTGY15', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY16_PRO01', 'Ghế bench Gallet 122cm H122x46x43 37245P', 15950000, 'CTGY16_PRO01(1).jpg', 'CTGY16_PRO01(2).jpg', 'CTGY16_PRO01(3).jpg', 1, 1, 'khung kim loại, nhồi nệm bọc da tổng hợp', '', 'D1220 - R460 - C430 mm', NULL, 'CTGY16', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY16_PRO02', 'Bench Elegance màu đen da brown', 26770000, 'CTGY16_PRO02(1).jpg', '', '', 1, 1, 'Gỗ Ash (tần bì) đặc tự nhiên nhập khẩu từ Mỹ, da bò nhập khẩu Italy', '', 'D1500 - R350 - C460 mm', NULL, 'CTGY16', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY16_PRO03', 'Bench Cabo vải KD1085-11 PMA491015 F1', 10400000, 'CTGY16_PRO03(1).jpg', 'CTGY16_PRO03(2).jpg', 'CTGY16_PRO03(3).jpg', 1, 1, 'Khung chân kim loại, gỗ walnut, bọc vải', 'Ghế Bench Cabo với khung chân được làm bằng kim loại kết hợp với 1 thanh ngang bằng gỗ walnut, phần nệm ghế được bọc vải tinh tế, sang trọng. Ghế Bench Cabo sẽ là điểm nhấn trong phòng ngủ nếu bạn biết kết hợp một cách hợp lý. Đối với phòng ngủ, đặc biệt là phòng ngủ master với lợi thế không gian rộng thì sự xuất hiện của một chiếc ghế bench sẽ giúp cho căn phòng trở nên sang trọng hơn.', 'D1400 - R370 - C450 mm', NULL, 'CTGY16', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY16_PRO04', 'Bench Bridge gỗ Tự nhiên Da đen', 29590000, 'CTGY16_PRO04(1).jpg', 'CTGY16_PRO04(2).jpg', 'CTGY16_PRO04(3).jpg', 1, 1, 'Gỗ sồi đặc tự nhiên nhập khẩu từ Mỹ- Da Ý tự nhiên cao cấp', 'Bench Bridge đại diện cho tinh thần tối giản trong phong cách thiết kế Đan Mạch nhưng cũng rất ấn tượng. Sử dụng chất liệu da và gỗ sồi tự nhiên, bench Bridge ghi dấu trong nhiều không gian phòng ăn, phòng khách hay phòng ngủ. Bridge – Tình yêu thiên nhiên và sức quyến rũ của gỗ. Bộ sưu tập Bridge mang hơi thở Scandinavian là sự kết hợp hoàn hảo của nhà thiết kế nổi tiếng Đan Mạch Hans Sandgren Jakobsen cùng công nghệ sản xuất thủ công của Nhật Bản. Mang thiết kế vượt thời gian, sử dụng chất liệu gỗ sồi Mỹ và da bò tự nhiên Ý, Bridge mang đến cảm giác sang trọng, gần gũi và thoải mái cho gia chủ. Điểm nổi bật của Bridge là sự tinh xảo trong hoàn thiện, từng chi tiết, những đường cong, bề mặt gỗ sồi được thực hiện và chọn lựa vô cùng kỹ càng, để tạo ra một Bridge hoàn hảo, chạm đến tâm hồn đầy cảm xúc và yêu quý những giá trị lâu bền của gia chủ Việt.', 'D1500 - R380 - C440', NULL, 'CTGY16', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY16_PRO05', 'Bench Elegance màu tự nhiên da cognac', 26770000, 'CTGY16_PRO05(1).jpg', '', '', 1, 1, 'Gỗ Ash (tần bì) đặc tự nhiên nhập khẩu từ Mỹ, da bò nhập khẩu Italy', '', 'D1500 - R350 - C460 mm', NULL, 'CTGY16', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY16_PRO06', 'Bench YK', 18560000, 'CTGY16_PRO06(1).jpg', '', '', 1, 1, 'Mặt bench: Slolid oak Pháp- mặt bench ghép timber Chân: Solid oak - Inox mạ', '', 'D1800 - R400 - C450 mm', NULL, 'CTGY16', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY16_PRO07', 'Bench Bridge gỗ nâu Da cognac 1m5', 29590000, 'CTGY16_PRO07(1).jpg', '', '', 1, 1, 'Gỗ sồi đặc tự nhiên nhập khẩu từ Mỹ- Da Ý tự nhiên cao cấp', 'Bench Bridge đại diện cho tinh thần tối giản trong phong cách thiết kế Đan Mạch nhưng cũng rất ấn tượng. Sử dụng chất liệu da và gỗ sồi tự nhiên, bench Bridge ghi dấu trong nhiều không gian phòng ăn, phòng khách hay phòng ngủ. Bridge – Tình yêu thiên nhiên và sức quyến rũ của gỗ. Bộ sưu tập Bridge mang hơi thở Scandinavian là sự kết hợp hoàn hảo của nhà thiết kế nổi tiếng Đan Mạch Hans Sandgren Jakobsen cùng công nghệ sản xuất thủ công của Nhật Bản. Mang thiết kế vượt thời gian, sử dụng chất liệu gỗ sồi Mỹ và da bò tự nhiên Ý, Bridge mang đến cảm giác sang trọng, gần gũi và thoải mái cho gia chủ. Điểm nổi bật của Bridge là sự tinh xảo trong hoàn thiện, từng chi tiết, những đường cong, bề mặt gỗ sồi được thực hiện và chọn lựa vô cùng kỹ càng, để tạo ra một Bridge hoàn hảo, chạm đến tâm hồn đầy cảm xúc và yêu quý những giá trị lâu bền của gia chủ Việt.', 'D1500 - R380 - C440 ', NULL, 'CTGY16', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY16_PRO08', 'Bench Miami 1m6', 7500000, 'CTGY16_PRO08(1).jpg', 'CTGY16_PRO08(2).jpg', 'CTGY16_PRO08(3).jpg', 1, 1, 'Gỗ sồi tự nhiên + MDF chống ẩm', '', 'D1600-R400-C450', NULL, 'CTGY16', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY16_PRO09', 'Bench Shadow', 11690000, 'CTGY16_PRO09(1).jpg', 'CTGY16_PRO09(2).jpg', 'CTGY16_PRO09(3).jpg', 1, 1, 'Chân kim loại màu đồng- MDF Veneer sồi', '', 'D1600- R400- C450 mm', NULL, 'CTGY16', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY16_PRO10', 'Bench Butterfly Ginkgo 411554', 111345000, 'CTGY16_PRO10(1).jpg', '', '', 1, 1, '', '', 'D1193 - R393 - C457 mm', NULL, 'CTGY16', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY17_PRO01', 'Ghế làm việc check out 83959K', 24500000, 'CTGY17_PRO01(1).jpg', 'CTGY17_PRO01(2).jpg', 'CTGY17_PRO01(3).jpg', 1, 1, 'Chân kim loại có bánh xe xoay, lưng mdf veneer - bọc da công nghiệp', '', '', NULL, 'CTGY17', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY17_PRO02', 'Ghế Làm Việc Xoay Franky Brown 1300008Z', 12800000, 'GHE-LAM-VIEC-XOAY-FRANKY-BROWN-130008Z-1-600x400.jpg', 'GHE-LAM-VIEC-XOAY-FRANKY-BROWN-130008Z-2-600x400.jpg', '', 1, 1, 'Chân kim loại xoay bọc da công nghiệp', '', '', NULL, 'CTGY17', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY17_PRO03', 'Ghế xoay Patron Walnut 79696K', 14500000, 'Ghe-xoay-Patron-Walnut-3105579-2-600x355.jpg', 'Ghe-xoay-Patron-Walnut-3105579-3-600x355.jpg', 'Ghe-xoay-Patron-Walnut-3105579-6-copy-600x354.jpg', 1, 1, '100% Polyester, 100% Polyvinyl clorua (PVC cứng)', '', '', NULL, 'CTGY17', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY17_PRO04', 'Ghế xoay văn phòng High Bossy', 34500000, 'Ghe-xoay-van-phong-High-Bossy-398599-5622-600x400.jpg', 'Ghe-xoay-van-phong-High-Bossy-398599-1-600x400.jpg', 'Ghe-xoay-van-phong-High-Bossy-398599-6-600x400.jpg', 1, 1, 'Gỗ & MDF', '', '', NULL, 'CTGY17', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY17_PRO05', 'Ghế làm việc Labora Pebble 84739K', 9500000, 'Ghe-Lam-Viec-Labora-Pebble-84739K-3105585-600x354.jpg', 'Ghe-Lam-Viec-Labora-Pebble-84739K-3105585-2-600x354.jpg', 'Ghe-Lam-Viec-Labora-Pebble-84739K-3105585-1-600x354.jpg', 1, 1, 'Chân 100% Polyamide nylon, armrest kim loại - bọc 100 % Polyester', '', '', NULL, 'CTGY17', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY17_PRO06', 'Ghế làm việc Lanora High Pebble', 14200000, 'ghe-labora-high-pebble-600x400.jpg', 'ghe-labora-high-pebble-600x400.jpg', '', 1, 1, 'Chân kim loại bọc da', '', '', NULL, 'CTGY17', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY17_PRO07', 'Ghế ăn Kayla xám', 11000000, '104683-ghe-an-kayla-grey-1-600x400.jpg', '104683-ghe-an-kayla-grey-2-600x400.jpg', '104683-ghe-an-kayla-grey-5-600x400.jpg', 1, 1, 'Chân kim loại mặt ngồi khung ván ép công nghiệp bọc vải', '', '', NULL, 'CTGY17', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY17_PRO08', 'Ghế ăn không tay Porto bọc da Pu', 7500000, 'ghe_an_porto-600x400.jpg', 'ghe_an_porto_1-600x400.jpg', 'ghe_an_porto_2-600x400.jpg', 1, 1, 'Gỗ oak - Inox màu gold - Nệm bọc da công nghiệp (PU )', '', '', NULL, 'CTGY17', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY18_PRO01', 'Ghế ngoài trời Angela Alu ADS003', 8700000, 'GHE-NGOAI-TROI-ANGELA-ALU-ADS003-600x400.jpg', 'GHE-NGOAI-TROI-ANGELA-ALU-ADS003-1-600x400.jpg', 'GHE-NGOAI-TROI-ANGELA-ALU-ADS003-1-600x400.jpg', 1, 1, 'Khung kim loại Alu bọc vải', '', '', NULL, 'CTGY18', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY18_PRO02', 'Ghế ngoài trời Puyi Alu H78x56x59 ADS004', 7500000, 'GHE-NGOAI-TROI-PUYI-ALU-H78x56x59-ADS004-600x387.jpg', 'GHE-NGOAI-TROI-PUYI-ALU-H78x56x59-ADS004-1-600x387.jpg', '', 1, 1, 'Kim loại', '', '', NULL, 'CTGY18', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY18_PRO03', 'Ghế ngoài trời Tuka vải Samoa SQB
', 27419000, '103367-ghe-tuka-vai-samoa-sqb-600x400.jpg', '103367-ghe-tuka-vai-samoa-sqb-2-600x400.jpg', '', 1, 1, 'Chân kim loại sơn nệm vải lemon yellow -Thương hiệu Calligaris Italy', '', '', NULL, 'CTGY18', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY18_PRO04', 'Ghế ngoài trời YO! vải vàng', 25200000, '103368ghe-ngoai-troi-yo-calligaris-600x400.jpg', '', '', 1, 1, 'Chân kim loại sơn màu vàng vải STB Thương hiệu Calligaris Italy', 'Ghế sân vườn YO! có mặt ngồi và tựa lưng đan trên khung nhôm giúp bạn thư giãn thoải mái và chắc chắn. Khung dệt phẳng mang lại sự thoải mái tối đa và đã được gia cố bằng polypropylene để cải thiện độ bền kết hợp khung kim loại hình ống đã được xử lý phủ để phù hợp cho mục đích sử dụng ngoài trời.', '', NULL, 'CTGY18', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY18_PRO05', 'Ghế ngoài trời YO! vải vàng Saffron CB1986-E P7L/P7L', 3100000, 'GHE-YO-CB1986-E-P7L-P7L-SAFFRON-YELLOW-300x200.jpg', 'GHE-YO-CB1986-E-P7L-P7L-SAFFRON-YELLOW-1-600x387.jpg', '', 1, 1, 'Chân kim loại sơn màu Saffron, nệm ghế PP', 'Ghế sân vườn YO! có mặt ngồi và tựa lưng đan trên khung nhôm giúp bạn thư giãn thoải mái và chắc chắn. Khung dệt phẳng mang lại sự thoải mái tối đa và đã được gia cố bằng polypropylene để cải thiện độ bền kết hợp khung kim loại hình ống đã được xử lý phủ để phù hợp cho mục đích sử dụng ngoài trời.', '', NULL, 'CTGY18', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY18_PRO06', 'Ghế xếp Lorette Lagoon blue 570146', 2900000, 'Ghe-xep-Lorette-Lagoon-blue-570146-600x400.jpg', 'Ghe-xep-Lorette-Lagoon-blue-570146-1-600x387.jpg', 'Ghe-xep-Lorette-Lagoon-blue-570146-2-600x387.jpg', 1, 1, 'Thép sơn tĩnh điện công nghệ cao, lưng ghế sử dụng công nghệ cắt laser', 'Ghế xếp Lorette Lagoon blue 570146 sử dụng thép sơn tĩnh điện công nghệ cao và phần lưng ghế sử dụng công nghệ cắt laser tạo ra chiếc ghế có màu sắc nổi bật bắt mắt, thiết kế gọn gàng có thể dễ dàng di chuyển thích hợp cho việc sử dụng ngoài trời và trong nhà.', '', NULL, 'CTGY18', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY18_PRO07', 'Ghế ngoài trời Fermob Bistro Linen', 3400000, 'ghe-ngoai-troi-30-69116-600x400.jpg', 'ghe-ngoai-troi-bistro3-600x400.jpg', '', 1, 1, 'Thép sơn tĩnh điện công nghệ cao , lưng ghế sử dụng công nghệ cắt laser', 'Ra mắt vào cuối thế kỷ 19, một sản phẩm đường thời của Tháp Eiffel, ghế xếp Bistro có thiết kế tinh giản và chắc chắn đã trở nên phổ biến và ngày càng được yêu thích. Cho đến ngày nay, chiếc ghế Bistro vẫn cuốn hút và hấp dẫn hơn bao giờ hết. Được thiết kế tạo hình bởi Fermob, ghế Bistro có kết cấu chắc chắn, nổi bật với nhiều màu sắc khác nhau chuyên dùng ngoài trời Cân nặng: 4,8 kg Tải trọng 300kg. Vật liệu: thép Kẹp nhựa để gấp và mở an toàn 24 màu tùy chọn.', '', NULL, 'CTGY18', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY18_PRO08', 'Ghế ngoài trời Fermob La Mome Lemon', 3100000, 'ghe-ngoai-troi-3-101073-1-600x400.jpg', 'ghe-ngoai-troi-la-mome-600x400.jpg', '', 1, 1, 'Thép sơn tĩnh điện công nghệ cao , lưng ghế sử dụng công nghệ cắt laser', 'La Mome ra đời với ý tưởng giúp người sử dụng để tận hưởng được không khí trong lành cho dù là bạn ở thành phố hay nông thôn, trong nhà hay ngoài vườn. Ghế được thiết kế với sự đơn giản, nhẹ nhàng và di động sẽ hoàn toàn phù hợp với khu vườn nhà bạn', '', NULL, 'CTGY18', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY19_PRO01', 'Ghế Lazboy 10T352 Shannon da Sienna', 27400000, 'GHE-LAZBOY-10T352-SHANNON-DA-SIENNA-3106238-768x511.jpg', '', '', 1, 1, 'Khung gỗ cao su bọc da bò cao cao cấp', '', '', NULL, 'CTGY19', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY19_PRO02', 'Ghế Lazboy điện Cardinal 1PT550 – Ivory
', 44000000, '500-nha-xinh-phong-khach-ghe-thu-gian-lazboy3.jpg', '500-nha-xinh-phong-khach-ghe-thu-gian-lazboy3.jpg', '500-nha-xinh-phong-khach-ghe-thu-gian-lazboy3.jpg', 1, 1, 'Khung gỗ cao su bọc da bò tự nhiên 100%', '', '', NULL, 'CTGY19', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY19_PRO03', 'Ghế Lazboy Pinnacle 10T512 – Cognac
', 38200000, '63163_lazboy_10t512_pinnacle_fl515374_cognac-1-1.jpg', '63163_lazboy_10t512_pinnacle_fl515374_cognac-1-1.jpg', '63163_lazboy_10t512_pinnacle_fl515374_cognac-1-1.jpg', 1, 1, 'Khung gỗ cao su bọc da bò 100%', 'Ghế thư giãn thương hiệu nối tiếng Lazboy của Mỹ được làm bằng khung gỗ bọc da, cấu trúc ghế chắc chắn nâng đỡ cơ thể. Khi ngồi tạo cảm giác êm ái thoải mái lắc lư theo nhịp ghế, phần nâng đỡ chân được bật ra, chỉ cần một động tác nhẹ phần tựa lưng sẽ tự động xuôi theo dáng nằm cho bạn cảm giác thoải mái nhất. Ghế thư giãn Lazboy là sự lựa chọn tuyệt vời nhất cho những phút giây thư giãn sau một ngày dài hoạt động.', '', NULL, 'CTGY19', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY19_PRO04', 'Ghế Lazboy Rialto 2C+CS T39505 – Claret
', 57000000, 'lazboy2-79964-500-.jpg', '', '', 1, 1, 'Khung gỗ cao su bọc da bò tự nhiên 100%', 'Ghế thư giãn thương hiệu nối tiếng Lazboy của Mỹ được làm bằng khung gỗ bọc da, cấu trúc ghế chắc chắn nâng đỡ cơ thể. Khi ngồi tạo cảm giác êm ái thoải mái lắc lư theo nhịp ghế, phần nâng đỡ chân được bật ra, chỉ cần một động tác nhẹ phần tựa lưng sẽ tự động xuôi theo dáng nằm cho bạn cảm giác thoải mái nhất. Ghế thư giãn Lazboy là sự lựa chọn tuyệt vời nhất cho những phút giây thư giãn sau một ngày dài hoạt động.', '', NULL, 'CTGY19', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY19_PRO05', 'Ghế Laz Boy 3C Barrett T35-752 Deep Sage
', 88260000, 'laz_boy_3c_barrett_t35-752_deep_sage-600x400.jpg', '', '', 1, 1, 'Khung gỗ cao su bọc da bò 100%', 'Ghế thư giãn thương hiệu nối tiếng Lazboy của Mỹ được làm bằng khung gỗ bọc da, cấu trúc ghế chắc chắn nâng đỡ cơ thể. Khi ngồi tạo cảm giác êm ái thoải mái lắc lư theo nhịp ghế, phần nâng đỡ chân được bật ra, chỉ cần một động tác nhẹ phần tựa lưng sẽ tự động xuôi theo dáng nằm cho bạn cảm giác thoải mái nhất. Ghế thư giãn Lazboy là sự lựa chọn tuyệt vời nhất cho những phút giây thư giãn sau một ngày dài hoạt động.', '', NULL, 'CTGY19', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY19_PRO06', 'Ghế Lazboy H.Town 10T532 – Cognac
', 39000000, '63178_ghe_thu_gian_532_cognac_b_l.jpg', '63178_ghe_thu_gian_532_cognac_c_l.jpg', '', 1, 1, 'Khung gỗ cao su bọc da bò tự nhiên cao cấp', 'Ghế thư giãn của thương hiệu nối tiếng Lazboy của Mỹ được làm bằng khung gỗ xà cừ bọc da, cấu trúc ghế chắc chắn nâng đỡ cơ thể ở các trạng thái ngồi và nằm. Ghế thư giãn là sự lựa chọn cho những phút giây thư giãn sau một ngày dài hoạt động', '', NULL, 'CTGY19', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY19_PRO07', 'Ghế Lazboy Larson 10T528 – Ash', 20000000, 'ghe-lazboy-100761-600x400.jpg', 'ghe-lazboy-100761-1-600x400.jpg', '', 1, 1, 'Khung gỗ cao su bọc vải cao cấp', 'Ghế thư giãn thương hiệu nối tiếng Lazboy của Mỹ được làm bằng khung gỗ bọc da, cấu trúc ghế chắc chắn nâng đỡ cơ thể. Khi ngồi tạo cảm giác êm ái thoải mái lắc lư theo nhịp ghế, phần nâng đỡ chân được bật ra, chỉ cần một động tác nhẹ phần tựa lưng sẽ tự động xuôi theo dáng nằm cho bạn cảm giác thoải mái nhất. Ghế thư giãn Lazboy là sự lựa chọn tuyệt vời nhất cho những phút giây thư giãn sau một ngày dài hoạt động.', '', NULL, 'CTGY19', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY19_PRO08', 'Ghế Lazboy Enzo 10T349 Da Pebble
', 25000000, 'GHE-LAZBOY-ENZO-10T349-DA-PEBBLE-3106224-600x400.jpg', 'GHE-LAZBOY-ENZO-10T349-DA-PEBBLE-3106224.jpg', 'GHE-LAZBOY-ENZO-10T349-DA-PEBBLE-3106224.jpg', 1, 1, 'Khung gỗ cao su bọc da bò cao cao cấp', '', '', NULL, 'CTGY19', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY2_PRO01', 'Bàn ăn Cult 6 chỗ', 6900000, 'CTGY2_PRO1 (1).jpg', 'CTGY2_PRO1 (2).jpg', 'CTGY2_PRO1 (3).jpg', 1, 1, 'Chân bàn Aluminium sơn tĩnh điện, mặt bàn gỗ HPL', 'Bàn ăn Cult có thiết kế tối giản, phù hợp với không gian phòng ăn mang phong cách Bắc Âu. Mặt bàn thiết kế đặc biệt với độ mỏng cùng những đường nét tinh tế, hoàn hảo, tạo cảm giác thoải mái cho tất cả mọi người.', 'D1400 - R800 - C750 mm', NULL, 'CTGY2', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY2_PRO02', 'Bàn ăn Tuscany', 8300000, 'CTGY2_PRO02 (1).jpg', 'CTGY2_PRO02 (2).jpg', '', 1, 1, 'Mặt gỗ sồi ghép , chân kim loại', 'Bàn ăn Tuscany phù hợp với nhiều không gian phòng ăn khác nhau. Thiết kế đơn sắc và đường nét tinh tế tạo ra một mẫu bàn ăn trang nhã, đặc biệt mặt bàn thiết kế nhỏ gọn là một sự phù hợp hoàn hảo cho những ngôi nhà nhỏ.', 'D2000 - R1000 - C770 mm', NULL, 'CTGY2', NULL, NULL, NULL, '', '', '');
 

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY2_PRO03', 'Bàn ăn gỗ Miami 1m2', 8300000, 'CTGY2_PRO03 (1).jpg', 'CTGY2_PRO03 (2).jpg', '', 1, 1, 'Gỗ sồi tự nhiên + MDF chống ẩm', 'Bàn ăn Miami được làm chính từ ván MDF chống ẩm cao cấp, phần dưới được làm từ gỗ Sồi trắng nhập khẩu từ Mỹ tạo nên sự chắc chắn cho sản phẩm. Đây là sự lựa chọn hoàn hảo cho không gian phòng ăn mang đậm phong cách Bắc Âu.', 'D1200 - R800 - C760 mm', NULL, 'CTGY2', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY2_PRO04', 'Bàn Ăn Tròn Tague gỗ', 13260000, 'CTGY2_PRO04 (1).jpg', 'CTGY2_PRO04 (2).jpg', '', 1, 1, 'Gỗ Mahogany - MDF Veneer Mahogany', 'Bàn ăn trong Tague được làm từ gỗ Mahogany, là một loại gỗ tốt với giá thành cạnh tranh để thiết kế những sản phẩm nội thất bền đẹp và được rất nhiều người ưa chuộng. Thiết kế của bàn ăn tròn Tague tạo nên sự gần gũi, vừa có thể thưởng thức những món ăn trên chiếc bàn, vừa có thể trang trí cho không gian nhà bếp của mỗi gia đình.', 'Ø1200 - C750 mm', NULL, 'CTGY2', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY2_PRO05', 'Bộ bàn ăn Skagen 6 chỗ', 22490000, 'CTGY2_PRO05 (1).jpg', 'CTGY2_PRO05 (2).jpg', '', 1, 1, 'Gỗ cao su + MDF Veneer Walnut + Vải - nhập khẩu Malaysia', 'Bộ bàn ăn Skagen kèm 6 ghế dành cho những căn hộ có không gian phòng ăn vừa phải. Kiểu dáng hiện đại và thanh mảnh cùng chân gỗ tràm vững chắc tạo ra không gian sang trọng nhưng vẫn ấm cúng với tone gỗ màu nâu đậm. Skagen là lựa chọn hoàn hảo cho những phòng ăn mang phong cách Bắc Âu.', 'D1600 x R900 x C750 / D540 x R540 x C800 mm', NULL, 'CTGY2', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY2_PRO06', 'Bộ bàn ăn Tristan Belfast 6 chỗ vải xám', 22490000, 'CTGY2_PRO06 (1).jpg', 'CTGY2_PRO06 (2).jpg', 'CTGY2_PRO06 (3).jpg', 1, 1, 'Gỗ - MDF VENEER ASH - Nệm bọc vải', '', 'D1600-R900-C750 / D540-R485-C830 mm', NULL, 'CTGY2', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY2_PRO07', 'Bộ bàn ăn Tristan Belfast 6 chỗ vải đỏ', 22490000, 'CTGY2_PRO07 (1).jpg', 'CTGY2_PRO07 (2).jpg', 'CTGY2_PRO07 (3).jpg', 1, 1, 'Gỗ - MDF VENEER ASH - Nệm bọc vải', '', 'D1600-R900-C750 / D540-R485-C830 mm', NULL, 'CTGY2', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY2_PRO08', 'Bàn ăn 1m6 Elegance màu đen', 44930000, 'CTGY2_PRO08 (1).jpg', 'CTGY2_PRO08 (2).jpg', '', 1, 1, 'Gỗ Ash (tần bì) đặc tự nhiên nhập khẩu từ Mỹ', 'Bàn ăn Elegance với thiết kế truyền thống từ gỗ tần bì với cách chế tạo đặc biệt giúp thân bàn nhẹ nhàng nhưng vẫn vô cùng vững chắc. Các góc được bo tròn mềm mại đồng bộ với cảm hứng bộ sưu tập. Mặt bên bàn được chú ý với các được đệm tránh va đập giữa ghế và thân bàn. Bàn có 2 kích thước là 1m6 và 1m8 dễ dàng lựa chọn để phù hợp với không gian.dáng của ghế. Ghế Elegance gợi lên vẻ đẹp của một nữ vũ công chuyên nghiệp với sự thanh lịch, sang trọng và đầy quyến rũ.', 'D1600 - R850 - C710 mm', NULL, 'CTGY2', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY2_PRO09', 'Bàn ăn 1m8 Elegance màu tự nhiên', 49250000, 'CTGY2_PRO09 (1).jpg', 'CTGY2_PRO09 (2).jpg', '', 1, 1, 'Gỗ Ash (tần bì) đặc tự nhiên nhập khẩu từ Mỹ', 'Bàn ăn Elegance với thiết kế truyền thống từ gỗ tần bì với cách chế tạo đặc biệt giúp thân bàn nhẹ nhàng nhưng vẫn vô cùng vững chắc. Các góc được bo tròn mềm mại đồng bộ với cảm hứng bộ sưu tập. Mặt bên bàn được chú ý với các được đệm tránh va đập giữa ghế và thân bàn. Bàn có 2 kích thước là 1m6 và 1m8 dễ dàng lựa chọn để phù hợp với không gian.dáng của ghế. Ghế Elegance gợi lên vẻ đẹp của một nữ vũ công chuyên nghiệp với sự thanh lịch, sang trọng và đầy quyến rũ.', 'D1800 - R850 - C710 mm', NULL, 'CTGY2', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY2_PRO10', 'Bàn ăn gỗ Bridge 1m8', 54890000, 'CTGY2_PRO10 (1).jpg', 'CTGY2_PRO10 (2).jpg', 'CTGY2_PRO10 (3).jpg', 1, 1, 'Gỗ sồi đặc màu nâu tự nhiên nhập khẩu từ Mỹ', 'Bàn ăn gỗ Bridge được thiết kế đặc biệt từ gỗ sồi đặc. Kiểu dáng tối giản với những nét cong mềm mại, được xử lý tinh xảo mang tính thủ công cao mang lại sự tinh tế, sang trọng cho không gian. Màu sắc và vân gỗ của Bridge được chọn lựa kỹ lưỡng chính là điểm đặc sắc trong thiết kế bàn ăn Bridge nói riêng và những thiết kế cùng BST nói chung.', 'D1800 - R850 - C720 mm', NULL, 'CTGY2', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY20_PRO001', 'Gối Cutie polyester đỏ 44×41 76896', 1050000, 'GOI-CUTIE-POLYESTER-RED-44x41-76896-768x495jpg', 'GOI-CUTIE-POLYESTER-RED-44x41-76896-1-768x495.jpg', '', 1, 1, 'nhồi nệm bọc vải', '', 'D440 - R410 - C120 mm', NULL, 'CTGY20', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY20_PRO002', 'Gối AROMATIC Khuynh diệp 70X50 Colmol', 2900000, 'goi_colmol_khuynh_diep_eucalyptus_jpg-768x461.jpg', '', '', 1, 1, 'Vải, foam', 'Gối colmol được làm từ phần mút ghi nhớ bên trong và được phủ ngoài lớp vải mịn. Kết hợp cùng tinh dầu giúp mang lại cảm giác êm ái, nâng niu phần đầu và cổ cho giấc ngu sâu và dễ chịu', 'D700 - R500 - C140 mm', NULL, 'CTGY20', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY20_PRO003', 'Gối Kuscino CS7227 C', 2070000, 'Goi-Kuscino-CS7227-C-768x511.jpg', 'Goi-Kuscino-CS7227-C-2-768x495.jpg', '', 1, 1, 'Vải polyester', 'Gối Kuscino CS7227 C không chỉ được may tỉ mỉ từ vải polyester đặc tính mềm, độ đàn hồi tốt hạn chế bị xẹp trong quá trình sử dụng hoặc vệ sinh mà còn có họa tiết sinh động mang tông màu hồng dễ thương, nữ tính. Gối Kuscino được độn lớp bông mềm có thể làm gối ngủ hay tựa lưng đem đến cho bạn sự thoải mái, thư giãn sau một ngày dài học tập hay làm việc mệt mỏi.', 'D450 - R450 - C150 mm', NULL, 'CTGY20', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY20_PRO004', 'Gối Stowe vải S6Q', 4100000, 'Goi-Stowe-vai-S6Q-768x511.jpg', 'Goi-Stowe-vai-S6Q-1-768x495.jpg', '', 1, 1, 'Vải trang trí màu đen/trắng', 'Gối Stowe vải S6Q sử dụng vải trang trí màu đen/trắng có dạng hình vuông, với ruột gối được làm từ gòn công nghiệp tạo sự căn phồng cho gối đồng thời mang lại cảm giác thoải mái cho người dùng. Gối Stowe sở hữu nhiều họa tiết đem đến nhiều sự lựa chọn cho bạn có thể ứng dụng làm gối trang trí sofa, gối tựa lưng, gối nằm, …', 'D480-R480 mm', NULL, 'CTGY20', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY20_PRO005', 'Gối Stowe vải S6S', 6170000, 'Goi-Stowe-vai-S6S-768x511.jpg', 'Goi-Stowe-vai-S6S-1-768x495.jpg', '', 1, 1, 'Vải trang trí màu xám', 'Gối Stowe vải S6S sử dụng vải trang trí màu xám có dạng hình vuông, với ruột gối được làm từ gòn công nghiệp tạo sự căn phồng cho gối đồng thời mang lại cảm giác thoải mái cho người dùng. Gối Stowe sở hữu nhiều họa tiết đem đến nhiều sự lựa chọn cho bạn có thể ứng dụng làm gối trang trí sofa, gối tựa lưng, gối nằm, …', 'D480 - R480 mm', NULL, 'CTGY20', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY20_PRO006', 'Gối Stowe vải SR3', 6170000, 'Goi-Stowe-vai-SR3.jpg', 'Goi-Stowe-vai-SR3-1.jpg', '', 1, 1, 'Vải trang trí màu xanh lá', 'Gối Stowe vải SR3 sử dụng vải trang trí màu xanh lá có dạng hình vuông, với ruột gối được làm từ gòn công nghiệp tạo sự căn phồng cho gối đồng thời mang lại cảm giác thoải mái cho người dùng. Gối Stowe sở hữu nhiều họa tiết đem đến nhiều sự lựa chọn cho bạn có thể ứng dụng làm gối trang trí sofa, gối tựa lưng, gối nằm, …', 'D480 - R480 mm', NULL, 'CTGY20', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY20_PRO007', 'Gối linen thêu tim 38103J', 6200000, '63919_goi_linen_theu_tim_l.jpg', '', '', 1, 1, 'Vải trang trí màu xanh lá', '', 'D450 - C450mm', NULL, 'CTGY20', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY20_PRO008', 'Gối trang trí màu vàng', 3900000, '500-68339-nha-xinh-hang-trang-tri-goi2.jpg', '', '', 1, 1, 'Vải cotton cao cấp', '', 'D400 - R400', NULL, 'CTGY20', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY21_PRO001', 'Gương Bords', 9460000, 'Guong-Bords-3105667-3-768x454.jpg', 'Guong-Bords-3105667-2-768x511.jpg', '', 1, 1, 'Kim loại, kính', '', 'R750 - C1250 mm', NULL, 'CTGY21', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY21_PRO002', 'Khung gương Metal Diamond 87X77-148699C', 5500000, 'guong-3-101598-768x511.jpg', '', '', 1, 1, 'khung kim loại, kính', '', 'D870 - C770 mm', NULL, 'CTGY21', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY21_PRO003', 'Khung gương Rect Wood-96976J', 9300000, 'guong-3-101656-768x511.jpg', '', '', 1, 1, 'khung gỗ - kính thủy', '', 'D500 - C800 mm', NULL, 'CTGY21', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY21_PRO004', 'Khung gương Jet Set Oval Gold', 8900000, 'khung-guong-jetset-oval-gold-768x511.jpg', '', '', 1, 1, 'MDF sơn màu gold +Kính thủy', '', 'D630 - R35 - C930 mm', NULL, 'CTGY21', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY21_PRO005', 'Gương soi Shapes', 30500000, 'guong-soi-83009k-1000-768x511.jpg', 'guong-soi-83009k-1-500.jpg', '', 1, 1, 'Khung kim loại -kính thủy', '', 'D1100 - R100 - C1300 mm', NULL, 'CTGY21', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY21_PRO006', 'Khung gương treo tường Thousand square', 26400000, 'guong-3-89377-768x511.jpg', '', '', 1, 1, 'Khung kim loại -kính thủy', '', 'D650 - C1040 mm', NULL, 'CTGY21', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY21_PRO007', 'Khung gương Metal', 2500000, 'guong-3-101631.jpg', '', '', 1, 1, 'Khung kim loại -kính thủy', '', '420 - 120 -700 mm', NULL, 'CTGY21', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY21_PRO008', 'Gương soi trang trí đèn Led', 6500000, '81178-guong-hinh-chu-nhat-infinity-led-80x60cm.jpg', '', '', 1, 1, 'khung kim loại -kính thủy', '', 'D800 - R600 mm', NULL, 'CTGY21', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY22_PRO001', 'Giường Hộc Kéo Iris 1M8 Vải Belfast 41', 15600000, 'giuong_iris_1m6_stone3.jpg', 'phong-ngu-giuong-hoc-keo-iris-3-768x512.jpg', '', 1, 1, 'Khung gỗ MFC bọc vải - 4 hộc kéo', '', 'D2000 - R1800 - C1112 mm', NULL, 'CTGY22', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY22_PRO002', 'Giường hộc kéo Penny 1m6 vải stone', 14630000, 'giuong-penny-boc-vai-1m6-1m8-768x513.jpg', 'giuong-penny4-768x511.jpg', '', 1, 1, 'Khung gỗ MFC, bọc vải màu stone', 'Giường hộc kéo Penny 1m6 taupe với điểm nổi bật là bốn ngăn chứa đồ rộng thuận tiện cất những vật dụng trong phòng ngủ như gối, mền, drap hết sức gọn gàng. Chắc chắn sẽ là sự lựa chọn tối ưu cho không gian phòng ngủ hiện đại. Giường hộc kéo Penny có 2 kích thước 1m6 và 1m8, đa dạng màu sắc.', 'D2000 - R1600 - C1110', NULL, 'CTGY22', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY22_PRO003', 'Giường ngủ Miami 1m8 bọc vải Dolce 150', 20900000, 'GIUONG-MIAMI-1M8-VAI-DOLCE-150-768x511.jpg', 'GIUONG-MIAMI-1M8-VAI-DOLCE-094-3106032-1-768x543.jpg', '', 1, 1, 'Gỗ sồi tự nhiên - MDF chống ẩm - vải cao cấp', 'Giường ngủ bọc vải Miami sử dụng gỗ Sồi trắng nhập khẩu từ Mỹ kết hợp MDF chống ẩm cao cấp tạo nên sự chắc chắn cho sản phẩm. Nhờ vào tone ấm của gỗ, giường Miami mang đến một sự hài hòa, đặc trưng của phong cách nội thất Bắc Âu.', 'D2000- R1800- C1210 mm', NULL, 'CTGY22', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY22_PRO004', 'Giường Moon 1m6 màu cam KD1097-14', 19900000, 'GIUONG-MOON-1M6-MAU-CAM-KD1097-14-768x511.jpg', '', '', 1, 1, 'Chân inox mạ PVD , bọc vải cao cấp', '', 'D2000 - R1600 - C1050 mm', NULL, 'CTGY22', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY22_PRO005', 'Giường Moon 1m6 màu xanh KD1097-23', 19900000, 'GIUONG-MOON-1M6-MAU-XANH-KD1097-23-768x511.jpg', '', '', 1, 1, 'Chân inox mạ PVD , bọc vải cao cấp', '', 'D2000 - R1600 - C1050 mm', NULL, 'CTGY22', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY22_PRO006', 'Giường ngủ bọc da Mây 1m6 Fango', 28830000, 'giuong-may-xam2-768x511.jpg', 'nhaxinh-phong-ngu-may-2012103-768x511.jpg', '', 1, 1, 'Gỗ Acacia (Tràm)- Mây tự nhiên- Da tự nhiên cao cấp- Chân bọc inox mạ gold', '', 'D2000- R1600- C1000 mm', NULL, 'CTGY22', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY22_PRO007', 'Giường ngủ bọc vải Pio 1M6 VACT6171/VACT4400', 25000000, 'GIUONG-PIO-1M6-VAI-VACT6171-VACT4400-768x511.jpg', '', '', 1, 1, 'Gỗ Beech, bọc vải cao cấp', 'Giường ngủ bọc vải Pio 1M6 VACT6171/VACT4400 được thiết kế bọc vải hoàn toàn với khung gỗ beech chắc chắn. Những chi tiết nhấn nhá tại đầu giường, gối đầu giường giúp nó trở nên lạ mắt và ấn tượng. Sử dụng chân thon gọn giúp phòng ngủ của bạn trở nên thông thoáng và thanh lịch hơn. Giường Pio là một lựa chọn sáng giá cho không gian phòng ngủ Bắc Âu- Hiện đại, với 2 kích thước lựa chọn: 1m6, 1m8, có các màu vải khác nhau để lựa chọn.', 'D2000- R1600- C1000 mm', NULL, 'CTGY22', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY22_PRO008', 'Giường Osaka 1m8 da cognac', 62000000, 'Giuong-Osaka-1M8-Da-Cognac-3105903-768x511.jpg', '', '', 1, 1, 'Khung gỗ bọc da bò tự nhiên cao cấp', '', 'D2000 - R1800 - C1100 mm', NULL, 'CTGY22', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY23_PRO01', 'Bảng treo chìa khóa', 409000, '78723-bang-treo-chia-khoa-600x400.jpg', '', '', 1, 1, 'Gỗ MDF sơn xám, Móc kim loại', '', 'D400 - R10 - C200 mm', NULL, 'CTGY23', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY23_PRO02', 'Bộ 2 chuông chim gốm trắng', 949000, '70311-chuong-gom-hinh-chim-trang.jpg', '', '', 1, 1, 'Gốm sứ', '', 'D120 - R60 - C170 mm', NULL, 'CTGY23', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY23_PRO03', 'Bộ 2 tượng chặn sách Bookend hình đầu ngựa đế đen', 1420000, 'Bo-2-tuong-chan-sach-hinh-dau-ngua.jpg', '', '', 1, 1, 'Kim loại, Nhựa', '', 'D175-R135-C270 mm', NULL, 'CTGY23', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY23_PRO04', 'Chữ Love trang trí Alu nhôm màu trắng bạc S2', 1170000, 'Chu-love-trang-tri-Alu-bookend-nickel-S2-41646.jpg', '', '', 1, 1, 'Nhôm', '', 'D130-R90-C130 mm', NULL, 'CTGY23', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY23_PRO05', 'Chữ Read trang trí Alu nhôm màu trắng bạc 41092', 1170000, 'Chu-trang-tri-Read-Alu-bookend-nickel-S2-41092.jpg', '', '', 1, 1, 'Nhôm', '', 'D125-R90-C130 mm', NULL, 'CTGY23', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY23_PRO06', 'Khay chữ nhật cá Koi', 2916000, 'Khay-chu-nhat-Ca-Koi-KHAY02010084.jpg', 'Khay-chu-nhat-Ca-Koi-KHAY02010084-1.jpg', '', 1, 1, '100% MDF sơn mài', '', 'D250-R400-C45 mm', NULL, 'CTGY23', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY23_PRO07', 'Khay chữ nhật vảy rồng', 2916000, 'Khay-chu-nhat-Vay-Rong-KHAY02010086.jpg', 'Khay-chu-nhat-Vay-Rong-KHAY02010086-1.jpg', 'Khay-chu-nhat-Vay-Rong-KHAY02010086-3.jpg', 1, 1, '100% MDF sơn mài', '', 'D250-R400-C45 mm', NULL, 'CTGY23', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY23_PRO08', 'Khay tròn hoa lá', 2916000, 'Khay-tron-Hoa-La-KHAY02010064-600x387.jpg', 'Khay-tron-Hoa-La-KHAY02010064-1.jpg', 'Khay-tron-Hoa-La-KHAY02010064-3.jpg', 1, 1, '100% MDF sơn mài', '', 'Ø350-C45 mm', NULL, 'CTGY23', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY23_PRO09', 'Xe đạp trang trí', 710000, 'Xe-dap-iron-wood-Blk-brown-53989.jpg', '', '', 1, 1, 'Kim loại', '', 'D477-R135-C255 mm', NULL, 'CTGY23', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY23_PRO10', 'Kính viễn vọng trang trí Binocular', 1840000, 'Kinh-vien-vong-trang-tri-Binocular-51474.jpg', '', '', 1, 1, 'Kim loại, Da', '', 'D125-R115-C295 mm', NULL, 'CTGY23', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY24_PRO01', 'Hoa lan trắng 54 cm', 7760000, 'Hoa-lan-trang-54cm-396442.jpg', 'Hoa-lan-trang-54cm-396442-1.jpg', 'Hoa-lan-trang-54cm-396442-1-3.jpg', 1, 1, 'Nhựa', '', 'D510 - R140 - C540 mm', NULL, 'CTGY24', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY24_PRO02', 'Hoa treo tường Capucine', 3750000, 'Hoa-treo-tuong-Capucine.jpg', '', '', 1, 1, '', '', 'D570 - R830 mm', NULL, 'CTGY24', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY24_PRO03', 'Hoa treo tường Orchid Gold', 5170000, 'Hoa-treo-tuong-Orchid-Gold-3105861.jpg', 'Hoa-treo-tuong-Orchid-Gold-3105861-3.jpg', 'Hoa-treo-tuong-Orchid-Gold-3105861-4.jpg', 1, 1, 'Nhựa', '', 'D400 - R120 - C440 mm', NULL, 'CTGY24', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY24_PRO04', 'Chậu hoa pivoine gloria – hồng nhạt', 2500000, 'hoa-pivoine-gloria-pot.jpg', '', '', 1, 1, 'Nhựa tổng hợp', '', 'H460 mm', NULL, 'CTGY24', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY24_PRO05', 'Chậu hoa pivoine gloria', 2500000, 'hoa-pivoine-gloria-pot-2.jpg', '', '', 1, 1, 'Nhựa tổng hợp', '', 'H460 mm', NULL, 'CTGY24', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY24_PRO06', 'Chậu Lanvender', 530000, 'hoa-3-101614.jpg', '', '', 1, 1, '', '', 'H280 mm', NULL, 'CTGY24', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY24_PRO07', 'Chậu Lanvender PURP 8.5×28-2571J', 530000, 'hoa-3-101615.jpg', '', '', 1, 1, '', '', 'Ø85-H280 mm', NULL, 'CTGY24', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY24_PRO08', 'Cây Bayleaf Ball+Trunk+Pot', 7400000, 'cay-bayleaf-ball-trunk-pot-91511.jpg', '', '', 1, 1, 'Nhựa tổng hợp', '', 'C180CM', NULL, 'CTGY24', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY24_PRO09', 'Cây cam 80CM', 3590000, '00066-1000.jpg', '', '', 1, 1, 'Nhựa tổng hợp', '', 'Ø160-C700 mm', NULL, 'CTGY24', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY24_PRO10', 'Bình hoa xương rồng trang trí', 450000, '29551-chau-xuong-rong.jpg', '', '', 1, 1, 'Nhựa', '', 'R110 - C140 mm', NULL, 'CTGY24', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY25_PRO01', 'Kệ sách Cabo', 16300000, 'KE-CABO-1400x400x1760-PMA732007.jpg', 'KE-CABO-1400x400x1760-PMA732007-1.jpg', '', 1, 1, 'MDF veneer walnut, Khung kim loại màu gold', 'Kệ sách Cabo được cấu tạo từ khung kim loại màu gold sang trọng, sự kết hợp giữa gỗ,và kim loại vàng bóng. Đặc biệt những nét bo viền trong từng chi tiết tỉ mỉ khéo léo tạo ra điểm nhấn riêng biệt độc đáo tạo không gian trưng bày đậm chất văn học cho những ai yêu thích đọc sách là điểm nhấn sáng giá cho không gian làm việc của bạn.', 'D1400 - R400 - C1760 mm', NULL, 'CTGY25', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY25_PRO02', 'Kệ sách Osaka', 19900000, 'ke-sach-osaka-3101900.jpg', 'ke-sach-osaka-3-101900.jpg', 'ke-sach-osaka-3101900-1.jpg', 1, 1, 'Gỗ Oak, MDF veneer Oak, Inox 304 màu gold', '', 'D830 - R450 - C1900 mm', NULL, 'CTGY25', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY25_PRO03', 'Kệ sách Glamour màu trắng', 25240000, '61148_ke_sach_glamour_mau_trang_l2.jpg', 'phong-khach-hien-dai-roma4.jpg', '', 1, 1, 'Gỗ xà cừ (Mahogany), Gỗ ép, Gỗ lạng', 'Kệ có nhiều ngăn chia được điểm thêm bởi các khuông rỗng với nhiều kích thước khác nhau tạo sự thu hút mới lạ', 'D2440 - R330 - C2075 mm', NULL, 'CTGY25', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY25_PRO04', 'Kệ Sách Artigo', 29360000, 'nha-xinh-ke-sach-cico.jpg', 'nha-xinh-ke-sach-chio-hinh_lifestyle.jpg', '', 1, 1, 'Gỗ Sồi kết hợp MDF veneer, Chân thép sơn tĩnh điện', 'Thương hiệu Pháp Gautier.', 'D850 - R380 - C1980 mm', NULL, 'CTGY25', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY25_PRO05', 'Kệ Sách Brem Màu Trắng', 25430000, 'nha-xinh-ke-sach-bem.jpg', 'nha-xinh-ke-sach-bem-500.jpg', '', 1, 1, 'MFC sơn lacquer', 'Là dòng sản phẩm cao cấp nhập khẩu từ Pháp. Kệ sách Brem sử dụng vật liệu MFC cao cấp chống ẩm, đạt chuẩn an toàn châu Âu, hoàn thiện sơn lacquer. Phần kệ kính cường lực 10mm có thể điều chỉnh độ cao tùy ý. Có thể kết hợp với đồ nội thất khác tạo thành vách ngăn mở cho không gian.', 'D800-R430-C2000 mm', NULL, 'CTGY25', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY25_PRO06', 'Kệ sách Division P94 White', 37010000, 'ke-sach-division-3-72809.jpg', 'ke-sach-division-3-72809-1-1.jpg', '', 1, 1, 'MDF sơn lacquer trắng', '', 'D735 - R300 - C1975 mm', NULL, 'CTGY25', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY25_PRO07', 'Kệ sách Division Nougat', 47319000, 'ke-sach-division-3-89499.jpg', 'ke-sach-division-3-89499-1-1.jpg', '', 1, 1, 'MDF sơn', '', 'D985 - R300 - C1975 mm', NULL, 'CTGY25', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY25_PRO08', 'Kệ sách Division B2 White', 27320000, 'ke-sach-division-3-89465.jpg', 'ke-sach-division-3-89465-1-1.jpg', '', 1, 1, 'MDF sơn lacquer trắng', '', 'D985- R300 - C1005 mm', NULL, 'CTGY25', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY25_PRO09', 'Kệ Sách Hangar Gr Black H200', 67890000, 'KE-SACH-HANGAR-GR-BLACK-H200-2.jpg', 'KE-SACH-HANGAR-GR-BLACK-H200-3.jpg', '', 1, 1, 'Kim Loại Sơn Màu Đen, Mdf Veneer Ask Màu Đen', '', 'D1130-R400-C2000mm', NULL, 'CTGY25', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY25_PRO10', 'Kệ treo Inside Taupe', 11959000, 'ke-treo-3-80442.jpg', 'ke-treo-3-80442-1-1.jpg', '', 1, 1, 'MDF sơn lacquer màu Taupe', '', 'D800 - R280 - C400 mm', NULL, 'CTGY25', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY26_PRO01', 'Kệ trang trí Eden', 21510000, 'ke_trang_tri_eden.jpg', '', '', 1, 1, 'Kim loại màu gold, Kính', '', 'D1400-R400-C2000 mm', NULL, 'CTGY26', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY26_PRO02', 'Kệ kim loại đen 6 tầng', 16690000, 'ke-sach-78459j-1000.jpg', '', '', 1, 1, 'Kim loại', '', 'D1010 - R390 - C1850 mm', NULL, 'CTGY26', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY26_PRO03', 'Kệ tạp chí màu nâu gỗ W60', 6060000, 'Ke-tap-chi-brown-Lth-ette-ba-W60-58890.jpg', '', '', 1, 1, 'Da tổng hợp, Kim loại', '', 'D600-R410-C515 mm', NULL, 'CTGY26', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY26_PRO04', 'Kệ Hangar cao', 67890000, '82552-1000x666-1.jpg', 'ke-hangar-cs6055gr.jpg', '', 1, 1, 'Kim loại sơn màu đen, MDF veneer', '', 'D1130-R400-C2000', NULL, 'CTGY26', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY26_PRO05', 'Kệ Hangar Ash', 32474000, 'ke-hangar-3-88106.jpg', 'ke-hangar-3-88106-1-1.jpg', '', 1, 1, 'Kim loại sơn màu trắng, MDF sơn trắng', '', 'D1130 - R400 - C830 mm', NULL, 'CTGY26', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY26_PRO06', 'Kệ trang trí hình tròn màu petrol xanh dương', 15830000, 'Ke-trang-tri-hinh-tron-mau-petrol-xanh-duong-1.jpg', 'Ke-trang-tri-hinh-tron-mau-petrol-xanh-duong-2.jpg', '', 1, 1, 'Kim loại sơn màu petrol blue', 'Từ vật liệu kim loại sơn màu petrol blue, mẫu kệ trang trí hình tròn màu petrol xanh dương hợp thời trang mang cảm hứng mới mẻ cho phòng khách là một sự lựa chọn hoàn hảo cho những gia đình thích sưu tầm những món đồ trang trí đẹp mắt nên có thể phù hợp với nhiều người.', 'Ø555 - C1460 mm', NULL, 'CTGY26', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY26_PRO07', 'Kệ trưng bày Puro- Mặt Đỏ', 25331000, '92651-1000x666-2.jpg', 'calligaris-puro-console2.jpg', '', 1, 1, 'Kim loại sơn, Kính cường lực', 'Thương hiệu Calligaris Ý', 'D1000-R300-C850 mm', NULL, 'CTGY26', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY26_PRO08', 'Kệ trưng bày PURO Ceramic P7C', 26411000, 'ke-trung-bay-puro.jpg', 'calligaris-puro-console.jpg', '', 1, 1, 'Kim loại sơn đen, mặt ceramic abs', 'Thương hiệu Calligaris Ý', 'D1000-R300-C850 mm', NULL, 'CTGY26', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY26_PRO09', 'Kệ Rack 3 tầng', 24060000, 'ke-rack-500.jpg', '', '', 1, 1, 'Kim loại', '', 'D1800 - R400 - C1800 mm', NULL, 'CTGY26', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY26_PRO10', 'Kệ Rack 3 tầng màu đen', 8830000, 'ke-rack-3-tang-500.jpg', '', '', 1, 1, 'Kim loại', '', 'D1010 - R390 - C970 mm', NULL, 'CTGY26', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY27_PRO01', 'Khung hình cánh hoa 21×26', 1290000, 'KHUNG-HINH-FRAME-FLOWER-21X26-53570K.jpg', 'KHUNG-HINH-FRAME-FLOWER-21X26-53570K-1.jpg', '', 1, 1, 'Khung nhựa tổng hợp', '', 'D210 - R20 - C260 mm', NULL, 'CTGY27', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY27_PRO02', 'Khung hình dệt polystyrene be sẫm 10×15', 260000, 'KHUNG-HINH-WOV-TEX-POLY-DBEI-10X15-23592.jpg', 'KHUNG-HINH-WOV-TEX-POLY-DBEI-10X15-23592-1.jpg', 'KHUNG-HINH-WOV-TEX-POLY-DBEI-10X15-23592-2.jpg', 1, 1, 'Nhựa tổng hợp', '', 'D160 - R45 - C210 mm', NULL, 'CTGY27', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY27_PRO03', 'Khung hình gỗ kim tuyến vàng 20×25', 190000, 'KHUNG-HINH-20X25-GLIT-WD-GD-L-8122.jpg', 'KHUNG-HINH-20X25-GLIT-WD-GD-L-8122-1.jpg', '', 1, 1, 'Gỗ công nghiệp', '', 'D220 - R15 - C270 mm', NULL, 'CTGY27', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY27_PRO04', 'Khung hình hoa hồng lãng mạn 31×26', 1790000, 'KHUNG-HINH-ROMANTIC-ROSE-31X26-53628K.jpg', 'KHUNG-HINH-ROMANTIC-ROSE-31X26-53628K-1.jpg', 'KHUNG-HINH-ROMANTIC-ROSE-31X26-53628K-2.jpg', 1, 1, 'khung nhựa tổng hợp', '', 'D260 - R32 - C310 mm', NULL, 'CTGY27', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY27_PRO05', 'Tranh ép hoa khô Bonheur L', 1060000, '104266-khung-hinh-bonheur-l.jpg', '', '', 1, 1, 'Khung kim loại, Vải canvas', '', 'R82 - C120 mm', NULL, 'CTGY27', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY27_PRO06', 'Khung hình Voyage nhỏ', 690000, '104708-khung-hinh-voyage-s.jpg', '104709-khung-hinh-voyage-L-1.jpg', '', 1, 1, 'Gỗ công nghiệp, Thủy tinh', '', 'R100 - C150 mm', NULL, 'CTGY27', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY27_PRO07', 'Khung hình Chalet lớn', 590000, '104730-khung-hinh-chalet-L.jpg', '104730-khung-hinh-chalet-L-1.jpg', '', 1, 1, 'Gỗ công nghiệp, Thủy tinh', '', 'R130 - C180 mm', NULL, 'CTGY27', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY27_PRO08', 'Khung hình Class 20X25', 510000, 'khung-hinh-3-101636.jpg', '', '', 1, 1, 'Kim loại', '', 'R230- C280 mm', NULL, 'CTGY27', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY27_PRO09', 'Khung hình trong suốt M', 390000, 'khung-anh-trong-suot-m.jpg', 'khung-anh-trong-suot.jpg', 'khung-anh-trong-suot-1.jpg', 1, 1, 'Kim loại', '', 'R200- C250mm', NULL, 'CTGY27', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY27_PRO10', 'Khung hình trang trí xanh pastel', 1290000, 'photo-art-pastel-blue-1000.jpg', '', '', 1, 1, 'Thủy tinh', '', 'R100 - C150 mm', NULL, 'CTGY27', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY28_PRO01', 'Khung hình Anemone 8X10', 7700000, 'Khung-Hinh-Anemone-8X10-175056-Mca-3105047.jpg', 'Khung-Hinh-Anemone-8X10-175056-Mca-3105047-2.jpg', 'Khung-Hinh-Anemone-8X10-175056-Mca-3105047-3.jpg', 1, 1, 'Men trắng', '', 'D330 - R266 mm', NULL, 'CTGY28', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY28_PRO02', 'Khung hình Olive Bran 5X7 Gold', 5400000, 'Khung-Hinh-Olive-Bran-3106522.jpg', 'Khung-Hinh-Olive-Bran-3106522-3.jpg', 'Khung-Hinh-Olive-Bran-3106522-1.jpg', 1, 1, 'Vàng', '', 'D247 - R203 mm', NULL, 'CTGY28', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY28_PRO03', 'Bình Calla Lily Rose', 5793000, 'BINH-CALLA-LILY-ROSE-123203-MCA-398648.jpg', 'BINH-CALLA-LILY-ROSE-123203-MCA-398648-2.jpg', 'BINH-CALLA-LILY-ROSE-123203-MCA-398648-4.jpg', 1, 1, 'Thép không gỉ, Đồng thau tự nhiên, Men trắng', '', 'Ø120 - C120 mm', NULL, 'CTGY28', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY28_PRO04', 'Tô Olive brand gold', 6775000, 'TO-OLIVE-BRANCH-GOLD-175133-MCA-391934.jpg', '', '', 1, 1, 'Thép không gỉ, Đồng thau tự nhiên, Men đen', '', 'D270 - R270 - C80 mm', NULL, 'CTGY28', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY28_PRO05', 'Đĩa Pomegranate', 2800000, 'Dia-Pomegranate-175222-4.25X5.75Cm-Mca-391947.jpg', 'Dia-Pomegranate-175222-4.25X5.75Cm-Mca-3.jpg', 'Dia-Pomegranate-175222-4.25X5.75Cm-Mca-1.jpg', 1, 1, 'Đồng tự nhiên', '', 'D146 - R108 - C25 mm', NULL, 'CTGY28', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY28_PRO06', 'Bộ dao thớt Golden Ginkgo', 10500000, 'Bo-Dao-Thot-Golden-Ginkgo-3106535.jpg', 'Bo-Dao-Thot-Golden-Ginkgo-3106535-3.jpg', 'Bo-Dao-Thot-Golden-Ginkgo-3106535-4.jpg', 1, 1, 'Đá hoa, Đồng tự nhiên, Thép không gỉ', '', 'D457 - R254 - C25 mm', NULL, 'CTGY28', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY28_PRO07', 'Bình Butterfly Ginkgo Small', 8190000, 'Binh-Butterfly-Ginkgo-Small-3105120.jpg', 'Binh-Butterfly-Ginkgo-Small-3105120-2.jpg', 'Binh-Butterfly-Ginkgo-Small-3105120-1.jpg', 1, 1, 'Thép không gỉ, Đồng tự nhiên', '', 'D152 - R139 - C203 mm', NULL, 'CTGY28', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY28_PRO08', 'Tô Butterfly Ginkgo Nut', 9600000, 'To-Butterfly-Ginkgo-Nut-3106539.jpg', 'To-Butterfly-Ginkgo-Nut-3106539-2.jpg', 'To-Butterfly-Ginkgo-Nut-3106539-4.jpg', 1, 1, 'Thép không gỉ, Đồng tự nhiên', '', 'D235 - R215 - C146 mm', NULL, 'CTGY28', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY28_PRO09', 'Giá đỡ rượu Anemone Wine', 8190000, 'Gia-Do-Ruou-Anemone-Wine-3106568-6.jpg', 'Gia-Do-Ruou-Anemone-Wine-3106568-7.jpg', 'Gia-Do-Ruou-Anemone-Wine-3106568-1.jpg', 1, 1, 'Đá hoa cương, Đồng tự nhiên, Men trắng', '', 'D279 - R114 - C152 mm', NULL, 'CTGY28', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY28_PRO10', 'Tô Mistletoe Prcl Srvg', 14600000, 'To-Mistletoe-Prcl-Srvg-3106561.jpg', 'To-Mistletoe-Prcl-Srvg-3106561-2.jpg', 'To-Mistletoe-Prcl-Srvg-3106561-3.jpg', 1, 1, 'Sứ, Đồng tự nhiên', '', 'D254 - R228 - C152mm', NULL, 'CTGY28', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY29_PRO01', 'Nệm Sen Việt 1m6', 11063000, 'nem-lo-xo-tui-senviet-1m6.jpg', 'nem-sen-viet.jpg', 'sen-viet.jpg', 1, 1, 'Lò xo túi độc lập', 'Nệm lò xo túi Sen Việt. Lò xo bảo hành 10 năm. Lò Xo Túi 7 vùng chống côn trùng, lỗ thông hơi thoáng mát. Nệm lò xo túi Sen Việt được ra mắt từ năm 2017. Bằng tinh thần sáng tạo dân tộc, kết hợp cùng công nghệ sản xuất lò xo túi, Nệm Ưu Việt đã tạo ra dòng sản phẩm Sen Việt với những đường nét hoa sen Việt Nam được chấm phá trên mặt nệm với mong muốn truyền đi ý nghĩa đạo đức lớn lao, mang một giá trị thẩm mỹ vĩnh hằng của loài hoa đã thấm sâu vào tâm hồn dân tộc. Sản phẩm được những đối tác lớn ưa chuộng, tin dùng và phân phối rộng khắp trên cả nước.', 'D2000 - R1600 - C250 mm', NULL, 'CTGY28', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY29_PRO02', 'Nệm Sen Việt 1m8', 12260000, 'nem-lo-xo-tui-senviet-1m6.jpg', 'nem-sen-viet.jpg', 'sen-viet.jpg', 1, 1, 'Lò xo túi độc lập', 'Nệm lò xo túi Sen Việt. Lò xo bảo hành 10 năm. Lò Xo Túi 7 vùng chống côn trùng, lỗ thông hơi thoáng mát. Nệm lò xo túi Sen Việt được ra mắt từ năm 2017. Bằng tinh thần sáng tạo dân tộc, kết hợp cùng công nghệ sản xuất lò xo túi, Nệm Ưu Việt đã tạo ra dòng sản phẩm Sen Việt với những đường nét hoa sen Việt Nam được chấm phá trên mặt nệm với mong muốn truyền đi ý nghĩa đạo đức lớn lao, mang một giá trị thẩm mỹ vĩnh hằng của loài hoa đã thấm sâu vào tâm hồn dân tộc. Sản phẩm được những đối tác lớn ưa chuộng, tin dùng và phân phối rộng khắp trên cả nước.', 'D2000 - R1800 - C250 mm', NULL, 'CTGY29', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY29_PRO03', 'Nệm Luxury Golden Black 1m6', 47130000, 'nem-luxury-golden-black5.jpg', 'nem-luxury-golden-black3.jpg', 'nem_eco_ruby-_col_15.jpg', 1, 1, 'Khung lò xo túi mousse, Vải', 'Nệm Luxury Golden Black với cấu tạo hàng triệu hạt gel được thấm vào nệm, được thiết kế để làm giảm nhiệt và giúp bạn mát mẻ suốt đêm. Các hạt cũng làm tăng mật độ của bọt làm cho nó thêm bền. Các lợi ích bổ sung bao gồm phục hồi nhanh hơn sau mệt mỏi cũng như cải thiện năng lượng khi thức dậy. Nệm Colmol được nhập khẩu từ Bồ Đào Nha- là thương hiệu nệm nổi tiếng từ năm 1972. Hệ thống lò xo SSI là viết tắt của hệ thống SUSPENSION độc lập với cuộn dây bỏ túi. Colmol có thể cuộn bất kỳ loại nệm nào - bao gồm lò xo túi - để tối ưu hóa chi phí vận chuyển giao hàng. Sử dụng các vật liệu hữu cơ tốt nhất, được kiểm soát, xác minh, và tất cả các quá trình đều được kiểm tra trong hệ thống kiểm soát chất lượng.', 'D2000 - R1600 - C280 mm', NULL, 'CTGY28', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY29_PRO04', 'Nệm Luxury Golden Black 1m8', 55970000, 'nem-luxury-golden-black5.jpg', 'nem-luxury-golden-black3.jpg', 'nem_eco_ruby-_col_15.jpg', 1, 1, 'Khung lò xo túi mousse, Vải', 'Nệm Luxury Golden Black với cấu tạo hàng triệu hạt gel được thấm vào nệm, được thiết kế để làm giảm nhiệt và giúp bạn mát mẻ suốt đêm. Các hạt cũng làm tăng mật độ của bọt làm cho nó thêm bền. Các lợi ích bổ sung bao gồm phục hồi nhanh hơn sau mệt mỏi cũng như cải thiện năng lượng khi thức dậy. Nệm Colmol được nhập khẩu từ Bồ Đào Nha- là thương hiệu nệm nổi tiếng từ năm 1972. Hệ thống lò xo SSI là viết tắt của hệ thống SUSPENSION độc lập với cuộn dây bỏ túi. Colmol có thể cuộn bất kỳ loại nệm nào - bao gồm lò xo túi - để tối ưu hóa chi phí vận chuyển giao hàng. Sử dụng các vật liệu hữu cơ tốt nhất, được kiểm soát, xác minh, và tất cả các quá trình đều được kiểm tra trong hệ thống kiểm soát chất lượng.', 'D2000 - R1800 - C280 mm', NULL, 'CTGY29', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY29_PRO05', 'Nệm Olive Infusion 1m6', 32400000, 'nem-olive-infusion2.jpg', 'nem_33.jpg', 'nem_43.jpg', 1, 1, 'Khung lò xo túi mousse, Vải', 'Nệm Olive Infusion có vải dầu ô liu, mềm mại khi chạm vào, và có rất nhiều lợi ích cho làn da của bạn hấp thụ khoáng chất và vitamin. Nó tăng tốc độ chữa lành, giữ ẩm cho da, giúp giảm sự xuất hiện của các vết rạn da, hỗ trợ phục hồi ở các vận động viên và làm mịn da của bạn, có đặc tính chống lão hóa. Nệm Colmol được nhập khẩu từ Bồ Đào Nha- là thương hiệu nệm nổi tiếng từ năm 1972. Hệ thống lò xo SSI là viết tắt của hệ thống SUSPENSION độc lập với cuộn dây bỏ túi. Colmol có thể cuộn bất kỳ loại nệm nào - bao gồm lò xo túi - để tối ưu hóa chi phí vận chuyển giao hàng. Sử dụng các vật liệu hữu cơ tốt nhất, được kiểm soát, xác minh, và tất cả các quá trình đều được kiểm tra trong hệ thống kiểm soát chất lượng.', 'D2000 - R1600 - C280 mm', NULL, 'CTGY28', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY29_PRO06', 'Nệm Olive Infusion 1m8', 39180000, 'nem-olive-infusion2.jpg', 'nem_33.jpg', 'nem_43.jpg', 1, 1, 'Khung lò xo túi mousse, Vải', 'Nệm Olive Infusion có vải dầu ô liu, mềm mại khi chạm vào, và có rất nhiều lợi ích cho làn da của bạn hấp thụ khoáng chất và vitamin. Nó tăng tốc độ chữa lành, giữ ẩm cho da, giúp giảm sự xuất hiện của các vết rạn da, hỗ trợ phục hồi ở các vận động viên và làm mịn da của bạn, có đặc tính chống lão hóa. Nệm Colmol được nhập khẩu từ Bồ Đào Nha- là thương hiệu nệm nổi tiếng từ năm 1972. Hệ thống lò xo SSI là viết tắt của hệ thống SUSPENSION độc lập với cuộn dây bỏ túi. Colmol có thể cuộn bất kỳ loại nệm nào - bao gồm lò xo túi - để tối ưu hóa chi phí vận chuyển giao hàng. Sử dụng các vật liệu hữu cơ tốt nhất, được kiểm soát, xác minh, và tất cả các quá trình đều được kiểm tra trong hệ thống kiểm soát chất lượng.', 'D2000 - R1800 - C280 mm', NULL, 'CTGY29', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY29_PRO07', 'Nệm Ion Protect 1m8', 20520000, 'nem-ion-protect-logo.jpg', 'nem-ion-protect-1.jpg', 'nem_eco_ruby-_col_18.jpg', 1, 1, 'Lò xo túi, Vải chống vi khuẩn', 'Nệm Ion Protect - mỗi ngày chúng ta đều tiếp xúc với các thiết bị điện tử giải phóng các ion dương. Máy tính, điện thoại di động và thiết bị không dây là một phần của môi trường quanh chúng ta. Vỏ bảo vệ ion trên thiết bị cải tiến này được truyền qua công nghệ nano với hàng triệu ion âm giúp khôi phục cân bằng ion thích hợp, chống lão hóa và loại bỏ vi khuẩn, nấm. Nó có đặc tính giảm căng thẳng, giảm mệt mỏi và điều chỉnh sự cân bằng nội tiết tố. Nệm Colmol được nhập khẩu từ Bồ Đào Nha- là thương hiệu nệm nổi tiếng từ năm 1972. Hệ thống lò xo SSI là viết tắt của hệ thống SUSPENSION độc lập với cuộn dây bỏ túi. Colmol có thể cuộn bất kỳ loại nệm nào - bao gồm lò xo túi - để tối ưu hóa chi phí vận chuyển giao hàng. Sử dụng các vật liệu hữu cơ tốt nhất, được kiểm soát, xác minh, và tất cả các quá trình đều được kiểm tra trong hệ thống kiểm soát chất lượng.', 'D2000- R1800- C230 mm', NULL, 'CTGY28', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY29_PRO08', 'Tấm tăng tiện nghi nệm 1m6', 3086000, 'nemtangitennghi-1m6.jpg', '', '', 1, 1, 'Lông vũ công nghiệp mềm mại', '', 'D2000 - R1600 - C70 mm', NULL, 'CTGY29', NULL, NULL, NULL, '', '', '');
 

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY29_PRO09', 'Tấm tăng tiện nghi nệm 1m8', 3386000, 'nemtangitennghi-1m6.jpg', '', '', 1, 1, 'Lông vũ công nghiệp mềm mại', '', 'D2000 - R1800 - C70 mm', NULL, 'CTGY28', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY29_PRO10', 'Nệm Lông Cừu 1m6', 18710000, 'nem-long-cuu.png.jpg', '', '', 1, 1, 'Lò xo túi độc lập, Vải Knitting cao cấp Tơ tằm', '', 'D2000 - R1600 - C300 mm', NULL, 'CTGY29', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY3_PRO01', 'Bàn bên Luxury Triangle Champ 84156K
', 9050000, 'BAN-BEN-LUXURY-TRIANGLE-CHAMP-84156K-305583--768x511.jpg', 'BAN-BEN-LUXURY-TRIANGLE-CHAMP-84156K-305583-4-768x511.jpg', '', 1, 1, 'MDF dán kính thủy', '', 'D320 - R320 - C535 mm', NULL, 'CTGY3', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY3_PRO02', 'Bàn bên Luxury Marble 84762K', 9350000, 'Ban-Ben-Luxury-Marble-84762K-3098205-1-768x454.jpg', 'Ban-Ben-Luxury-Marble-84762K-3098205-2-768x454.jpg', '', 1, 1, 'Kính laminate marble', '', 'D320 - R320 - C535 mm', NULL, 'CTGY3', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY3_PRO03', 'Bàn bên Trento Gold 112314E', 32900000, 'Ban-Ben-Trento-Gold-112314-3105568-768x454.jpg', 'Ban-Ben-Trento-Gold-112314-3105568-1-768x454.jpg', 'Ban-Ben-Trento-Gold-112314-3105568-2-768x454.jpg', 1, 1, 'Khung bằng vàng với các thanh acrylic và mặt bàn bằng kính trong suốt.', '', 'Ø500 - C550 mm', NULL, 'CTGY3', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY3_PRO04', 'Bàn bên Victoria hồng', 15610000, '104745-ban-ben-victoria-pink-1-768x511.jpg', '104745-ban-ben-victoria-pink-3-768x511.jpg', '104745-ban-ben-victoria-pink-4-768x511.jpg', 1, 1, 'Đá marble, xi măng', '', 'Ø410 - C470 mm', NULL, 'CTGY3', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY3_PRO05', 'Bàn bên YK', 13260000, 'ban_ben_yen_khe-768x511.jpg', '', '', 1, 1, 'Slolid oak Pháp - Inox mạ', '', 'Ø420 - C600 mm', NULL, 'CTGY3', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY3_PRO06', 'Bàn bên Bolero', 9720000, 'ban_ben_tron_bolero_99102-768x511.jpg', 'ban_ben_bolero_1-768x511.jpg', '', 1, 1, 'Chân inox màu gold- MDF bọc giả da cá đuối (faux shagreen)', 'Bàn bên Bolero có kích thước hoàn hảo cho một bộ tách trà hoặc bình hoa trang trí thêm sinh động. Kết cấu chân kim loại được sơn phủ lớp nhủ đồng nhẹ, cứng cáp. Với mặt bàn được bọc da cá đuối (Simili ) được ghép thủ công từng tấm da, mang nét độc đáo đến từng chi tiết. Sẽ thật tuyệt nếu bạn là tính đồ mang phong cách MAVERICK.', 'Ø500- C550 mm', NULL, 'CTGY3', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY3_PRO07', 'Bàn bên Maxine', 12660009, '1000-san-pham-nha-xinh_16-768x511.jpg', '1000-round-console-table-86827.jpg', 'phong-khach-maxine5-768x511.jpg', 1, 1, 'Khung gỗ Okumi, MDF veneer recon Walnut, chân inox mạ PVD màu gold', 'Kết cấu mạnh mẽ mang cảm hứng công nghiệp cơ khí tạo cho sản phẩm bàn bên Maxine trở nên cá tính và lạ mặt. Bên cạnh đó, sản phẩm vẫn sử dụng chất liệu kim loại đồng, khung gỗ beech và vân gỗ mdf của bộ sưu tập Maxine. Sản phẩm là góp phận tạo nên sự kết nối với sofa trong phòng khách. Maxine – Nét nâu trầm sang trọng Maxine, mang thiết kế vượt thời gian, gửi gắm và gói gọn lại những nét đẹp của thiên nhiên và con người nhưng vẫn đầy tính ứng dụng cao trong suốt hành trình phiêu lưu của nhà thiết kế người Pháp Dominique Moal. Bộ sưu tập nổi bật với màu sắc nâu trầm sang trọng, là sự kết hợp giữa gỗ, da bò và kim loại vàng bóng. Đặc biệt trên mỗi sản phẩm, những nét bo viên, chi tiết kết nối được sử dụng kéo léo tạo ra điểm nhất rất riêng cho bộ sưu tập. Maxine thể hiện nét trầm tư, thư giãn để tận hưởng không gian sống trong nhịp sống hiện đại. Sản phẩm thuộc BST Maxine được sản xuất tại Việt Nam.', 'Ø590 - 700 mm', NULL, 'CTGY3', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY3_PRO08', 'Bàn bên Bụi', 5800000, 'bui_ban-ben-768x511.jpg', 'phong-khach-bui4-768x511.jpg', '', 1, 1, 'MDF Veneer Thông ghép + Mây đan cọng nhỏ + Kim loại sơn tĩnh điện', 'Bàn bên BỤI là sản phẩm nằm trong bộ sưu tập (Bụi) line hàng đến từ đội ngủ thiết kế Nhà Xinh . Mang phong cách RUSTIC tạo nên nét duyên dáng độc đáo cho ngôi nhà, được thiết kế với khung kim loại sơn tĩnh điện trang trí, mặt trên bằng gỗ thông ghép, còn mặt dưới là đang dệt lại từ Mây tạo thêm nét đặc trưng cho phong cách trang trí của bạn, từ mặt vân gỗ đường nét tinh tế đến các sợi mây đang khoanh tròn. Một sản phẩm hợp xu hướng cho bất kỳ phòng nào, nó hoàn hảo để sử dụng làm bàn cuối ghế sofa hoặc làm bàn đầu giường trong phòng ngủ.', 'Ø480 - C580 mm', NULL, 'CTGY3', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY3_PRO09', 'Bộ 3 cái bàn bên tròn', 6200000, 'bo-3-cai-ban-ben-tron-76415.jpg', 'bo-3-cai-ban-ben-tron-76415-2.jpg', '', 1, 1, 'Chân kim loại - mặt gỗ', 'Bộ 3 sản phẩm là sự kết hợp hoàn hảo của gỗ và kim loại, tạo sự mềm mại cho không gian và tạo điểm nhấn, sản phẩm có thể kết hợp bàn làm bàn bên sofa, trang trí không nhỏ phòng ngủ, làm bộ bàn trà hoặc có thể tách rời các sản phẩm theo mục đích sử dun', 'D450 - R450 - C620 mm', NULL, 'CTGY3', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY3_PRO10', 'Bàn bên Porto mẫu 2', 6500000, 'ban_ben_porto-6.jpg', '100768_2_1000_666-3-768x511.jpg', '100768_3_1000-3-768x511.jpg', 1, 1, 'Gỗ White oak - MDF chống ẩm Veneer oak - Inox màu gold', '', 'D500 - R500 - C550 mm', NULL, 'CTGY3', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY30_PRO01', 'Bộ 6 nến để bàn vanilla 13h 7×4.5x24cm 93434', 490000, 'BO-6-NEN-VANILLA-13H-7x45x24CM-93434-768x495.jpg', '', '', 1, 1, 'sáp nến', '', 'D70 - R45 - C240 mm', NULL, 'CTGY30', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY30_PRO02', 'Bộ 2 chân nến Black Iris 111209', 13600000, 'chan-nen-black-iris-w10cm-111209-mca-768x511.jpg', '', '', 1, 1, 'Thép không gỉ', '', 'D139 -7 - R95 - 3 - C381 mm', NULL, 'CTGY30', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY30_PRO03', 'Bộ 6 nến để bàn đỏ Giáng sinh 13h 7×4.5×24 87156', 490000, 'BO-6-NEN-CHRISTM-RED-13H-7x45x24-87156-768x495.jpg', '', '', 1, 1, 'sáp nến', '', 'D70 - R45 - C240 mm', NULL, 'CTGY30', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY30_PRO04', 'Bộ 6 nến để bàn xanh lá đậm 13h 24cm 80551', 490000, 'BO-6-NEN-TABLE-D-GREEN-13H-24CM-80551-768x495.jpg', '', '', 1, 1, 'sáp nến', '', 'D70 - R45 - C240 mm', NULL, 'CTGY30', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY30_PRO05', 'Bộ ba chân nến Neo 10×30 29078J', 1820000, 'CHAN-NEN-S3-NEO-ALU-GD-10X30-29078J-768x495.jpg', '', '', 1, 1, 'Metal', '', 'D105 - R105 - C305 mm', NULL, 'CTGY30', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY30_PRO06', 'Chân nến Aras Brass 113903E', 18700000, 'Chan-Nen-Aras-Brass-113903E-3105574-768x454.jpg', 'Chan-Nen-Aras-Brass-113903E-3105574-4-768x454.jpg', 'Chan-Nen-Aras-Brass-113903E-3105574-1-768x454.jpg', 1, 1, 'Đồng đánh bóng', '', 'D160 - R165 - C480 mm', NULL, 'CTGY30', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY30_PRO07', 'Chân nến gốm Cathedral blue', 3731000, '89275-chan-nen-cathedral-blue-calligaris-768x511.jpg', '', '', 1, 1, 'Gốm sứ', 'Cathedral là một chân nến bằng gốm với 7 vị trí cắm nến dễ dáng sắp xếp theo các vị trí khác nhau như 3 cây, 4 cây hoặc 7 cây. Với dạng như một tòa thành, Cathedral dễ dàng khiến ta liên tưởng đến những bữa tiệc hoàng gia sang trọng thời kỳ trung cổ.', 'D360 - R145 - C135 mm', NULL, 'CTGY30', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY30_PRO08', 'Chân nến Parrot', 13500000, 'Chan-nen-Parrot-3105865-768x511.jpg', 'Chan-nen-Parrot-3105865-3-768x511.jpg', 'Chan-nen-Parrot-3105865-7-768x511.jpg', 1, 1, 'Nhựa', '', 'D270 - R260 - C970 mm', NULL, 'CTGY30', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY30_PRO09', 'Chân nến quả thơm lớn', 730000, '93455-chan-nen-qua-thom-vang-l.jpg', '', '', 1, 1, 'Nhựa tổng hợp', '', 'Ø110 - C250 mm', NULL, 'CTGY30', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY30_PRO10', 'Nến Garland', 2750000, '104039-nen-thom-chum-hoa-michael-aram-garland-candle-768x511.jpg', '104039-nen-thom-chum-hoa-michael-aram-garland-candle-2-768x511.jpg', '', 1, 1, 'Kim loại, thủy tinh, sáp nến', '', 'Ø95 - 3 - C120 - 7 mm', NULL, 'CTGY30', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY31_PRO01', 'Sofa 3 chỗ Osaka mẫu 1 vải 29', 28900000, 'SOFA-3-CHO-OSAKA-MAU-1-VAI-29.jpg', 'sofa-osaka-3-cho-3101896-768x454.jpg', 'sofa-osaka-3-cho-3101896-4-768x454.jpg', 1, 1, 'Chân Inox màu gold, tay gỗ, bọc vải, nệm ngồi tháo rời', '', 'D2060 - R750 - C820 mm', NULL, 'CTGY31', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY31_PRO02', 'Sofa Penny 3 chỗ da Veneza 506 MB', 61860000, 'sofa-3-cho-boc-da-penny-mau-be-1-768x511.jpg', 'sofa-3-cho-boc-da-penny-mau-be-2-768x511.jpg', '', 1, 1, 'Chân kim loại sơn, nệm bọc da tự nhiên, nệm ngồi & lưng rời', '', 'D2400 - R880 - C850 mm', NULL, 'CTGY31', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY31_PRO03', 'Sofa 3 chỗ Elegance màu đen, da Brown R5', 124850000, '102411-sofa-elegance-mau-den-da-brown-2_1-768x511.jpg', '102411-sofa-elegance-mau-den-da-brown-3_1-768x511.jpg', '', 1, 1, 'Gỗ Ash (tần bì) đặc tự nhiên nhập khẩu từ Mỹ, da bò Patrol R5 nhập khẩu', '', 'D2250 - R905 - C790 mm', NULL, 'CTGY31', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY31_PRO04', 'Sofa Bridge 3 chỗ hiện đại da Beige', 109890000, 'sofa-bridge-khung-go-soi-boc-da-bo-cao-cap-sang-trong-mau-kem-86220.jpg', 'bridge-kem-3-nghieng-500.jpg', '', 1, 1, 'Khung gỗ sồi đặc tự nhiên nhập khẩu từ Mỹ- Da Ý tự nhiên cao cấp', 'Sofa Bridge 3 chỗ với thiết kế vượt thời gian, sử dụng chất liệu gỗ sồi đặc và da bò tự nhiên, sofa Bridge là điểm nhấn đẳng cấp trong phòng khách của bạn. Đặc biệt, phần tay vịn được hoàn thiện vô cùng tinh xảo kết hợp với kết cấu vô cùng chắn chắn giúp cho sofa Bridge tạo cảm xúc gần gũi, tự nhiên và thoái mái khi sử dụng. Sản phẩm có các màu sắc hoàn thiện gỗ sồi sáng và trầm và nhiều màu da khác nhau để lựa chọn. Sofa Bridge 3 chỗ là 1 lựa chọn sáng gia cho phong cách nội thất Bắc Âu.', 'D2100- R900- C750 mm', NULL, 'CTGY31', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY31_PRO05', 'Sofa Jazz 3 chỗ hiện đại da nâu', 58810000, 'sofa-jazz-3-cho-hien-dai-da-that-chan-kim-loai-81214-mau-nau-768x511.jpg', 'phong-khach-jazz-200629-1000x666-1-768x511.jpg', '', 1, 1, 'Khung gỗ bọc da tự nhiên cao cấp', 'Sofa Jazz 3 chổ được bao bọc bởi lớp da bò cao cấp đem lại cảm giác mềm mại, êm ái, thư giãn tuyệt vời. Thiết kế hiện đại mang nét đẹp độc đáo từ hình khối thanh lịch, đường nét tinh tế là điểm cộng lớn nhất của sofa Jazz.', 'D2300 - R840 - C760 mm', NULL, 'CTGY31', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY31_PRO06', 'Sofa Mây 2.5 chỗ hiện đại da Fango', 39180000, 'sofa-may-khung-go-may-dan-tu-nhien-dem-boc-da-fango-96230-768x511.jpg', 'sofa_may_3_cho_da_go_tram_may_tu_nhien_96230_2-768x511.jpg', 'sofa_may_3_cho_da_go_tram_may_tu_nhien_96230_3-768x511.jpg', 1, 1, 'Gỗ Acacia ( Tràm )+ Mây tự nhiên+ Nệm bọc da+ Chân bọc inox mạ đồng', 'Sofa Mây 2.5 chỗ mang kiểu dáng thanh lịch, hiện đại với kết cấu bằng khung gỗ và chất liệu mây 2 lớp. Phần đệm ngồi bằng da có thể tách rời. Các chi tiết được hoàn thiện với màu sắc trầm nhẹ nhàng và nhấn nhá kim loại đồng tinh tế. Sofa Mây có nhiều màu sắc khác nhau để chọn lựa phù hợp không gian phòng khách của bạn.', 'D1800 - R750 - C860', NULL, 'CTGY31', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY31_PRO07', 'Sofa Maxine 3 chỗ hiện đại da English Saddle', 143250000, 'sofa-maxine-3-cho-da-english-mau-nau-co-dien-87472.jpg', '500-sofa-maxine-nghieng.jpg', 'phong-khach-sofa-maxine-3,jpg', 1, 1, 'Gỗ Mahogany+ Da bò tự nhiên cao cấp-nhập khẩu Anh Quốc', 'Sofa Maxine 3 chỗ với điểm nhấn đặc biệt ở những hàng nút phá cách màu vàng đồng, lớp da bò màu cognac nổi bật. Sofa Maxine là 1 lựa chọn sáng giá cho không gian phòng khách sang trọng, tinh tế.', 'D2160- R1010- C850 mm', NULL, 'CTGY31', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY31_PRO08', 'Sofa Maxine 3 chỗ hiện đại da Cognac', 48010000, 'sofa-maxine-3-cho-da-cognac-hien-dai-100762.jpg', 'sofa_maxine_cognac_1-768x511.jpg', 'bridge-sofa-100762-768x511.jpg', 1, 1, 'Chân kim loại màu gold - Khung da bò tự nhiên - Nệm vải', 'Sofa Maxine 3 chỗ với thiết kế gọn gàng, tối giản. Sofa Maxine 3 chỗ “linh động”, “ấm áp” với nhiều màu sắc khác nhau để chọn lựa, phù hợp không gian phòng khách hiện đại của gia đình bạn.', 'D2100 - R850 - C830 mm', NULL, 'CTGY31', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY31_PRO09', 'Sofa Maxine 3 chỗ hiện đại da Mushroom bọc vải KD', 48010000, '100763-sofa-maxine-da-mush-boc-vai-3.jpg', '13b-768x511.jpg', '13a-768x511.jpg', 1, 1, 'Chân kim loại màu gold - Khung da bò tự nhiên - Nệm vải', 'Sofa Maxine 3 chỗ với thiết kế gọn gàng, tối giản. Sofa Maxine 3 chỗ “linh động”, “ấm áp” với nhiều màu sắc khác nhau để chọn lựa, phù hợp không gian phòng khách hiện đại của gia đình bạn.', 'D2100 - R850 - C830 mm', NULL, 'CTGY31', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY31_PRO10', 'Sofa Combo 3 chỗ da Bali 518', 59900000, 'Sofa-Combo-3-cho-da-Bali-518-2-768x511.jpg', 'Sofa-Combo-3-cho-da-Bali-518-1-2-768x511.jpg', 'Sofa-Combo-3-cho-da-Bali-518-2-1-768x511.jpg', 1, 1, 'Khung gỗ beech, mousse siêu đàn hồi, chân kim loại sơn đen + gold, bọc da tự nhiên', 'Sofa Combo 3 chỗ da Bali 518 màu cam gạch thời thượng là sự lựa chọn sáng suốt nhất của bạn cho không gian phòng khách thêm ấm áp, êm ái. Đây là mẫu sofa da sở hữu khung gỗ beech cùng với mousse siêu đàn hồi, chân kim loại sơn đen và gold, bọc da tự nhiên rất bền, đẹp, giá cả phải chăng phù hợp với các không gian thường xuyên tiếp khách, người ra vào nhiều.', 'D2100 - R860 - C720mm', NULL, 'CTGY31', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY32_PRO01', 'Sofa Poppy góc trái vải màu cam', 29360000, 'sofa_vai_poppy_mau_hong_12-6-768x511.jpg', 'sofa_vai_poppy_mau_hong-768x511.jpg', '', 1, 1, 'Chân gỗ - Vải cao cấp', '', 'D2400/1350 - R830 - C700 mm', NULL, 'CTGY32', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY32_PRO02', 'Sofa góc trái – phải Rumba hiện đại vải xanh MB18', 19540000, 'sofa-goc-rumaba-vai-xanh-hien-dai-101492-6-8.jpg', 'sofa-goc-rumaba-vai-xanh-hien-dai-101492-5-768x511.jpg', 'sofa-goc-rumaba-vai-xanh-hien-dai-101492-2-768x511.jpg', 1, 1, 'Khung gỗ bọc vải cao cấp - Chân gỗ sồi', 'Sofa góc trái - phải Rumba với thiết kế nhỏ gọn, linh động với góc chữ L rời. Phù hợp cho những căn hộ có không gian vừa và nhỏ, bạn có thể thỏa thích sắp xếp góc theo ý phải hay trái tùy vào kết cấu góc phòng. Hơn nữa bạn cũng có thể biến tấu bộ sofa góc đơn giản thành bộ sofa 3.1 rời để không gian phòng khách nhà bạn trở nên mới mẻ hơn.', 'D2000/1400 - R810 - C750 mm', NULL, 'CTGY32', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY32_PRO03', 'Sofa góc phải Rumba Vải 28', 19540000, 'sofa-goc-rumba-thay-doi-goc-linh-hoat-boc-vai-hien-dai-91215-4.jpg', 'sofa_rumba_91215_3-768x512.jpg', 'sofa_rumba_91215_4-768x511.jpg', 1, 1, 'Chân gỗ -bọc vải cao cấp', 'Sofa Góc nhỏ gọn Rumba được thiết kế linh động với góc chữ L rời. Phù hợp cho những căn hộ có không gian vừa và nhỏ, bạn có thể thỏa thích sắp xếp góc theo ý phải hay trái tùy vào kết cấu góc phòng. Hơn nữa bạn cũng có thể biến tấu bộ sofa góc đơn giản thành bộ sofa 3.1 rời để căn phòng khách nhà bạn trở nên mới mẻ hơn.', 'D2000/1400 -R810 -C750', NULL, 'CTGY32', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY32_PRO04', 'Sofa góc trái Shadow vải beige FY-02', 29900000, 'SOFA-SHADOW-GOC-TRAI-BEIGE-FY-02-768x511.jpg', 'sofa-shadow3-1-768x511.jpg', '', 1, 1, 'Chân kim loại - Vải cao cấp', 'Sofa góc trái Shadow với thiết kế nhỏ gọn, phù hợp cho các không gian căn hộ có diện tích vừa phải. Kiểu dáng nhẹ nhàng, đơn giản nhưng không kém phần tinh tế với điểm nhấn là nệm lưng ghế được may chỉ ở giữa rất duyên dáng. Tay sofa tạo khối bo tròn thấp làm cho tổng thể nhỏ gọn hết mức. Sofa góc Shadow là lựa chọn tối ưu cho không gian phòng khách hiện đại.', 'D2550/1600- R955- C860mm', NULL, 'CTGY32', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY32_PRO05', 'Sofa góc trái Monaco + Đôn vải 2041/13 +141/23', 42900000, 'SOFA-MONACO-GOC-PHAI-DON-VAI-2041-13-141-23-5-768x495.jpg', 'SOFA-MONACO-GOC-PHAI-DON-VAI-2041-13-141-23-2-768x511.jpg', '', 1, 1, 'Khung gỗ bọc vải 2 màu, bao gồm 3 gối', 'Sofa góc trái Monaco + Đôn vải 2041/13 +141/23 với phần nệm ngồi êm ái, chân sofa sử dụng khung gỗ tạo sự gần gũi và ấm cúng, là 1 lựa chọn tối ưu cho không gian phòng khách hiện đại, tiện nghi cho cả gia đình.', 'D2750 - R1850 - C700 mm / D900 - R890 - C450 mm', NULL, 'CTGY32', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY32_PRO06', 'Sofa góc trái Monaco + Đôn vải 559/03 +141/23', 42900000, 'SOFA-MONACO-GOC-TRAI-DON-VAI-559-03-141-23-768x511.jpg', '', '', 1, 1, 'Khung gỗ bọc vải 2 màu, bao gồm 3 gối', 'Sofa góc trái Monaco + Đôn vải 2041/13 +141/23 với phần nệm ngồi êm ái, chân sofa sử dụng khung gỗ tạo sự gần gũi và ấm cúng, là 1 lựa chọn tối ưu cho không gian phòng khách hiện đại, tiện nghi cho cả gia đình.', 'D2750 - R1850 - C700 mm / D900 - R890 - C450 mm', NULL, 'CTGY32', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY32_PRO07', 'Sofa góc trái Rap hiện đại vải vàng', 29360000, 'sofa-goc-rap-boc-vai-vang-95321.jpg', '', '', 1, 1, 'Khung gỗ - Bọc vải cao cấp', 'Sofa góc phải Rap với phần nệm ngồi êm ái, chân sofa sử dụng kim loại bóng sáng không rỉ tạo sự sang trọng. Sofa góc Rap là 1 lựa chọn tối ưu cho không gian phòng khách hiện đại, tiện nghi cho cả gia đình.', 'D2530/1760- R 850- C700 mm', NULL, 'CTGY32', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY32_PRO08', 'Sofa góc trái Pio', 36900000, 'sofa-goc-pio-vai-hien-dai-100204-768x511.jpg', 'nha-xinh-phong-khach-pio-hien-dai-1-768x512.jpg', '', 1, 1, 'Gỗ Beech+ Bọc vải , nệm ngồi & lưng rời', 'Sofa góc trái Pio với thiết kế mới lạ, điểm nhấn là phối màu vải hài hòa giữa nệm và khung ghế, dây đai phần lưng như một khuy áo nhằm gia tăng nệm lưng lên xuống tùy theo nhu cầu sử dụng của bạn. Ưu điểm lớn của Pio là bạn có thể phối màu cho bộ sofa yêu thích của mình thay vì chỉ sử dụng một màu đơn sắc thông thường. Chân sofa cũng được thiết kế nhấn nhá chi tiết bằng hai màu sắc thời thượng để tổng thể chung trở nên bắt mắt, hoàn hảo, vỏ nệm có thể tháo rời để vệ sinh. Sofa góc Pio là lựa chọn tối ưu cho không gian phòng khách Bắc Âu - hiện đại.', 'D2800/1650- R850- C810', NULL, 'CTGY32', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY32_PRO09', 'Sofa góc trái Pio hiện đại vải Atlanta', 36900000, 'sofa-goc-pio-boc-vai-atlanta-hien-dai-98026-768x511.jpg', 'phong-khach-pio94-768x511.jpg', '', 1, 1, 'Gỗ Beech+ Bọc vải ', 'Sofa góc trái Pio với thiết kế mới lạ, điểm nhấn là phối màu vải hài hòa giữa nệm và khung ghế, dây đai phần lưng như một khuy áo nhằm gia tăng nệm lưng lên xuống tùy theo nhu cầu sử dụng của bạn. Ưu điểm lớn của Pio là bạn có thể phối màu cho bộ sofa yêu thích của mình thay vì chỉ sử dụng một màu đơn sắc thông thường. Chân sofa cũng được thiết kế nhấn nhá chi tiết bằng hai màu sắc thời thượng để tổng thể chung trở nên bắt mắt, hoàn hảo, vỏ nệm có thể tháo rời để vệ sinh. Sofa góc Pio là lựa chọn tối ưu cho không gian phòng khách Bắc Âu - hiện đại.', 'D2800/1650- R850- C810', NULL, 'CTGY32', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY32_PRO10', 'Sofa Combo góc trái da Bali 520', 96900000, 'SOFA-COMBO-GOC-TRAI-DA-BALI-520-768x511.jpg', 'Sofa-Combo-goc-trai-da-Bali-520-4-1-768x495.jpg', 'Sofa-Combo-goc-trai-da-Bali-520-6-1-768x495.jpg', 1, 1, 'Chân kim loại 2 màu đen/gold - nệm bọc da tự nhiên', 'Sofa Combo góc trái da Bali 520 có thiết kế 3 chỗ ngồi với phần chân bằng kim loại được sơn phối hợp 2 màu đen và gold. Phần nệm ghế được bọc da Bali bền và đẹp tạo cảm giác thoải mái dễ chịu khi ngồi. Sofa Combo bọc da tự nhiên với thiết kế sang trọng, hiện đại phù hợp cho không gian quây quần sum họp gia đình sau khoảng thời gian đi làm bận rộn hay là nơi chào đón những vị khách đến chơi nhà.', 'D2800/1600 - R890 - C725 mm', NULL, 'CTGY32', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY33_PRO01', 'Tủ áo Acrylic', 32900000, 'Tu-ao-Acrylic-768x511.jpg', 'Tu-ao-Acrylic-1-768x511.jpg', 'Tu-ao-Acrylic-2-768x511.jpg', 1, 1, 'Thùng MFC chống ẩm - mặt MDF Acrylic Parc50', '', 'D1600 - R600 - C2000 mm', NULL, 'CTGY33', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY33_PRO02', 'Tủ áo Harmony', 12670000, 'tu-ao-harmony-7-768x511.jpg', 'tu-ao-harmony-4-3-768x511.jpg', '', 1, 1, 'Gỗ sồi+ tràm, MDF sơn trắng', 'Là sự kết hợp của màu trắng tinh khôi với màu gỗ ấm áp trên nền những đường nét thiết kế hiện đại, trang nhã. Harmony được đánh giá rất cao cả về kiểu dáng và công năng, đó sẽ là niềm tự hào của gia chủ khi khách đến thăm nhà.', 'D980 - R630 - C1980', NULL, 'CTGY33', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY33_PRO03', 'Tủ áo hiện đại', 24900000, 'tu-ao-hien-dai-500.jpg', 'tu-ao-hien-dai-2.jpg', 'tu-ao-hien-dai-5-500.jpg', 1, 1, 'MFC chống ẩm -phụ kiện Hafele', 'Mẫu tủ áo hiện đại của Nhà Xinh với thiết kế giản đơn, tối đa tiện ích bằng nhiều ngăn kéo và khoảng trống để cất trữ quần áo và đồ đạc.', 'D1600-R600-C2000mm', NULL, 'CTGY33', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY33_PRO04', 'Tủ áo hiện đại', 24450000, '3-99496-1-768x511.jpg', '', '', 1, 1, 'MFC chống ẩm -phụ kiện Hafele', 'Mẫu tủ áo hiện đại của Nhà Xinh với thiết kế giản đơn, tối đa tiện ích bằng nhiều ngăn kéo và khoảng trống để cất trữ quần áo và đồ đạc.', 'D1600-R600-C2000mm', NULL, 'CTGY33', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY33_PRO05', 'Maxine wardrobe', 43200000, '3_91000_1-768x513.jpg', '3_91000_2-768x513.jpg', '', 1, 1, 'Gold PVD plated stainless steel legs - MDF veneer recon Walnu', 'Tủ áo Maxine chứa đựng đầy đủ công năng tối ưu cho việc cất trữ quần áo bằng việc bố trí sắp xếp hợp lý các ngăn tủ. Những chi tiết về phụ kiện cao cấp giúp cho việc thao tác nhẹ nhàng. Bề ngoài, tủ được thiết kế duyên dáng và thu hút với sắc nâu trầm và kim loại đồng. Maxine – Nét nâu trầm sang trọng. Maxine, mang thiết kế vượt thời gian, gửi gắm và gói gọn lại những nét đẹp của thiên nhiên và con người nhưng vẫn đầy tính ứng dụng cao trong suốt hành trình phiêu lưu của nhà thiết kế người Pháp Dominique Moal. Bộ sưu tập nổi bật với màu sắc nâu trầm sang trọng, là sự kết hợp giữa gỗ, da bò và kim loại vàng bóng. Đặc biệt trên mỗi sản phẩm, những nét bo viên, chi tiết kết nối được sử dụng kéo léo tạo ra điểm nhất rất riêng cho bộ sưu tập. Maxine thể hiện nét trầm tư, thư giãn để tận hưởng không gian sống trong nhịp sống hiện đại. Sản phẩm thuộc BST Maxine được sản xuất tại Việt Nam.', 'W1200 - D600 - H2100mm', NULL, 'CTGY33', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY34_PRO01', 'Tủ âm Canon', 18000000, 'tu_am_tuong_canon_l.jpg', '', '', 1, 1, 'Gỗ óc chó (Walnut), gỗ ép và ván lạng Sồi nhân tạo (Oak recon)', '', 'D3000/2700 - R600 - C2400', NULL, 'CTGY34', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY34_PRO02', 'Tủ âm Diamond', 23000000, 'tu_am_tuong_diamond_l.jpg', '', '', 1, 1, 'Gỗ xà cừ (Mahogany), MDF', '', 'D2500 - R600 - C2200', NULL, 'CTGY34', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY34_PRO03', 'Tủ âm Kiwi', 17500000, 'tu_am_tuong_kiwi_a_l.jpg', 'tu_am_tuong_kiwi_b_l.jpg', '', 1, 1, 'Gỗ óc chó (Walnut), gỗ ép và ván lạng óc chó nhân tạo (Walnut recon)', '', 'D2275/4400/2275 - R600 - C2400', NULL, 'CTGY34', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY34_PRO04', 'Tủ âm Whitecalypso', 21000000, 'tu_am_tuong_whitecalypso_l.jpg', '', '', 1, 1, 'Gỗ óc chó (Walnut), gỗ xà cừ (Mahogany), gỗ ép, ván lạng óc chó nhân tạo', '', 'D3480 - R600 - C2350', NULL, 'CTGY34', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY35_PRO01', 'Tủ bếp Daily', 50000000, '7._daily-768x511', '', '', 1, 1, 'Thùng MFC – Cánh Acrylic và sơn bóng', '', 'Tùy theo không gian nhà b?p th?c t?', NULL, 'CTGY35', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY35_PRO02', 'Tủ bếp Fancy', 52000000, '6._fancy-768x511', '', '', 1, 1, 'Thùng MFC – Cánh Acrylic và sơn bóng', '', 'Tùy theo không gian nhà b?p th?c t?', NULL, 'CTGY35', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY35_PRO03', 'Tủ bếp Olive', 45000000, '5._olive-768x496', '', '', 1, 1, 'Thùng MFC – Cánh Acrylic và sơn bóng', '', 'Tùy theo không gian nhà b?p th?c t?', NULL, 'CTGY35', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY35_PRO04', 'Tủ bếp Elita', 49000000, '4._elita-768x511', '8._elita_2-768x511', '', 1, 1, 'Thùng MFC – Cánh Acrylic và sơn bóng', '', 'Tùy theo không gian nhà b?p th?c t?', NULL, 'CTGY35', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY35_PRO05', 'Tủ bếp Charmy', 51000000, '3._charmy_2-768x511', '3._charmy_1-768x511', '', 1, 1, 'Thùng MFC – Cánh Acrylic và sơn bóng', '', 'Tùy theo không gian nhà b?p th?c t?', NULL, 'CTGY35', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY35_PRO06', 'Tủ bếp Jolie', 50000000, 'untitled-768x511', '2._jolie_2-768x511', '', 1, 1, 'Thùng MFC – Cánh Acrylic và sơn bóng', '', 'Tùy theo không gian nhà b?p th?c t?', NULL, 'CTGY35', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY35_PRO07', 'Tủ bếp Classy', 48000000, '1._classy_2-32-768x511', '1._classy_2-33-768x511', '1._classy_1-16-768x511', 1, 1, 'Thùng MFC – Cánh Acrylic và sơn bóng', '', 'Tùy theo không gian nhà b?p th?c t?', NULL, 'CTGY35', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY35_PRO08', 'Tủ bếp Venus', 55000000, 'nha-xinh-tu-bep-venus-768x511', '', '', 1, 1, 'Thùng MFC – Cánh Acrylic và sơn bóng', '', 'Tùy theo không gian nhà b?p th?c t?', NULL, 'CTGY35', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY36_PRO01', 'Kệ giày Caruso 5 Doors', 10900000, 'Ke-giay-Caruso-5-Doors-3105870-768x511', 'Ke-giay-Caruso-5-Doors-3105870-6-768x511', 'Ke-giay-Caruso-5-Doors-3105870-8-768x511', 1, 1, 'Kim loại', '', 'D500 - R140 - C1700 mm', NULL, 'CTGY36', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY36_PRO02', ' Tủ giày Caruso 2 ngăn nâu75X77 86217K', 14500000, 'TU-GIAY-CARUSO-DBLE-BRZ-75X77-86217K-768x495', 'TU-GIAY-CARUSO-DBLE-BRZ-75X77-86217K-1-768x495', '', 1, 1, 'Kim loại', '', 'D500 - R140 - C1700 mm', NULL, 'CTGY36', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY36_PRO03', ' Tủ giày Caruso 3 ngăn trắng H103x50x14 9287K', 6900000, 'TU-GIAY-CARUSO-3-WHITE-H103x50x14-9287K-768x495', 'TU-GIAY-CARUSO-3-WHITE-H103x50x14-9287K-1-768x495', '', 1, 1, 'Kim loại', '', 'D500 - R140 - C1030 mm', NULL, 'CTGY36', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY36_PRO04', 'Tủ giày Caruso 5 ngăn trắng H170x50x14 9288K', 10900000, 'TU-GIAY-CARUSO-5-WHITE-H170x50x14-9288K-768x495', 'TU-GIAY-CARUSO-5-WHITE-H170x50x14-9288K-2-768x495', '', 1, 1, 'Kim loại', '', 'D500 - R140 - C1700 mm', NULL, 'CTGY36', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY36_PRO05', ' Tủ giày Caruso 5 ngăn xám H170x50x14 82568K', 10900000, 'TU-GIAY-CARUSO-5-GREY-H170x50x14-82568K-768x495', 'TU-GIAY-CARUSO-5-GREY-H170x50x14-82568K-3-768x495', '', 1, 1, 'Kim loại', '', 'D500 - R140 - C1700 mm', NULL, 'CTGY36', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY36_PRO06', 'Tủ giày 3 ngăn Caruso', 5270000, '103181-tu-giay-caruso-silver-3-ngan-2-768x511', '103181-tu-giay-caruso-silver-3-ngan-1', '', 1, 1, 'Kim loại', '', 'D500- R140- C1030 mm', NULL, 'CTGY36', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY36_PRO07', 'Tủ giày 4 ngăn Luxury 84995K', 34900000, 'tu-giay-luxury-4-drawer-84995k-768x511', 'tu-giay-luxury-4-drawer-84995k-2-768x511', '', 1, 1, 'MDF - Kính cường lực tráng gương', '', 'D550- R300- C1460 mm', NULL, 'CTGY36', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY36_PRO08', 'ủ giày 3 ngăn Luxury 84993K', 24690000, 'tu-giay-luxury-3-drawer-84993k-768x511', 'tu-giay-luxury-3-drawer-84993k-2-768x511', '', 1, 1, 'MDF - Kính cường lực tráng gương', '', 'D550- R300- C1240 mm', NULL, 'CTGY36', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY37_PRO01', 'Tủ Thấp Meena 410040Z', 39700000, 'TU-THAP-MEENA-410040Z-1-768x511', 'TU-THAP-MEENA-410040Z-3-768x511', 'TU-THAP-MEENA-410040Z-6-768x511', 1, 1, 'Khung và chân sắt sơn tĩnh điện', '', 'D800-R400-C950 mm', NULL, 'CTGY37', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY37_PRO02', 'Tủ hộc kéo Osaka', 23900000, 'Tu-hoc-keo-Osaka-3101899-1-768x511', 'Tu-hoc-keo-Osaka-3101899-4-768x454', '', 1, 1, 'Gỗ Oak - MDF veneer Oak - Inox 304 màu gold', '', 'D900 - R500 - C1100 mm', NULL, 'CTGY37', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY37_PRO03', 'Tủ hộc kéo Pio', 16590000, 'line-may_2-', 'phong-an-pio5-768x511', '', 1, 1, 'Gỗ Oak - MDF veneer Oak - Inox 304 màu gold', 'Tủ hộc kéo Pio giúp cất trữ tối ưu cho những đồ đạc trong phòng ngủ của bạn. Những ngăn kéo được thiết kế rộng rãi, kiểu dáng lạ tạo những  góc nhìn mới mẻ và duyên dáng. Tủ hộc kéo Pio hoàn thiện với màu nâu xám kết hợp với màu ghi.', 'D1400-R450-C900', NULL, 'CTGY37', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY37_PRO04', 'Tủ hộc kéo Dubai', 12670000, 'tu-hoc-keo-dubai_1-768x511', 'phong-an-dubai-768x511', '', 1, 1, 'Gỗ Oak - MDF veneer Oak - Inox 304 màu gold', '', 'D1200-R400-C750', NULL, 'CTGY37', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY37_PRO05', 'Tủ hộc kéo City', 35248000, '500-72463-nha-xinh-phong-khach-tu-city2', '500-72463-nha-xinh-phong-ngu-tu-hoc-keo-city4', '', 1, 1, 'MDF Veneer - Kính cường lực', 'Tủ hộc kéo City được nhập khẩu từ thương hiệu nổi tiếng Calligaris của Ý, với khung gỗ sang trọng kết hợp cùng mặt kính cường lực, ba hộc kéo rộng rãi với cách thiết kế thông minh không cần tay nắm cho căn phòng thêm rộng rãi, chắc chắn là vật cần thiết đáp ứng cả về công năng và thẩm mỹ cho căn phòng bạn. ', 'D1200 - R500 - C700', NULL, 'CTGY37', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY37_PRO06', 'Tủ hộc kéo City CS/576-D P201/Gew', 31000000, 'tu_hk_city1-768x511', '', '', 1, 1, 'MDF Veneer walnut - Kính cường lực', 'Tủ hộc kéo City được nhập khẩu từ thương hiệu nổi tiếng Calligaris của Ý, với khung gỗ sang trọng kết hợp cùng mặt kính cường lực, ba hộc kéo rộng rãi với cách thiết kế thông minh không cần tay nắm cho căn phòng thêm rộng rãi, chắc chắn là vật cần thiết đáp ứng cả về công năng và thẩm mỹ cho căn phòng bạn.', 'D1200-R500-C700', NULL, 'CTGY37', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY37_PRO07', ' Tủ Hộc Kéo Universal Ceramic P9C', 84400000, 'TU-HOC-KEO-UNIVERSAL-CERAMIC-P9C-2-768x511', 'TU-HOC-KEO-UNIVERSAL-CERAMIC-P9C-3-768x511', '', 1, 1, 'Chân kim loại sơn -khung gỗ sơn trắng -mặt Ceramic P9C', '', 'D1605-R500-C645 mm', NULL, 'CTGY37', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY37_PRO08', 'Tủ Hộc Kéo York Ceramic', 98000000, 'TU-HOC-KEO-YORKCERAMIC-2-768x511', 'TU-HOC-KEO-YORKCERAMIC-4-768x511', '', 1, 1, 'Chân kim loại sơn -khung gỗ sơn trắng -mặt Ceramic P9C', '', 'D1235-R470-C780 mm', NULL, 'CTGY37', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY38_PRO001', 'Tủ Buffet Osaka', 29900000, 'tu-buffet-osaka-3101890-768x511.jpg', 'tu-buffet-osaka-3101890-1-768x454.jpg', '', 1, 1, 'Gỗ Oak - MDF veneer Oak - Inox 304 màu gold', '', 'D1800 - R400 - C815 mm', NULL, 'CTGY38', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY38_PRO002', 'Tủ ly Shadow', 19900000, 'tu-ly-shadow-768x511.jpg', 'phong-an-shadow5-768x511.jpg', '', 1, 1, 'Chân, tay nắm kim loại màu đồng + MDF Veneer sồi', '', 'D1600- R450- C750', NULL, 'CTGY38', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY38_PRO003', 'Tủ ly Bridge gỗ nâu', 56650000, '73859-tu-ly-bridge-go-nau-768x511.jpg', '1000-san-pham-nha-xinh50-5-768x511.jpg', '', 1, 1, 'Gỗ sồi đặc tự nhiên nhập khẩu từ Mỹ', 'Tủ ly Bridge được làm bằng chất gỗ sồi đặc, cánh tủ đóng mở nhẹ nhàng nhờ thiết kế nam châm, chân tủ dễ dàng tháo lắp khi cần di chuyển, với đường nét gia công tỉ mỉ, tủ ly Bridge sẽ là điểm nổi bật cho phòng ăn nhà bạn. Bridge – Tình yêu thiên nhiên và sức quyến rũ của gỗ. Bộ sưu tập Bridge mang hơi thở Scandinavian là sự kết hợp hoàn hảo của nhà thiết kế nổi tiếng Đan Mạch Hans Sandgren Jakobsen cùng công nghệ sản xuất thủ công của Nhật Bản. Mang thiết kế vượt thời gian, sử dụng chất liệu gỗ sồi và da bò tự nhiên, Bridge mang đến cảm giác sang trọng, gần gũi và thoải mái cho gia chủ. Điểm nổi bật của Bridge là sự tinh xảo trong hoàn thiện, từng chi tiết, những đường cong, bề mặt gỗ sồi được thực hiện và chọn lựa vô cùng kỹ càng, để tạo ra một Bridge hoàn hảo, chạm đến tâm hồn đầy cảm xúc và yêu quý những giá trị lâu bền của gia chủ Việt.', 'D1500 - R450 - C670', NULL, 'CTGY38', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY38_PRO004', 'Tủ ly Miami 209012', 14900000, 'Tu-ly-Miami-209012-768x495.jpg', '', '', 1, 1, 'Gỗ sồi tự nhiên + MDF chống ẩm', '', 'D1100-R450-C750', NULL, 'CTGY38', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY38_PRO005', 'Tủ ly Poppy PMA632011', 18600000, 'TU-LY-POPPY-PMA632011-768x511.jpg', 'TU-LY-POPPY-PMA632011-1-768x511.jpg', '', 1, 1, 'Gỗ tần bì (ash) , MDF veneer tần bì', '', 'D1600 - R450 - C750 mm', NULL, 'CTGY38', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY38_PRO006', 'Tủ Ly Rap', 16600000, 'tu-ly-rap-768x511.jpg', '1000-san-pham-nha-xinh_62-5-768x511.jpg', '1000-san-pham-nha-xinh_62-2-768x511.jpg', 1, 1, 'Chân gỗ sồi, Mặt MDF Veneer', '', 'D1620-R450-C760 mm', NULL, 'CTGY38', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY38_PRO007', 'Tủ rượu Vino', 29700000, 'tu-rouo-vino-768x511.jpg', 'tu-rouo-vino-1-1-768x511.jpg', '', 1, 1, 'Gỗ - Kim loại', 'Chiếc tủ rượu với sự kết hợp giữa kim loại và gỗ tạo nên sự mới mẻ, trẻ trung. Với thiết kế để được nhiều chai rượu, ly tách ở phía trên dàn treo, cùng nhiều ngăn kéo phía dưới sẽ giúp tối ưu hoá được công năng sử dụng.', 'D560 - R380 - C1700', NULL, 'CTGY38', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY38_PRO008', 'Tủ Ly Barbier Walnut 410043Z', 49690000, 'TU-LY-BARBIER-WALNUT-410043Z-1-768x511.jpg', 'TU-LY-BARBIER-WALNUT-410043Z-2-768x511.jpg', 'TU-LY-BARBIER-WALNUT-410043Z-3-768x511.jpg', 1, 1, 'Gỗ -mdf veneer walnut', '', 'D1000-R450-C1400 mm', NULL, 'CTGY38', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY39_PRO001', 'Tủ tivi Bridge Gỗ 1m5 – Màu nâu', 41580000, 'tu-tivi-bridge-mau-nau-1m5_-_copy.jpg', 'phong-khach-bridge6-768x511.jpg', '', 1, 1, 'Gỗ sồi đặc tự nhiên nhập khẩu từ Mỹ', 'Từng đường nét bo tròn và xử lý tinh tế tạo nên một sản phẩm hoàn hảo cho không gian phòng khách. Tủ tivi Bridge chứa ngăn kéo đóng và mở để phù hợp để đáp ứng công năng cất trữ. Sản phẩm sử dụng gỗ sồi đặc tự nhiên với 2 màu hoàn thiện sáng và trầm.', 'D1500 - R450 - C450 mm', NULL, 'CTGY39', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY39_PRO002', 'Tủ tivi Bridge Gỗ 1m5 – Màu Tự nhiên', 41580000, '1000-tu-tivi-768x511.jpg', 'tu-tivi-bridge2-768x511.jpg', '', 1, 1, 'Gỗ sồi đặc tự nhiên nhập khẩu từ Mỹ', 'Từng đường nét bo tròn và xử lý tinh tế tạo nên một sản phẩm hoàn hảo cho không gian phòng khách. Tủ tivi Bridge chứa ngăn kéo đóng và mở để phù hợp để đáp ứng công năng cất trữ. Sản phẩm sử dụng gỗ sồi đặc tự nhiên với 2 màu hoàn thiện sáng và trầm.', 'D1500 - R450 - C450 mm', NULL, 'CTGY39', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY39_PRO003', 'Tủ tivi Bridge Gỗ 1m8- Màu nâu', 54890000, '1000-san-pham-nha-xinh48-768x511.jpg', '73864-1000-nhaxinh-phongkhach-tu-tivi-bridge-768x511.jpg', 'phong-khach-bridge5-768x511.jpg', 1, 1, 'Gỗ sồi đặc tự nhiên nhập khẩu từ Mỹ', '', 'D1800 - R450 - C450 mm', NULL, 'CTGY39', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY39_PRO004', 'Tủ tivi Shadow', 17900000, 'tu-tivi-shadow-768x511.jpg', 'tu-tivi-shadow3-768x511.jpg', '', 1, 1, 'Chân, tay nắm kim loại màu đồng + MDF Veneer sồi', '', 'D1600- R450- C550', NULL, 'CTGY39', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY39_PRO005', 'Tủ Tivi Miami 210004', 16900000, 'tu-tivi-miami-01-768x511.jpg', 'tu-tivi-miami-768x511.jpg', '', 1, 1, 'Gỗ sồi tự nhiên + MDF chống ẩm', '', 'D1700-R450-C500', NULL, 'CTGY39', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY39_PRO006', 'Tủ tivi Cabo PMA712042-2', 21000000, 'TU-TIVI-CABO-PMA712042-2-768x511.jpg', 'Sofa-Cabo-3-cho-vai-MB2041-9-PMA170078-3-768x495.jpg', '', 1, 1, 'Gỗ - MDF veneer walnut, chân kim loại, cửa màu xanh Olive họa tiết Brasilia', '', 'D1800 - R400 - C565 mm', NULL, 'CTGY39', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY39_PRO007', 'Tủ tivi Tonic', 13650000, 'tu-ti-vi-tonic-768x510.jpg', 'sofa-1133-768x511.jpg', '', 1, 1, 'MFC chống ẩm', '', 'D2000 - R450 - C420', NULL, 'CTGY39', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY39_PRO008', 'Tủ tivi Glamour trắng', 16898000, '1000-tu-tv-glamour-3-768x511.jpg', 'tu-tivi-glamour-trang-3-768x511.jpg', '', 1, 1, 'Gỗ xà cừ (Mahogany), gỗ ép chống ẩm sơn trắng', 'Tủ tivi gỗ cao cấp Glamour làm bằng gỗ xà cừ được sơn một lớp sơn trắng hoặc đen chống ẩm giúp bạn an tâm trong quá trình sử dụng và bảo quản.', 'D2000 - R420 - C630', NULL, 'CTGY39', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY4_PRO01', 'Bàn Console Elite', 44090000, 'ban-console-elite-768x461.jpg', 'ban-console-elite-1-1-768x511.jpg', 'ban-console-elite-2-768x511.jpg', 1, 1, 'Khung kim loại, kính', 'Bàn Console Elite là một giải pháp trang trí nội thất hấp dẫn cho phòng làm việc, phòng khách hoặc thậm chí là hành lang. Nhưng mô hình Elite có những tham vọng khá khác biệt. Với trang phục màu trắng và vàng lung linh, nó mang đến cho mọi căn phòng sự nâng cấp sang trọng. Bàn điều khiển trang nhã màu trắng với khung và phụ kiện màu vàng hồng, ba ngăn kéo với chức năng đẩy để mở. Kiểu dáng bóng: mặt trước và mặt trên được ốp kính màu trắng, tạo cho bàn treo tường một sự thoáng mát, nhẹ nhàng. Một phần quan trọng cho vẻ ngoài quyến rũ hiện đại, bởi vì Elite sẽ biến bất kỳ căn hộ nào thành một căn hộ Hollywood. Với chất liệu: Khung: Thép không gỉ mạ điện, Thân: Gỗ dương Gỗ rắn sơn mài, Ván sợi mật độ trung bình (MDF) Sơn mài, Tay cầm: Thép không gỉ mạ điện, Tấm: Kính tráng gương', 'D1340 - R400 - C820 mm', NULL, 'CTGY4', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY4_PRO02', 'Console Table Gloria Gold 82379K', 35400000, 'CONSOLE-TABLE-GLORIA-GOLD-82379K-2-768x511.jpg', 'CONSOLE-TABLE-GLORIA-GOLD-82379K-1-1-1-768x511.jpg', 'CONSOLE-TABLE-GLORIA-GOLD-82379K-3-768x511.jpg', 1, 1, 'Thép mạ kẽm màu gold -kính cường lực trắng trong', '', 'D1400 - R450 - C820 mm', NULL, 'CTGY4', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY4_PRO03', 'Bàn Console Maxine', 28970000, 'console-maxine-768x461.jpg', '1000-san-pham-nha-xinh-10-1-768x511.jpg', 'hinh-tet-nha-tet-xinh-5-768x511.jpg', 1, 1, 'Khung gỗ Okumi+ MDF veneer recon Walnut + Chân inox mạ PVD màu gold', 'Là sản phẩm giúp tăng tiện ích công năng nhưng cũng là nơi để bạn thỏa sức trang trí với các khu vực sát tường hay những góc nhỏ. Bàn console Maxine kết hợp giữa khung bằng kim loại đồng sang trọng và khung gỗ beech hoàn thiện mdf veneer. Các ngăn kéo nhỏ giúp cất trữ đồ đạc và tạo điểm nhấn tại các tay nắm. Maxine – Nét nâu trầm sang trọng Maxine, mang thiết kế vượt thời gian, gửi gắm và gói gọn lại những nét đẹp của thiên nhiên và con người nhưng vẫn đầy tính ứng dụng cao trong suốt hành trình phiêu lưu của nhà thiết kế người Pháp Dominique Moal. Bộ sưu tập nổi bật với màu sắc nâu trầm sang trọng, là sự kết hợp giữa gỗ, da bò và kim loại vàng bóng. Đặc biệt trên mỗi sản phẩm, những nét bo viên, chi tiết kết nối được sử dụng kéo léo tạo ra điểm nhất rất riêng cho bộ sưu tập. Maxine thể hiện nét trầm tư, thư giãn để tận hưởng không gian sống trong nhịp sống hiện đại. Sản phẩm thuộc BST Maxine được sản xuất tại Việt Nam.', 'D1500 - R350 - C800 mm', NULL, 'CTGY4', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY4_PRO04', 'Bàn console Laser Gold', 22390000, 'console-3-101610-768x511.jpg', 'ban-console-gold-101610-768x511.jpg', 'ban-console-gold-101610-1-768x511.jpg', 1, 1, 'Chân kim loại màu gold - mặt kính', 'Bàn console kết hợp từ khung kim loại mạ và mặt kính với điểm nhấn là phần khung với thiết kế uốn cong đầy tính nghệ thuật. Sản phẩm phù hợp cho không gian khòng khách, lối đi hoặc phòng ngủ với phong cách sang trọng, hiện đại.', 'D1200 - R400 - C780 mm', NULL, 'CTGY4', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY4_PRO05', 'Bàn console Osaka', 21600000, 'console-osaka-3-101901-768x511.jpg', '', '', 1, 1, 'Gỗ Oak - MDF veneer Oak - Inox 304 màu gold', '', 'D1400 - R400 - C960 mm', NULL, 'CTGY4', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY4_PRO06', 'Bàn Console Addict', 20620000, '1000-87387-console-add-gautier-768x511.jpg', '', '', 1, 1, 'Gỗ Melamine', '', 'D950 - R400 - C750 mm', NULL, 'CTGY4', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY4_PRO07', 'Bàn Console Bolero', 19540000, '3_91082_1-768x512.jpg', '3_91082_2-768x512.jpg', 'phong-khach-bolero-768x511.jpg', 1, 1, 'Khung gỗ bọc giả da cá đuối (faux shagreen)', 'Bàn Console hay còn gọi là bàn trang trí, sản phẩm có thể để những đồ vật như khung ảnh gia đình, các sản phẩm trang trí Sẽ giúp cho những mảng tường trống của nhà bạn trở nên sinh động hơn.', 'D1300 - R350 - C750 mm', NULL, 'CTGY4', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY4_PRO08', 'Bàn console South Beach', 19630000, '104649-ban-console-south-beach-1-768x511.jpg', '104649-ban-console-south-beach-4-768x511.jpg', '104649-ban-console-south-beach-6-768x511.jpg', 1, 1, 'Chân kim loại, mặt kính', '', 'D1200 - R450 - C750 mm', NULL, 'CTGY4', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY4_PRO09', 'Bàn console Vert Iron 77568j', 11440000, 'ban_console_vert_iron-77568j-768x511.jpg', '', '', 1, 1, 'Gỗ - MDF Veneer', '', 'D1230 - R470 - C770 mm', NULL, 'CTGY4', NULL, NULL, NULL, '', '', '');
 

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY4_PRO10', 'Bàn Console Pop', 7900000, 'console-pop-768x511.jpg', '1000-san-pham-nha-xinh_26-4-768x511.jpg', 'ban-console-pop1-768x511.jpg', 1, 1, 'Gỗ - MDF Veneer Walnut', '', 'D970 - R350 - C770 mm', NULL, 'CTGY4', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY40_PRO001', 'Quả địa cầu Bel Jar thủy tinh lớn 20137J', 1360000, 'DO-TT-BEL-JAR-LD-FL-GL-WD-W-N-L-20137J-768x495.jpg', 'DO-TT-BEL-JAR-LD-FL-GL-WD-W-N-L-20137J-2-768x495.jpg', 'DO-TT-BEL-JAR-LD-FL-GL-WD-W-N-L-20137J-5-768x495.jpg', 1, 1, 'Thủy tinh', '', 'D150 - R150 - C160 mm', NULL, 'CTGY40', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY40_PRO002', 'Tượng Con Cá Fish Gold Large 61913K', 25400000, 'TUONG-CON-CA-FISH-GOLD-LARGE-61913K-1-1-768x511.jpg', 'TUONG-CON-CA-FISH-GOLD-LARGE-61913K-3-768x511.jpg', '', 1, 1, 'Nhựa', '', 'D634-R337-C573 mm', NULL, 'CTGY40', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY40_PRO003', 'Tượng con cá Betta base 47cm 53556k', 11300000, 'TUONG-CON-CA-BETTA-BASE-47CM-53556K-768x495.jpg', 'TUONG-CON-CA-BETTA-BASE-47CM-53556K-1-768x495.jpg', 'TUONG-CON-CA-BETTA-BASE-47CM-53556K-5-768x495.jpg', 1, 1, 'Nhựa tổng hợp', '', 'D350 - R280 - C470 mm', NULL, 'CTGY40', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY40_PRO004', 'Tượng con tuần lộc Poly lớn 16947J', 1960000, 'CON-TUAN-LOC-GOLD-WHITE-L40X16X37-16947J-768x495.jpg', 'CON-TUAN-LOC-GOLD-WHITE-L40X16X37-16947J-1-768x495.jpg', '', 1, 1, 'Nhựa tổng hợp', '', 'D400 - R160 - C370 mm', NULL, 'CTGY40', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY40_PRO005', 'Quả cầu đá cẩm thạch trắng / kim loại vàng vừa 97961J', 2390000, 'QUA-CAU-GLOBE-ON-FOOT-MARB-WHITE-97961J-768x495.jpg', 'QUA-CAU-GLOBE-ON-FOOT-MARB-WHITE-97961J-1-768x495.jpg', '', 1, 1, 'kim loại, đá', '', 'D240 - R230 - C360 mm', NULL, 'CTGY40', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY40_PRO006', 'Tượng thiên thần Nude Angel', 5290000, 'Tuong-thien-than-Nude-Angel-394441-768x511.jpg', '', '', 1, 1, 'Sắt', '', 'D180 - R110 - C260 mm', NULL, 'CTGY40', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY40_PRO007', 'Tượng gà mái Hens Reines', 540000, '104236-tuong-ga-mai-reines-1-768x511.jpg', '104236-tuong-ga-mai-reines-768x511.jpg', '', 1, 1, 'Gốm sứ', '', 'Ø130 mm', NULL, 'CTGY40', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY40_PRO008', 'Tượng báo đốm', 22000000, '104281-bao-chetah-768x511.jpg', '', '', 1, 1, 'Kim loại', '', 'D410 - R200 - C220 mm', NULL, 'CTGY40', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY41_PRO01', 'Thảm Harmony 2mx2m9 Desert 610039Z', 29700000, 'THAM-HARMONY-2mx2m9-DESERT-610039Z-1.jpg', 'THAM-HARMONY-2mx2m9-DESERT-610039Z-1.jpg', 'THAM-HARMONY-2mx2m9-DESERT-610039Z-1.jpg', 1, 1, '100% sợi dệt bằng máy -màu Beige/Yellow', '', 'D2900-R2000-C10 mm', NULL, 'CTGY41', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY41_PRO02', 'Thảm Solar 1m6x2m3 Grey Terra 610045Z', 16800000, 'THAM-SOLAR-1m6-x-2m3-GREY-TERRA-610045Z-1-768x511.jpg', 'THAM-SOLAR-1m6-x-2m3-GREY-TERRA-610045Z-1-768x511.jpg', 'THAM-SOLAR-1m6-x-2m3-GREY-TERRA-610045Z-1-768x511.jpg', 1, 1, 'Decolan -màu Grey/Brown', '', 'D2300-R1600-C10 mm', NULL, 'CTGY41', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY41_PRO03', 'Thảm Yenga Breeze 170X240 600081K', 17700000, 'THAM-YENGA-BREEZE-170X240-600081Z-1-768x511.jpg', 'THAM-YENGA-BREEZE-170X240-600081Z-1-768x511.jpg', 'THAM-YENGA-BREEZE-170X240-600081Z-1-768x511.jpg', 1, 1, 'Vải sợi', '', 'D2400-R1700-C0 mm', NULL, 'CTGY41', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY41_PRO04', 'Tấm lông cừu PD4 D', 3600000, 'TAM-LONG-CUU-SHEEP-FUR-SKIN-PD4-D-2-768x495.jpg', 'TAM-LONG-CUU-SHEEP-FUR-SKIN-PD4-D-2-768x495.jpg', 'TAM-LONG-CUU-SHEEP-FUR-SKIN-PD4-D-2-768x495.jpg', 1, 1, 'Thủy tinh, Kim loại', '', 'D500 - R500 mm', NULL, 'CTGY41', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY41_PRO05', 'Thảm da bò đen trắng BN D', 13290000, 'THAM-DA-BO-COW-SKIN-BLACK-WHIRE-BN-D-768x495.jpg', 'THAM-DA-BO-COW-SKIN-BLACK-WHIRE-BN-D-768x495.jpg', 'THAM-DA-BO-COW-SKIN-BLACK-WHIRE-BN-D-768x495.jpg', 1, 1, 'Da bò đã thuộc', '', 'D2500 - R2000 mm', NULL, 'CTGY41', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY41_PRO06', 'Thảm da bò nâu TN D 2.5×1.8M', 15290000, 'THAM-DA-BO-COW-SKIN-BROWN-TN-D-2.5x1.8M-768x495.jpg', 'THAM-DA-BO-COW-SKIN-BROWN-TN-D-2.5x1.8M-768x495.jpg', 'THAM-DA-BO-COW-SKIN-BROWN-TN-D-2.5x1.8M-768x495.jpg', 1, 1, 'Da bò đã thuộc', '', 'D2500 - R1800 mm', NULL, 'CTGY41', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY41_PRO07', 'Thảm Magic 160×230 xanh dương', 18560000, '104679-tham-magic-ocean-1-768x511.jpg', '104679-tham-magic-ocean-1-768x511.jpg', '104679-tham-magic-ocean-1-768x511.jpg', 1, 1, 'Sợi dệt nhân tạo', '', '1600 x 2300 mm', NULL, 'CTGY41', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY41_PRO08', 'Thảm Hilton 2mx2m9 Grey Yellow 610004Z', 24900000, 'THAM-HILTON-2m-x-2m9-GREY-YELLOW-610004Z-1-768x511.jpg', 'THAM-HILTON-2m-x-2m9-GREY-YELLOW-610004Z-1-768x511.jpg', 'THAM-HILTON-2m-x-2m9-GREY-YELLOW-610004Z-1-768x511.jpg', 1, 1, 'Decolan -màu Grey/Yellow', '', 'D2900-R2000-C10 mm', NULL, 'CTGY41', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY42_PRO01', 'Đĩa hình chim công', 360000, '104307-dia-hinh-con-cong-1-768x511.jpg', '104307-dia-hinh-con-cong-1-768x511.jpg', '104307-dia-hinh-con-cong-1-768x511.jpg', 1, 1, 'Gốm sứ', '', 'Ø380 - C150 mm', NULL, 'CTGY42', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY42_PRO02', 'Dĩa nhẫn tròn Aluminium vàng 36-30cm S2 18431', 2370000, 'DIA-ROUND-RINGS-ALU-GD-36-30CM-S2-18431-768x495.jpg', 'DIA-ROUND-RINGS-ALU-GD-36-30CM-S2-18431-768x495.jpg', 'DIA-ROUND-RINGS-ALU-GD-36-30CM-S2-18431-768x495.jpg', 1, 1, 'Kim loại', '', 'D300 - R300 - C40 mm', NULL, 'CTGY42', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY42_PRO03', 'Dĩa thủy tinh vừa Olho Bleu DHU002/BL', 3590000, 'DIA-DISH-OLHO-BLEU-MEDIUMGLASS-DHU002-BL-768x495.jpg', 'DIA-DISH-OLHO-BLEU-MEDIUMGLASS-DHU002-BL-768x495.jpg', 'DIA-DISH-OLHO-BLEU-MEDIUMGLASS-DHU002-BL-768x495.jpg', 1, 1, 'Thủy tinh', '', 'D410 - R300 - C60 mm', NULL, 'CTGY42', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY42_PRO04', 'Khay Deco Dish Ginkgo Rim', 940000, '395437-768x511.jpg', '395437-768x511.jpg', '395437-768x511.jpg', 1, 1, 'Sứ', '', 'D280 - R280 - C50 mm', NULL, 'CTGY42', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY42_PRO05', 'Khay deco Parrot 52914K', 1030000, 'Khay-Deco-Parrot-52914K-3105581-768x454.jpg', 'Khay-Deco-Parrot-52914K-3105581-768x454.jpg', 'Khay-Deco-Parrot-52914K-3105581-768x454.jpg', 1, 1, 'Sơn thủ công màu gold - xanh', '', 'D205 - R100 - C140 mm', NULL, 'CTGY42', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY42_PRO06', 'Ly sứ Filter Imany', 580000, '104234-ly-su-filter-imany-768x511.jpg', '104234-ly-su-filter-imany-768x511.jpg', '104234-ly-su-filter-imany-768x511.jpg', 1, 1, 'Gốm sứ', '', 'Ø130 - C100 mm', NULL, 'CTGY42', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY42_PRO07', 'Ấm trà Infuseur Imany', 1300000, '104235-am-tra-infuseur-imany-768x511.jpg', '104235-am-tra-infuseur-imany-768x511.jpg', '104235-am-tra-infuseur-imany-768x511.jpg', 1, 1, 'Gốm sứ', '', 'D147 - R120 - C130 mm', NULL, 'CTGY42', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY42_PRO08', 'Ấm trà sọc xanh trắng QV31913', 790000, 'am-tra-soc-xanh-trang-768x511.jpg', 'am-tra-soc-xanh-trang-768x511.jpg', 'am-tra-soc-xanh-trang-768x511.jpg', 1, 1, 'Gốm sứ cao cấp', '', 'D190-R155-C155 mm', NULL, 'CTGY42', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY43_PRO01', 'Tranh ABS kính trắng / đen mẫu 2 18610J', 4190000, 'TRANH-ABS-FAC-MDF-GL-WH-BL-ASS2-18610J-768x495.jpg', 'TRANH-ABS-FAC-MDF-GL-WH-BL-ASS2-18610J-768x495.jpg', 'TRANH-ABS-FAC-MDF-GL-WH-BL-ASS2-18610J-768x495.jpg', 1, 1, 'Gỗ', '', 'D600 - R40 - C900 mm', NULL, 'CTGY43', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY43_PRO02', 'Tranh biển xanh thuyền trắng 100×100 350734I', 7200000, 'TRANH-100X100-SEA-350734I-3-768x495.jpg', 'TRANH-100X100-SEA-350734I-3-768x495.jpg', 'TRANH-100X100-SEA-350734I-3-768x495.jpg', 1, 1, 'Gỗ công nghiệp', '', 'D1000 - R37 - C1000 mm', NULL, 'CTGY43', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY43_PRO03', 'Tranh bình hoa 102×102 102964I', 8190000, 'TRANH-102X102-FLOWER-102964I-4-768x495.jpg', 'TRANH-102X102-FLOWER-102964I-4-768x495.jpg', 'TRANH-102X102-FLOWER-102964I-4-768x495.jpg', 1, 1, 'Gỗ vải canvas', '', 'D1025 - C1025 mm', NULL, 'CTGY43', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY43_PRO04', 'Tranh con chó 80×120 852224I', 9200000, 'KHUNG-HINH-80X120-DOG-852224I-768x495.jpg', 'KHUNG-HINH-80X120-DOG-852224I-768x495.jpg', 'KHUNG-HINH-80X120-DOG-852224I-768x495.jpg', 1, 1, 'Gỗ vải canvas', '', 'D800 - R18 - C1200 mm', NULL, 'CTGY43', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY43_PRO05', 'Tranh con công 80×120 853364I', 9200000, 'KHUNG-HINH-80X120-PEACOCK-853364I-768x495.jpg', 'KHUNG-HINH-80X120-PEACOCK-853364I-768x495.jpg', 'KHUNG-HINH-80X120-PEACOCK-853364I-768x495.jpg', 1, 1, 'Gỗ vải canvas', '', 'D800 - R18 - C1200 mm', NULL, 'CTGY43', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY43_PRO06', 'Tranh con mèo 80×120 852324I', 9200000, 'KHUNG-HINH-80X120-CAT-852324I-768x495.jpg', 'KHUNG-HINH-80X120-CAT-852324I-768x495.jpg', 'KHUNG-HINH-80X120-CAT-852324I-768x495.jpg', 1, 1, 'Gỗ vải canvas', '', 'D800 - R18 - C1200 mm', NULL, 'CTGY43', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY43_PRO07', 'Tranh Flow 60×90 753142I', 4650000, 'KHUNG-HINH-60X90-FLOW-753142I-768x495.jpg', 'KHUNG-HINH-60X90-FLOW-753142I-768x495.jpg', 'KHUNG-HINH-60X90-FLOW-753142I-768x495.jpg', 1, 1, 'Gỗ vải canvas', '', 'D600 - R11 - C900 mm', NULL, 'CTGY43', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY43_PRO08', 'Tranh hai con vẹt 100×100 203814I', 5580000, 'KHUNG-HINH-100X100-PARROT-203814I-768x495.jpg', 'KHUNG-HINH-100X100-PARROT-203814I-768x495.jpg', 'KHUNG-HINH-100X100-PARROT-203814I-768x495.jpg', 1, 1, 'Gỗ vải canvas', '', 'D1000 - R37 - C1000 mm', NULL, 'CTGY43', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY44_PRO01', 'Xe đẩy đồ ăn màu vàng đồng W3 8MM 53028', 17500000, 'Xe-day-do-an-Ba-Finish-W3-8MM-53028-2-768x495.jpg', 'Xe-day-do-an-Ba-Finish-W3-8MM-53028-2-768x495.jpg', 'Xe-day-do-an-Ba-Finish-W3-8MM-53028-2-768x495.jpg', 1, 1, 'Kim loại Thủy tinh', 'Xe đẩy đồ ăn Ba Finish W3 8MM 53028 được làm bằng chất liệu từ kim loại kết hợp với thủy tinh màu gold thời thượng phục vụ những món ăn, đồ uống thơm ngon hấp dẫn mang đến phong cách sang trọng trang hoàng cho phòng ăn của bạn thêm hiện đại và đẳng cấp hơn.', 'D860-R450-C900 mm', NULL, 'CTGY44', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY44_PRO02', 'Xe đẩy thép/pu/mdf màu cà phê 58257', 8340000, 'Xe-day-steel-pu-mdf-Polish-coffee-58257-768x495.jpg', 'Xe-day-steel-pu-mdf-Polish-coffee-58257-768x495.jpg', 'Xe-day-steel-pu-mdf-Polish-coffee-58257-768x495.jpg', 1, 1, 'Kim loại, Da tổng hợp', '', 'D470-R365-C760 mm', NULL, 'CTGY44', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY44_PRO03', 'Xe đẩy đồ ăn Love', 2577000, 'xe-day-do-an-love-768x511.jpg', 'xe-day-do-an-love-768x511.jpg', 'xe-day-do-an-love-768x511.jpg', 1, 1, 'Kim loại sơn đen , mặt kính cường lực màu trà', '', 'D800- R510- C810 mm', NULL, 'CTGY44', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY44_PRO04', 'Xe đẩy đồ ăn Giro', 37430000, 'xe-day-do-an-768x511.jpg', 'xe-day-do-an-768x511.jpg', 'xe-day-do-an-768x511.jpg', 1, 1, 'Kim loại sơn đen- Mặt gỗ sơn , khay tròn da tổng hợp màu Cognac', '', 'D940- R480- C820 mm', NULL, 'CTGY44', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY44_PRO05', 'Xe đẩy đồ ăn Tray West Coast', 13650000, 'ban-tray-west-coast-4-768x511.jpg', 'ban-tray-west-coast-4-768x511.jpg', 'ban-tray-west-coast-4-768x511.jpg', 1, 1, 'Khung kim loại mặt kính', '', 'D600- R370- C680 mm', NULL, 'CTGY44', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY44_PRO06', 'Xe đẩy đồ Wheel Metal', 18170000, 'xe-day-do-wheel-metal-768x511.jpg', 'xe-day-do-wheel-metal-768x511.jpg', 'xe-day-do-wheel-metal-768x511.jpg', 1, 1, 'Kim loại sơn đen - hồng tím', '', 'D920 -R520-C780 mm', NULL, 'CTGY44', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY44_PRO07', 'Xe đẩy đồ ăn W/Wheels', 16600000, 'xe_day_do_an-768x511.jpg', 'xe_day_do_an-768x511.jpg', 'xe_day_do_an-768x511.jpg', 1, 1, 'Kim loại màu gold - Kính trắng', '', 'D620-R410-C810 mm', NULL, 'CTGY44', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY44_PRO08', 'Xe đẩy đồ ăn Trolly', 7700000, 'xe_day_do_an_trolly-768x511.jpg', 'xe_day_do_an_trolly-768x511.jpg', 'xe_day_do_an_trolly-768x511.jpg', 1, 1, 'Kim loại mạ chrome - Kính trắng trong', '', 'D620-R410-C810 mm', NULL, 'CTGY44', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY5_PRO01', 'Bàn đầu giường Skagen bên trái', 4420000, 'ban-dau-giuong-skagen-768x511.png', '1000-san-pham-nha-xinh74-1.jpg', '1000-san-pham-nha-xinh74-3.jpg', 1, 1, 'Gỗ + MDF Veneer Walnut', '', 'D400 - R320 - C507 mm', NULL, 'CTGY5', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY5_PRO02', 'Bàn đầu giường Skagen bên phải', 4420000, 'ban-dau-giuong-skagen-768x511.png', '1000-san-pham-nha-xinh74-1.jpg', '1000-san-pham-nha-xinh74-3.jpg', 1, 1, 'Gỗ + MDF Veneer Walnut', '', 'D400 - R320 - C507 mm', NULL, 'CTGY5', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY5_PRO03', 'Bàn đầu giường Shadow
', 9900000, 'ban-dau-giuong-shadow-768x511.jpg', 'phong-ngu-shadow-768x511.jpg', '', 1, 1, 'Chân, tay nắm kim loại màu đồng + MDF Veneer sồi', '', 'D610 - R400 - C520', NULL, 'CTGY5', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY5_PRO04', 'Bàn đầu giường Cabo PMA532058 F1', 8900000, 'BAN-DAU-GIUONG-CABO-PMA532058-F1-768x511.jpg', 'BAN-DAU-GIUONG-CABO-PMA532058-F1-1-768x511.jpg', '', 1, 1, 'MDF màu walnut, chân kim loại sơn đen, mặt ngoài hộc kéo màu xanh Olive', 'Bàn đầu giường Cabo được thiết kế hình hộp chữ nhật với chất liệu được làm từ MDF màu walnut, chân bàn bằng kim loại sơn đen. Bàn đầu giường gồm 1 hộc kéo và 1 ngăn đựng. Hộc kéo có màu xanh olive cùng với với hoa văn độc đáo. Bàn đầu giường là sản phẩm lý tưởng trong thiết kế không gian phòng ngủ vì có thiết kế sang trọng, hiện đại.', 'D500 - R400 - C550 mm', NULL, 'CTGY5', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY5_PRO05', 'Bàn đầu giường Pop', 7760000, '1000-san-pham-nha-xinh_22-768x511.jpg', '1000-san-pham-nha-xinh_22-1-1-768x511.jpg', '1000-san-pham-nha-xinh_22-3-768x511.jpg', 1, 1, 'Gỗ Beech - MDF Veneer Walnut', '', 'D430 - R410 - C580 mm', NULL, 'CTGY5', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY5_PRO06', 'Bàn đầu giường Osaka', 7200000, 'ban-dau-giuong-osaka-3-101893-2-768x511.jpg', 'ban-dau-giuong-osaka-3-101893-768x511.jpg', 'ban-dau-giuong-osaka-3-101893.jpg', 1, 1, 'Gỗ Oak - MDF veneer Oak - Inox 304 màu gold', '', 'D550 - R480 - C510 mm', NULL, 'CTGY5', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY5_PRO07', 'Bàn đầu giường Miami', 7200000, 'line_bed-beside-table.jpg', 'phong-ngu-miami-768x511.jpg', '', 1, 1, 'Gỗ sồi tự nhiên + MDF chống ẩm', '', 'D600 - R420 - C500 mm', NULL, 'CTGY5', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY5_PRO08', 'Bàn đầu giường Victoria', 7170000, 'ban-dau-giuong-victoria-1-768x511.png', '1000-san-pham-nha-xinh87-4-768x511.jpg', '', 1, 1, 'Gỗ sồi (oak) - MDF sơn trắng', 'Với các đường nét chạm khắc, phần uốn cong lạ mắt theo phong cách cổ điển châu Âu, bàn đầu giường Victoria là phần không thể thiếu khi kết hợp với giường ngủ Victoria. Bàn được làm bằng gỗ Xà Cừ xử lý tinh tế, phần tay nắm họa tiết sẽ là điểm nhấn cho phòng ngủ nhà bạn', 'D550 - R450 - C670 mm', NULL, 'CTGY5', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY5_PRO09', 'Bàn đầu giường Melody', 6780000, 'ban-dau-giuong-melody-1000-768x511.jpg', 'ban-dau-giuong-melody-1-500.jpg', '', 1, 1, 'Gỗ - MDF', '', 'D450 - R350- C700 mm', NULL, 'CTGY5', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY5_PRO10', 'Bàn đầu giường Harmony', 3150000, 'ban-dau-giuong-harmony-1_3_66049_1-768x461.jpg', 'ban_dau_giuong_kevin_b_l.jpg', '960-pc-bac-au-phong-ngu-harmony-768x480.jpg', 1, 1, 'Gỗ sồi+ tràm, MDF sơn trắng', 'Tủ đầu giường Harmony là sự phối hợp tinh tế giữa màu trắng nhẹ nhàng và màu tự nhiên của gỗ làm cho chiếc tủ thêm phần tinh tế. Tủ được làm bằng gỗ tràm, ván lạng sồi hoàn thiện vecni màu tự nhiên và sơn trắng mịn. Tủ đầu giường có thể kết hợp với giường ngủ Harmony sẽ mang lại cảm giác mới mẻ cho nội thất phòng ngủ.', 'D500 - R460 - C600 mm', NULL, 'CTGY5', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY6_PRO01', 'Bàn làm việc Maxine', 51940000, '86828_1000-768x511.jpg', '1000-san-pham-nha-xinh_11-1-768x511.jpg', '1000-san-pham-nha-xinh_11-3-768x511.jpg', 1, 1, 'Khung gỗ Okumi, MDF veneer recon Walnut, chân inox mạ PVD màu gold, mặt bàn bọc da', 'Một thiết kế bàn làm việc đẳng cấp cho không gian làm việc của bạn, Maxine sử dụng chất liệu da trên bề mặt, khung gỗ hoàn thiện mdf veneer nâu trầm sang trọng tạo cảm giác thư thái, nhẹ nhàng. Công năng của chiếc bàn được sắp tối ưu với các hộc kéo rộng. Maxine – Nét nâu trầm sang trọng Maxine, mang thiết kế vượt thời gian, gửi gắm và gói gọn lại những nét đẹp của thiên nhiên và con người nhưng vẫn đầy tính ứng dụng cao trong suốt hành trình phiêu lưu của nhà thiết kế người Pháp Dominique Moal. Bộ sưu tập nổi bật với màu sắc nâu trầm sang trọng, là sự kết hợp giữa gỗ, da bò và kim loại vàng bóng. Đặc biệt trên mỗi sản phẩm, những nét bo viên, chi tiết kết nối được sử dụng kéo léo tạo ra điểm nhất rất riêng cho bộ sưu tập. Maxine thể hiện nét trầm tư, thư giãn để tận hưởng không gian sống trong nhịp sống hiện đại. Sản phẩm thuộc BST Maxine được sản xuất tại Việt Nam.', 'D1800 - R1180 - C750 mm', NULL, 'CTGY6', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY6_PRO02', 'Bàn làm việc Osaka KA', 4890000, '104692-ban-lam-viec-osaka-1-768x511.jpg', '104692-ban-lam-viec-osaka-4-768x511.jpg', '104692-ban-lam-viec-osaka-5-768x511.jpg', 1, 1, 'Chân kim loại, mặt gỗ công nghiệp sơn', '', 'D1380 - R600 - C810 mm', NULL, 'CTGY6', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY6_PRO03', 'Bàn làm việc Osaka', 22900000, 'Ban-lam-viec-Osaka-3101891-1-768x511.jpg', 'Ban-lam-viec-Osaka-3101891-768x511.jpg', '', 1, 1, 'Gỗ Oak - MDF veneer Oak - Inox 304 màu gold', '', 'D1380 - R600 - C760 mm', NULL, 'CTGY6', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY6_PRO04', 'Bàn làm việc Osaka', 22900000, 'Ban-lam-viec-Osaka-3101891-1-768x511.jpg', 'Ban-lam-viec-Osaka-3101891-768x511.jpg', '', 1, 1, 'Gỗ Oak - MDF veneer Oak - Inox 304 màu gold', '', 'D1380 - R600 - C760 mm', NULL, 'CTGY6', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY6_PRO05', 'Bàn làm việc Kate', 13260000, '56504-500-nha-xinh-phong-lam-viec-ban-lam-viec.jpg', '56504-500-nha-xinh-phong-lam-viec-ban-lam-viec.jpg', '56504-500-nha-xinh-phong-lam-viec-ban-lam-viec', 1, 1, 'Gỗ sồi sơn trắng lấy ghim', 'Bàn làm việc Kate mang phong cách bán cổ điển với màu trắng nhẹ nhàng như tô điểm cho không gian thêm sáng. Bàn Kate được làm bằng gỗ sồi sơn lấy ghim giúp người sử dụng vẫn cảm nhận được từng thớ gỗ', 'D1500 - R500 - C750 mm', NULL, 'CTGY6', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY6_PRO06', 'Bàn làm việc Layers', 44182000, 'ban_lv_layer-768x511.jpg', 'ban_lv_layer-768x511.jpg', 'ban_lv_layer-768x511.jpg', 1, 1, 'Chân kim loại - MDF Veneer', 'Bàn làm việc Layer là một sản phẩm từ thương hiệu Ý Calligaris, với thiết kế đúng như tên gọi, Layer cho nhiều lớp mặt bàn giúp mở rộng không gian làm việc. Với thiết kế sang trọng và hiện đại, chiếc bàn này sẽ làm không gian làm việc cảu bạn trở nên năng động và tuyệt với hơn.', 'D1620-R720-C880mm', NULL, 'CTGY6', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY6_PRO07', 'Bàn làm việc Biblio', 56900000, 'ban-lam-viec-biblio_2-768x511.jpg', 'ban-lam-viec-biblio_2-768x511.jpg', 'ban-lam-viec-biblio_2-768x511.jpg', 1, 1, 'Chân kim loại, MDF, Da', 'Bàn làm việc Biblio với thiết kế đặc biết thừ da và phần chân kim loại phù hợp với người ưa thích sự riêng tư. Nhờ phần da bao bọc xung quanh, bạn sẽ không sợ làm rơi mất thứ gì trên bàn.', 'D1040- R530- C1020 mm', NULL, 'CTGY6', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY6_PRO08', 'Bàn làm việc Bụi', 7760000, 'ban_lam_viec_bui3-4-768x511.jpg', 'ban_lam_viec_bui3-4-768x511.jpg', 'ban_lam_viec_bui3-4-768x511.jpg', 1, 1, 'Gỗ Thông + MDF Veneer Thông + Kim loại sơn tinh điện', 'Chiếc bàn với thiết kế tuyệt vời và công năng từ gỗ thông sáng màu và chân kim loại chắc chắn. Mặt bàn có các cạnh cao giúp giứ đồ không bị rơi, chính giữa là phần khớp rời có thể dễ dàng nâng cao hoặc hạ xuống hỗ trợ cho việc vẽ, để máy tính và đọc sách. Chiếc bàn năng động rà rất phù hợp cho các bạn muốn muốn tìm một không gian hoàn hảo dể sáng tác', 'D1200- R580- C720 mm', NULL, 'CTGY6', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY7_PRO01', 'Bàn nước Pio', 7500000, 'line-pio_dining-table_023.jpg', 'line-pio_dining-table_023.jpg', 'line-pio_dining-table_023.jpg', 1, 1, 'Gỗ Beech + Mặt Melamine marble', 'Bàn nước PIO thu hút ánh nhìn với mặt bàn bằng chất liệu hiện đại melamine marble. Thiết kế với kiểu dáng oval giúp, bàn nước Pio tạo điểm nhấn khác biệt cho không gian phòng khách của bạn. Việc bổ sung ngăn bên dưới là khu chứa đồ cũng như trưng bày các vật dụng trang trí. PIO – Vẻ đẹp yên bình giữa lối sống đô thị Pha trộn giữa phong cách scandinavian và sự mới lạ trong chọn lựa màu sắc, bộ sưu tập PIO toát lên vẻ đẹp nhẹ nhàng, thanh lịch và cũng rất gần gũi với thiên nhiên. PIO thể hiện lối sống của những người trẻ, biết chiêm nghiệm và thưởng ngoạn sự trở về bình yên giữa nhịp sống hiện đại. Thiết kế bởi những đường cong, điểm xuyến các chi tiết nhấn nhá bên cạnh sử dụng các vật liệu như gỗ beech, melamine marble.. giúp PIO trở nên cá tính và thu hút trong không gian hiện đại. Sản phẩm được thiết kế bởi đội ngũ Nhà Xinh và sản xuất tại Việt Nam.', 'D1100-R700-C400 mm', NULL, 'CTGY7', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY7_PRO02', 'Bàn nước bar 200×75 75167K
', 69500000, 'BAN-NUOC-BAR-120X75-75167K-768x495.jpg', 'BAN-NUOC-BAR-120X75-75167K-768x495.jpg', 'BAN-NUOC-BAR-120X75-75167K-768x495.jpg', 1, 1, 'gỗ công nghiệp', '', 'D2000 - R750 - C370 mm', NULL, 'CTGY7', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY7_PRO03', 'Bàn nước Mây – 2 Modul', 10710000, 'bo_ban_nuoc_may_mat_kinh_khung_go_100671-768x511.jpg', 'bo_ban_nuoc_may_mat_kinh_khung_go_100671-768x511.jpg', 'bo_ban_nuoc_may_mat_kinh_khung_go_100671-768x511.jpg', 1, 1, 'Gỗ Acacia (Tràm)- Mặt trên Laminate, mây tự nhiên, kính trắng - Chân bọc inox mạ gold', 'Một chiếc bàn nước kết hợp nhịp nhàng bởi 2 khối hình khác nhau về độ cao. Bàn nước Mây giúp cho không gian phòng khách trở nên cá tính hơn. Sản phẩm sử dụng chất liệu đã marble cho phần mặt bàn, được bao quanh bởi kết cấu khung gỗ và nhấn nhá với phần chân kim loại đồng hiện đại. Mây – Hồn Việt trong hơi thở hiện đại Bộ sưu tập Mây gợi lại những hồi ức thanh bình và gần gũi của hồn quê Việt cho lối sống chậm để thưởng ngoạn giữa nhịp sống hiện đại. Như tên gọi của nó, bộ sưu tập lấy cảm hứng với chất liệu mây làm điểm nhấn kết hợp với các chất liệu hiện đại như da, gỗ tần bì, đá marble và đồng thau. Sự khéo léo trong việc sử dụng chất liệu và những đường nét thiết kế đã giúp cho các sản phẩm của Mây trở nên hiện đại, đầy tính thẩm mỹ và cũng giàu công năng. Bộ sưu tập Mây được thiết kế bởi đội ngũ Nhà Xinh và sản xuất tại Việt Nam.', 'D800-R500-C420 / D1000-R400-C350 mm', NULL, 'CTGY7', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY7_PRO04', 'Bàn nước Chamcha mặt kính', 17190000, '86669-ban-nuoc-cham-cham-mat-kinh-768x511.jpg', '86669-ban-nuoc-cham-cham-mat-kinh-768x511.jpg', '86669-ban-nuoc-cham-cham-mat-kinh-768x511.jpg', 1, 1, 'Gỗ tràm, Heydua veneer , Mặt kính', 'Khung bàn được làm từ gỗ tràm cho độ chịu lực tốt, mặt bàn với hoa văn đan thủ công và kính cường lực chắc chắn. Các góc bàn bo tròn thân thiện, sản phẩm phù hợp với không gian truyền thống lẫn hiện đại nhờ kiểu dáng và màu sắc trung tính', 'D1300-R650-C400 mm', NULL, 'CTGY7', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY7_PRO05', 'Bàn nước Rumba', 4420000, 'ban-nuoc-rumba-768x461.jpg', 'ban-nuoc-rumba-768x461.jpg', 'ban-nuoc-rumba-768x461.jpg', 1, 1, 'Gỗ tần bì (Ash)- MDF sơn trắng', 'Bàn nước Rumba với sự kết hợp của chân gỗ tần bì chuốt thon cao và bề mặt sơn trắng được xử lý khéo léo tinh tế sẽ là tâm điểm nhấn nổi bật cho phòng khách, phù hợp với các kiểu sofa hiện đại, bàn nước sẽ hoàn hảo hơn khi kết hợp với bộ sưu tập Roma.', 'D1000 - R600 - C400 mm', NULL, 'CTGY7', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY7_PRO06', 'Bàn nước Shadow', 9900000, 'ban-nuoc-shadow.jpg', 'ban-nuoc-shadow.jpg', 'ban-nuoc-shadow.jpg', 1, 1, 'Chân kim loại màu đồng + MDF Veneer sồi', '', 'D1200- R650- C400 mm', NULL, 'CTGY7', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY7_PRO07', 'Bàn nước Bridge mặt Marble', 3750000, 'ban-nuoc-bridge-82524-768x511.jpg', 'ban-nuoc-bridge-82524-768x511.jpg', 'ban-nuoc-bridge-82524-768x511.jpg', 1, 1, 'Chân kính cường lực , mặt bàn Ceramic dán trên kính', 'Với thiết kế tối giản, những đường nét hình học, bàn nước Bridge có hai bên chân được dùng kính giảm nhiệt và mặt đá ceramic được nhấn nhá với thiết kế hình chữ nhật. Bridge là sự lựa chọn hoàn hảo cho phòng khách.', 'D1200 - R700 - C350 mm', NULL, 'CTGY7', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY7_PRO08', 'Bàn nước Filo', 1226800, '92845-1000-768x511.jpg', '92845-1000-768x511.jpg', '92845-1000-768x511.jpg', 1, 1, 'Chân kim loại sơn trắng - Mặt MDF', '', 'D820-R430-C440 mm', NULL, 'CTGY7', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY8_PRO01', 'Bàn HCN Bistro 0239 Taupe', 8640000, 'ban-ngoai-troi-3-101964-768x511.jpg', 'ban-ngoai-troi-3-101964-768x511.jpg', 'ban-ngoai-troi-3-101964-768x511.jpg', 1, 1, 'Thép sơn tĩnh điện công nghệ cao', '', 'Ø800-C760 mm', NULL, 'CTGY8', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY8_PRO02', 'Bàn Ngoài Trời Albert Garden 210094K', 21700000, 'BAN-NGOAI-TROI-ALBERT-GARDEN-210094Z-1-1-768x511.jpg', 'BAN-NGOAI-TROI-ALBERT-GARDEN-210094Z-1-1-768x511.jpg', 'BAN-NGOAI-TROI-ALBERT-GARDEN-210094Z-1-1-768x511.jpg', 1, 1, 'Chân -khung Aluminium mặt bàn kính trắng trong', 'Chiếc bàn nhỏ thẩm mỹ của bộ sưu tập 1900 mang tính biểu tượng, thiết kế gọn nhẹ của nó giúp việc di chuyển dễ dàng hơn trong sân vườn và ban công nhà bạn. Chiếc bàn có thể lắp bánh xe ở phiên bản khác để hỗ trợ việc di chuyển nhanh hơn nữa. Trọng lượng: 4.4 kg Khung: Thanh thép | Mặt bàn: Thép tấm đục lỗ 24 màu tùy chọn', 'Ø400 - C610', NULL, 'CTGY8', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY8_PRO03', 'Bàn bên 2 tầng Fermob Guinguette – Willow green', 5400000, '103791-ban-ngoi-troi-2-tang-guingette-fermob-willowgreen-768x511.jpg', '103791-ban-ngoi-troi-2-tang-guingette-fermob-willowgreen-768x511.jpg', '103791-ban-ngoi-troi-2-tang-guingette-fermob-willowgreen-768x511.jpg', 1, 1, 'Kim loại sơn tĩnh điện', '', 'Ø400 - C610', NULL, 'CTGY8', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY8_PRO04', 'Bàn tròn Lorette D110 Red Ochre 576120', 28900000, 'BAN-TRON-LORETTE-D110-RED-OCHRE-576120-768x511.jpg', 'BAN-TRON-LORETTE-D110-RED-OCHRE-576120-768x511.jpg', 'BAN-TRON-LORETTE-D110-RED-OCHRE-576120-768x511.jpg', 1, 1, 'Thép sơn tĩnh điện công nghệ cao', 'Bàn tròn Lorette D110 Red Ochre 576120 được cấu tạo từ thép sơn tĩnh điện công nghệ cao kết hợp với những chiếc ghế mang sắc đỏ sành điệu điểm nhấn cho không gian ngoài trời của bạn thêm sống động.', 'Ø1100 - C740 mm', NULL, 'CTGY8', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY8_PRO05', 'Bàn ngoài trời Fermob Bistro – Storm Grey', 5800000, 'Ban-ngoai-troi-Fermob-Bistro-Storm-Grey-1-768x495.jpg', 'Ban-ngoai-troi-Fermob-Bistro-Storm-Grey-1-768x495.jpg', 'Ban-ngoai-troi-Fermob-Bistro-Storm-Grey-1-768x495.jpg', 1, 1, 'Thép sơn tĩnh điện công nghệ cao', 'Bàn tròn Bistro được nhập khẩu từ Pháp. Bàn Bistro có kiểu dáng thanh mảnh nhưng chắc chắn về cấu trúc. Sản phẩm chuyên dùng ngoài trời với nhiều màu sắc nổi bật, được làm bằng chất liệu thép sơn lacquer cao cấp. Bề mặt bàn là tấm thép được xử lý khéo léo, có độ bền màu cao cho vẻ đẹp hoàn hảo.', 'Ø600 - C740 mm', NULL, 'CTGY8', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY8_PRO06', 'Bàn ngoài trời Fermob Sixties', 14090000, 'Ban-ngoai-troi-Fermob-Sixties-768x495.jpg', 'Ban-ngoai-troi-Fermob-Sixties-768x495.jpg', 'Ban-ngoai-troi-Fermob-Sixties-768x495.jpg', 1, 1, 'Thép sơn tĩnh điện công nghệ cao', 'Bộ sưu tập Sixties nhỏ gọn và cong thể hiện hoàn hảo ý tưởng của Fermob: kiên quyết trẻ trung và thoải mái.Chiếc bàn thấp này bổ sung cho chiếc ghế bành Sixties một cách hoàn hảo, và cũng nhẹ và gọn. Khung nhôm dưới mặt bàn làm giảm nguy cơ ăn mòn Cân nặng: 7 kg Khung: Ống thép -mặt bàn thép tấm 24 màu tùy chọn', 'D755 - R555 - C410 mm', NULL, 'CTGY8', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY8_PRO07', 'Bàn bên Stulle P98W', 15600000, 'BAN-BEN-STULLE-P98W-768x511.jpg', 'BAN-BEN-STULLE-P98W-768x511.jpg', 'BAN-BEN-STULLE-P98W-768x511.jpg', 1, 1, 'Chân kim loại sơn, Mặt Melamine', '', 'Ø400 - C400 mm', NULL, 'CTGY8', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY8_PRO08', 'Bàn nước SIXTIES CACTUS 172182', 14090000, 'Ban-nuoc-SIXTIES-CACTUS-172182-2-768x495.jpg', 'Ban-nuoc-SIXTIES-CACTUS-172182-2-768x495.jpg', 'Ban-nuoc-SIXTIES-CACTUS-172182-2-768x495.jpg', 1, 1, 'Thép sơn tĩnh điện công nghệ cao', 'Bàn nước SIXTIES CACTUS 172182 được cấu tạo từ thép sơn tĩnh điện công nghệ cao, có 2 màu sắc xanh lá và hồng tươi tắn hợp thời trang. Bàn nước SIXTIES CACTUS 172182 mang kiểu dáng hình chữ nhật, nhỏ gọn, nhẹ, thích hợp để bày trí trong nhà và ngoài trời.  ', 'D760 - R555 - C410 mm', NULL, 'CTGY8', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY8_PRO09', 'Bàn ngoài trời YO!', 30339000, '103430-ban-nuoc-yo-p9l-p99w-4-768x511.jpg', '103430-ban-nuoc-yo-p9l-p99w-4-768x511.jpg', '103430-ban-nuoc-yo-p9l-p99w-4-768x511.jpg', 1, 1, 'Chân Aluminium sơn màu Lemon yellow mặt bàn HPL Laminate màu cement graphite -Thương hiệu Calligaris Italy', 'Bàn YO! có chân đế bằng nhôm đã được xử lý và sơn phủ kết hợp mặt laminate để sử dụng ngoài trời. Chúng rất dễ làm sạch và không cần bảo trì trong thời gian dài. Bề mặt laminate đã được thiết kế đặc biệt để ngăn ngừa nấm mốc và nấm mốc phát triển. Yo! cũng có một linh hồn xanh - nó có sẵn một lớp đá Sinh thái được làm từ vật liệu composite tái chế, có thể được tái chế lại khi hết tuổi thọ.', 'Ø900 - C750 mm', NULL, 'CTGY8', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY8_PRO10', 'Bàn ngoài trời Fermob Opera Poppy
', 7760000, 'Ban-ngoai-troi-Fermob-Opera-Poppy-768x495.jpg', 'Ban-ngoai-troi-Fermob-Opera-Poppy-768x495.jpg', 'Ban-ngoai-troi-Fermob-Opera-Poppy-768x495.jpg', 1, 1, 'Thép sơn tĩnh điện công nghệ cao', 'Bàn Opera là sản phẩm thuộc thương hiệu nổi tiếng về hàng ngoài trời Fermob. Sản phẩm có 24 màu sắc nổi bật để lựa chọn với kiểu dáng thanh tao. Bàn Opera được sơn tĩnh điện cao cấp, bề mặt sơn phù hợp để sử dụng ngoài trời với cấu trúc khung bàn chắn chắn.', 'Ø670 - C740 mm', NULL, 'CTGY8', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY9_PRO01', 'Bàn phấn Madame màu Ebony P87W', 64500000, 'Ban-phan-Madame-mau-Ebony-P87W-768x511.jpg', 'Ban-phan-Madame-mau-Ebony-P87W-768x511.jpg', 'Ban-phan-Madame-mau-Ebony-P87W-768x511.jpg', 1, 1, 'Chân kim loại sơn , mdf veneer Ebony , kính thủy', 'Bàn phấn Madame màu Ebony P87W là sự lựa chọn cho các gia chủ yêu thích phong cách đơn điệu, hiện đại. Bàn được làm bằng chất liệu kim loại sơn, mdf veneer Ebony, kính thủy có kiểu dáng dễ dàng kết hợp được với nhiều không gian phòng ngủ khác nhau đây là một sự lựa chọn tuyệt vời với nhiều gia đình.', 'D1300-R605-785 mm', NULL, 'CTGY9', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY9_PRO02', 'Bàn phấn Madame Termocotto P67W', 64500000, 'Ban-phan-Madame-Termocotto-P67W-768x511.jpg', 'Ban-phan-Madame-Termocotto-P67W-768x511.jpg', 'Ban-phan-Madame-Termocotto-P67W-768x511.jpg', 1, 1, 'Chân kim loại sơn , mdf veneer Termocotto, kính thủy', 'Bàn phấn Madame Termocotto P67W là sự lựa chọn cho các gia chủ yêu thích phong cách đơn điệu, hiện đại. Bàn được làm bằng chất liệu kim loại sơn, mdf veneer Ebony, kính thủy có kiểu dáng dễ dàng kết hợp được với nhiều không gian phòng ngủ khác nhau đây là một sự lựa chọn tuyệt vời với nhiều gia đình.', 'D1300-R605-785 mm', NULL, 'CTGY9', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY9_PRO03', 'Bàn trang điểm Mây – Mẫu 2', 24450000, '100582_1000-768x511.jpg', '100582_1000-768x511.jpg', '100582_1000-768x511.jpg', 1, 1, 'Gỗ Acacia (Tràm)- Mây tự nhiên- Chân bọc inox mạ gold', 'Bàn trang điểm Mây mang thiết kế thanh lịch, duyên dáng và có chút nữ tính. Thiết kế bố trí các phần hộc kéo giúp cất trữ đầy đủ các vật dụng trang điểm tối ưu. Những nét bo tròn của gương và khung gỗ giúp tạo nét mềm mại. Đặc biệt, phần cánh thêm vừa tạo điểm nhấn vừa có thể che lại gương khi không sử dụng. Mây – Hồn Việt trong hơi thở hiện đại Bộ sưu tập Mây gợi lại những hồi ức thanh bình và gần gũi của hồn quê Việt. Đã được đội ngũ thiết kế của Nhà Xinh dày công tâm đắc. Như tên gọi của nó, bộ sưu tập lấy cảm hứng với chất liệu mây làm điểm nhấn kết hợp với các chất liệu hiện đại như da, gỗ tần bì, đá marble và đồng thau. Sự khéo léo trong việc sử dụng chất liệu và những đường nét thiết kế đã giúp cho các sản phẩm của Mây trở nên hiện đại, đầy tính thẩm mỹ và cũng giàu công năng.Tất cả sản phẩm Mây được sản xuất tại Việt Nam.', 'D1200- R400- C750/1330 mm', NULL, 'CTGY9', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY9_PRO04', 'Bàn trang điểm Skagen', 12670000, 'ban-trang-diem-dep-tinh-te-co-hoc-3-768x511.jpg', 'ban-trang-diem-dep-tinh-te-co-hoc-3-768x511.jpg', 'ban-trang-diem-dep-tinh-te-co-hoc-3-768x511.jpg', 1, 1, 'Chân gỗ mahogany, mặt mdf sơn màu trắng +noughat, gương kính thủy 5mm -bàn phấn có thể gấp khung gương xuống thành bàn làm việc', '', 'D1200 - R500 - C750/1200 mm', NULL, 'CTGY9', NULL, NULL, NULL, '', '', '');
 

INSERT `Roles` (`Id`, `Name`) VALUES ('ADMIN', 'Quản trị');

INSERT `Roles` (`Id`, `Name`) VALUES ('USER', 'Người dùng');
 
/* SET IDENTITY_INSERT [dbo].[Substance_Products] ON */ 


INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (1, 'Stcdlt1', 'CTGY1_PRO01');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (2, 'Stcdlt2', 'CTGY1_PRO01');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (3, 'Stcdlt1', 'CTGY1_PRO02');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (4, 'Stcdlt2', 'CTGY1_PRO02');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (5, 'Stcdlt1', 'CTGY1_PRO03');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (6, 'Stcdlt3', 'CTGY1_PRO03');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (7, 'Stcdlt1', 'CTGY1_PRO04');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (8, 'Stcdlt2', 'CTGY1_PRO04');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (9, 'Stcdlt1', 'CTGY1_PRO05');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (10, 'Stcdlt2', 'CTGY1_PRO05');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (11, 'Stcdlt1', 'CTGY1_PRO06');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (12, 'Stcdlt3', 'CTGY1_PRO06');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (13, 'Stcdlt2', 'CTGY1_PRO07');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (14, 'Stcdlt4', 'CTGY1_PRO07');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (15, 'Stcdlt2', 'CTGY1_PRO08');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (16, 'Stcdlt4', 'CTGY1_PRO08');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (17, 'Stcdlt3', 'CTGY1_PRO09');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (18, 'Stcdlt4', 'CTGY1_PRO09');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (19, 'Stcdlt1', 'CTGY1_PRO10');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (20, 'Stcdlt3', 'CTGY1_PRO10');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (21, 'Stcdlt4', 'CTGY1_PRO10');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (22, 'Stcdlt1', 'CTGY2_PRO01');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (23, 'Stcdlt4', 'CTGY2_PRO01');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (24, 'Stcdlt1', 'CTGY2_PRO02');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (25, 'Stcdlt4', 'CTGY2_PRO02');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (26, 'Stcdlt1', 'CTGY2_PRO03');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (27, 'Stcdlt1', 'CTGY2_PRO04');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (28, 'Stcdlt1', 'CTGY2_PRO05');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (29, 'Stcdlt2', 'CTGY2_PRO05');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (30, 'Stcdlt1', 'CTGY2_PRO06');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (31, 'Stcdlt2', 'CTGY2_PRO06');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (32, 'Stcdlt1', 'CTGY2_PRO07');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (33, 'Stcdlt2', 'CTGY2_PRO07');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (34, 'Stcdlt1', 'CTGY2_PRO08');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (35, 'Stcdlt1', 'CTGY2_PRO09');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (36, 'Stcdlt1', 'CTGY2_PRO10');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (37, 'Stcdlt9', 'CTGY3_PRO01');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (38, 'Stcdlt9', 'CTGY3_PRO02');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (39, 'Stcdlt4', 'CTGY3_PRO03');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (40, 'Stcdlt5', 'CTGY3_PRO04');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (41, 'Stcdlt10', 'CTGY3_PRO04');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (42, 'Stcdlt1', 'CTGY3_PRO05');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (43, 'Stcdlt4', 'CTGY3_PRO06');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (44, 'Stcdlt1', 'CTGY3_PRO07');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (45, 'Stcdlt4', 'CTGY3_PRO07');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (46, 'Stcdlt1', 'CTGY3_PRO08');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (47, 'Stcdlt4', 'CTGY3_PRO08');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (48, 'Stcdlt1', 'CTGY3_PRO09');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (49, 'Stcdlt4', 'CTGY3_PRO09');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (50, 'Stcdlt1', 'CTGY3_PRO10');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (51, 'Stcdlt4', 'CTGY3_PRO10');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (52, 'Stcdlt4', 'CTGY4_PRO01');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (53, 'Stcdlt9', 'CTGY4_PRO01');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (54, 'Stcdlt4', 'CTGY4_PRO02');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (55, 'Stcdlt9', 'CTGY4_PRO02');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (56, 'Stcdlt1', 'CTGY4_PRO03');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (57, 'Stcdlt4', 'CTGY4_PRO03');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (58, 'Stcdlt4', 'CTGY4_PRO04');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (59, 'Stcdlt9', 'CTGY4_PRO04');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (60, 'Stcdlt1', 'CTGY4_PRO05');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (61, 'Stcdlt4', 'CTGY4_PRO05');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (62, 'Stcdlt1', 'CTGY4_PRO06');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (63, 'Stcdlt1', 'CTGY4_PRO07');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (64, 'Stcdlt3', 'CTGY4_PRO07');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (65, 'Stcdlt4', 'CTGY4_PRO08');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (66, 'Stcdlt9', 'CTGY4_PRO08');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (67, 'Stcdlt1', 'CTGY4_PRO09');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (68, 'Stcdlt1', 'CTGY4_PRO10');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (69, 'Stcdlt1', 'CTGY5_PRO01');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (70, 'Stcdlt1', 'CTGY5_PRO02');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (71, 'Stcdlt1', 'CTGY5_PRO03');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (72, 'Stcdlt4', 'CTGY5_PRO03');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (73, 'Stcdlt1', 'CTGY5_PRO04');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (74, 'Stcdlt4', 'CTGY5_PRO04');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (75, 'Stcdlt1', 'CTGY5_PRO05');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (76, 'Stcdlt1', 'CTGY5_PRO06');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (77, 'Stcdlt4', 'CTGY5_PRO06');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (78, 'Stcdlt1', 'CTGY5_PRO06');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (79, 'Stcdlt4', 'CTGY5_PRO07');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (80, 'Stcdlt1', 'CTGY5_PRO08');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (81, 'Stcdlt1', 'CTGY5_PRO09');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (82, 'Stcdlt1', 'CTGY5_PRO10');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (83, 'Stcdlt1', 'CTGY6_PRO04');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (84, 'Stcdlt4', 'CTGY6_PRO04');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (85, 'Stcdlt1', 'CTGY6_PRO01');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (86, 'Stcdlt3', 'CTGY6_PRO01');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (87, 'Stcdlt4', 'CTGY6_PRO01');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (88, 'Stcdlt4', 'CTGY6_PRO02');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (89, 'Stcdlt1', 'CTGY6_PRO02');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (90, 'Stcdlt15', 'CTGY6_PRO03');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (91, 'Stcdlt1', 'CTGY6_PRO03');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (92, 'Stcdlt1', 'CTGY6_PRO04');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (93, 'Stcdlt15', 'CTGY6_PRO04');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (94, 'Stcdlt1', 'CTGY6_PRO05');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (95, 'Stcdlt4', 'CTGY6_PRO06');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (96, 'Stcdlt15', 'CTGY6_PRO06');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (97, 'Stcdlt4', 'CTGY6_PRO07');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (98, 'Stcdlt15', 'CTGY6_PRO07');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (99, 'Stcdlt3', 'CTGY6_PRO07');
 

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (100, 'Stcdlt1', 'CTGY6_PRO08');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (101, 'Stcdlt4', 'CTGY6_PRO08');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (102, 'Stcdlt15', 'CTGY6_PRO08');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (103, 'Stcdlt1', 'CTGY7_PRO01');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (104, 'Stcdlt1', 'CTGY7_PRO02');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (105, 'Stcdlt1', 'CTGY7_PRO03');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (106, 'Stcdlt9', 'CTGY7_PRO03');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (107, 'Stcdlt14', 'CTGY7_PRO03');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (108, 'Stcdlt1', 'CTGY7_PRO04');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (109, 'Stcdlt9', 'CTGY7_PRO04');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (110, 'Stcdlt11', 'CTGY7_PRO04');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (111, 'Stcdlt7', 'CTGY7_PRO05');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (112, 'Stcdlt15', 'CTGY7_PRO05');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (113, 'Stcdlt4', 'CTGY7_PRO06');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (114, 'Stcdlt15', 'CTGY7_PRO06');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (115, 'Stcdlt7', 'CTGY7_PRO07');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (116, 'Stcdlt9', 'CTGY7_PRO07');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (117, 'Stcdlt9', 'CTGY7_PRO08');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (118, 'Stcdlt15', 'CTGY7_PRO08');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (119, 'Stcdlt4', 'CTGY8_PRO01');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (120, 'Stcdlt9', 'CTGY8_PRO02');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (121, 'Stcdlt4', 'CTGY8_PRO03');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (122, 'Stcdlt4', 'CTGY8_PRO04');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (123, 'Stcdlt4', 'CTGY8_PRO05');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (124, 'Stcdlt4', 'CTGY8_PRO06');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (125, 'Stcdlt4', 'CTGY8_PRO07');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (126, 'Stcdlt4', 'CTGY8_PRO08');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (127, 'Stcdlt7', 'CTGY8_PRO09');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (128, 'Stcdlt4', 'CTGY8_PRO10');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (129, 'Stcdlt4', 'CTGY9_PRO01');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (130, 'Stcdlt15', 'CTGY9_PRO01');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (131, 'Stcdlt9', 'CTGY9_PRO01');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (132, 'Stcdlt4', 'CTGY9_PRO02');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (133, 'Stcdlt15', 'CTGY9_PRO02');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (134, 'Stcdlt9', 'CTGY9_PRO02');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (135, 'Stcdlt7', 'CTGY9_PRO03');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (136, 'Stcdlt14', 'CTGY9_PRO03');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (137, 'Stcdlt1', 'CTGY9_PRO03');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (138, 'Stcdlt9', 'CTGY9_PRO04');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (139, 'Stcdlt15', 'CTGY9_PRO04');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (140, 'Stcdlt1', 'CTGY9_PRO04');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (141, 'Stcdlt9', 'CTGY10_PRO001');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (142, 'Stcdlt8', 'CTGY10_PRO002');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (143, 'Stcdlt8', 'CTGY10_PRO003');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (144, 'Stcdlt8', 'CTGY10_PRO004');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (145, 'Stcdlt8', 'CTGY10_PRO005');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (146, 'Stcdlt1', 'CTGY10_PRO006');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (147, 'Stcdlt6', 'CTGY10_PRO006');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (148, 'Stcdlt8', 'CTGY10_PRO007');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (149, 'Stcdlt8', 'CTGY10_PRO008');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (150, 'Stcdlt10', 'CTGY10_PRO009');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (151, 'Stcdlt9', 'CTGY10_PRO010');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (152, 'Stcdlt8', 'CTGY11_PRO001');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (153, 'Stcdlt8', 'CTGY11_PRO002');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (154, 'Stcdlt6', 'CTGY11_PRO003');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (155, 'Stcdlt8', 'CTGY11_PRO004');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (156, 'Stcdlt8', 'CTGY11_PRO005');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (157, 'Stcdlt4', 'CTGY11_PRO006');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (158, 'Stcdlt8', 'CTGY11_PRO007');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (159, 'Stcdlt8', 'CTGY11_PRO008');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (160, 'Stcdlt8', 'CTGY11_PRO009');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (161, 'Stcdlt8', 'CTGY11_PRO010');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (162, 'Stcdlt9', 'CTGY12_PRO001');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (163, 'Stcdlt6', 'CTGY12_PRO001');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (164, 'Stcdlt9', 'CTGY12_PRO002');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (165, 'Stcdlt4', 'CTGY12_PRO002');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (166, 'Stcdlt8', 'CTGY12_PRO003');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (167, 'Stcdlt2', 'CTGY12_PRO003');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (168, 'Stcdlt2', 'CTGY12_PRO004');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (169, 'Stcdlt11', 'CTGY12_PRO004');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (170, 'Stcdlt4', 'CTGY12_PRO005');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (171, 'Stcdlt18', 'CTGY12_PRO006');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (172, 'Stcdlt6', 'CTGY12_PRO007');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (173, 'Stcdlt4', 'CTGY12_PRO008');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (174, 'Stcdlt4', 'CTGY12_PRO009');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (175, 'Stcdlt4', 'CTGY12_PRO010');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (176, 'Stcdlt4', 'CTGY13_PRO001');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (177, 'Stcdlt4', 'CTGY13_PRO002');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (178, 'Stcdlt9', 'CTGY13_PRO002');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (179, 'Stcdlt4', 'CTGY13_PRO003');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (180, 'Stcdlt9', 'CTGY13_PRO004');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (181, 'Stcdlt4', 'CTGY13_PRO004');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (182, 'Stcdlt4', 'CTGY13_PRO005');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (183, 'Stcdlt4', 'CTGY13_PRO006');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (184, 'Stcdlt4', 'CTGY13_PRO007');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (185, 'Stcdlt4', 'CTGY13_PRO008');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (186, 'Stcdlt4', 'CTGY14_PRO001');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (187, 'Stcdlt4', 'CTGY14_PRO002');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (188, 'Stcdlt4', 'CTGY14_PRO003');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (189, 'Stcdlt3', 'CTGY14_PRO004');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (190, 'Stcdlt1', 'CTGY14_PRO005');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (191, 'Stcdlt4', 'CTGY14_PRO006');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (192, 'Stcdlt1', 'CTGY14_PRO007');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (193, 'Stcdlt1', 'CTGY14_PRO008');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (194, 'Stcdlt1', 'CTGY15_PRO001');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (195, 'Stcdlt4', 'CTGY15_PRO002');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (196, 'Stcdlt4', 'CTGY15_PRO003');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (197, 'Stcdlt4', 'CTGY15_PRO004');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (198, 'Stcdlt4', 'CTGY15_PRO005');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (199, 'Stcdlt4', 'CTGY15_PRO006');
 

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (200, 'Stcdlt4', 'CTGY15_PRO007');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (201, 'Stcdlt4', 'CTGY15_PRO008');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (202, 'Stcdlt3', 'CTGY16_PRO01');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (203, 'Stcdlt4', 'CTGY16_PRO01');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (204, 'Stcdlt1', 'CTGY16_PRO02');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (205, 'Stcdlt3', 'CTGY16_PRO02');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (206, 'Stcdlt1', 'CTGY16_PRO03');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (207, 'Stcdlt2', 'CTGY16_PRO03');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (208, 'Stcdlt4', 'CTGY16_PRO03');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (209, 'Stcdlt1', 'CTGY16_PRO04');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (210, 'Stcdlt3', 'CTGY16_PRO04');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (211, 'Stcdlt1', 'CTGY16_PRO05');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (212, 'Stcdlt3', 'CTGY16_PRO05');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (213, 'Stcdlt1', 'CTGY16_PRO06');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (214, 'Stcdlt4', 'CTGY16_PRO06');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (215, 'Stcdlt1', 'CTGY16_PRO07');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (216, 'Stcdlt3', 'CTGY16_PRO07');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (217, 'Stcdlt1', 'CTGY16_PRO08');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (218, 'Stcdlt1', 'CTGY16_PRO09');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (219, 'Stcdlt4', 'CTGY16_PRO09');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (220, 'Stcdlt2', 'CTGY16_PRO10');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (221, 'Stcdlt4', 'CTGY16_PRO10');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (222, 'Stcdlt1', 'CTGY17_PRO01');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (223, 'Stcdlt3', 'CTGY17_PRO02');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (224, 'Stcdlt4', 'CTGY17_PRO02');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (225, 'Stcdlt1', 'CTGY17_PRO03');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (226, 'Stcdlt3', 'CTGY17_PRO03');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (227, 'Stcdlt4', 'CTGY17_PRO03');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (230, 'Stcdlt1', 'CTGY17_PRO04');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (231, 'Stcdlt1', 'CTGY17_PRO05');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (232, 'Stcdlt3', 'CTGY17_PRO05');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (233, 'Stcdlt4', 'CTGY17_PRO05');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (236, 'Stcdlt4', 'CTGY17_PRO06');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (237, 'Stcdlt2', 'CTGY17_PRO07');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (238, 'Stcdlt3', 'CTGY17_PRO07');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (239, 'Stcdlt4', 'CTGY17_PRO07');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (240, 'Stcdlt1', 'CTGY17_PRO08');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (241, 'Stcdlt3', 'CTGY17_PRO08');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (242, 'Stcdlt4', 'CTGY17_PRO08');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (243, 'Stcdlt3', 'CTGY18_PRO01');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (244, 'Stcdlt4', 'CTGY18_PRO01');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (245, 'Stcdlt1', 'CTGY18_PRO01');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (246, 'Stcdlt4', 'CTGY18_PRO02');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (247, 'Stcdlt1', 'CTGY18_PRO02');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (248, 'Stcdlt4', 'CTGY18_PRO03');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (249, 'Stcdlt1', 'CTGY18_PRO03');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (250, 'Stcdlt17', 'CTGY18_PRO03');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (251, 'Stcdlt2', 'CTGY18_PRO04');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (252, 'Stcdlt4', 'CTGY18_PRO04');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (253, 'Stcdlt4', 'CTGY18_PRO05');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (254, 'Stcdlt17', 'CTGY18_PRO05');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (255, 'Stcdlt2', 'CTGY18_PRO06');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (256, 'Stcdlt4', 'CTGY18_PRO06');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (257, 'Stcdlt4', 'CTGY18_PRO07');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (258, 'Stcdlt17', 'CTGY18_PRO07');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (259, 'Stcdlt4', 'CTGY18_PRO08');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (260, 'Stcdlt4', 'CTGY18_PRO08');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (261, 'Stcdlt17', 'CTGY18_PRO08');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (262, 'Stcdlt1', 'CTGY19_PRO01');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (263, 'Stcdlt3', 'CTGY19_PRO01');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (264, 'Stcdlt19', 'CTGY19_PRO01');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (265, 'Stcdlt1', 'CTGY19_PRO02');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (266, 'Stcdlt3', 'CTGY19_PRO02');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (267, 'Stcdlt19', 'CTGY19_PRO02');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (268, 'Stcdlt1', 'CTGY19_PRO03');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (269, 'Stcdlt3', 'CTGY19_PRO03');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (270, 'Stcdlt19', 'CTGY19_PRO03');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (271, 'Stcdlt1', 'CTGY19_PRO04');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (272, 'Stcdlt3', 'CTGY19_PRO04');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (273, 'Stcdlt19', 'CTGY19_PRO04');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (274, 'Stcdlt1', 'CTGY19_PRO05');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (275, 'Stcdlt3', 'CTGY19_PRO05');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (276, 'Stcdlt19', 'CTGY19_PRO05');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (277, 'Stcdlt1', 'CTGY19_PRO06');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (278, 'Stcdlt3', 'CTGY19_PRO06');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (279, 'Stcdlt19', 'CTGY19_PRO06');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (280, 'Stcdlt1', 'CTGY19_PRO07');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (281, 'Stcdlt3', 'CTGY19_PRO07');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (282, 'Stcdlt19', 'CTGY19_PRO07');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (283, 'Stcdlt1', 'CTGY19_PRO08');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (284, 'Stcdlt3', 'CTGY19_PRO08');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (285, 'Stcdlt19', 'CTGY19_PRO08');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (286, 'Stcdlt2', 'CTGY20_PRO001');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (287, 'Stcdlt2', 'CTGY20_PRO002');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (288, 'Stcdlt2', 'CTGY20_PRO003');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (289, 'Stcdlt2', 'CTGY20_PRO004');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (290, 'Stcdlt2', 'CTGY20_PRO005');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (291, 'Stcdlt2', 'CTGY20_PRO006');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (292, 'Stcdlt2', 'CTGY20_PRO007');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (293, 'Stcdlt2', 'CTGY20_PRO008');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (294, 'Stcdlt9', 'CTGY21_PRO001');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (295, 'Stcdlt4', 'CTGY21_PRO001');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (296, 'Stcdlt9', 'CTGY21_PRO002');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (297, 'Stcdlt4', 'CTGY21_PRO002');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (298, 'Stcdlt1', 'CTGY21_PRO003');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (299, 'Stcdlt2', 'CTGY21_PRO004');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (300, 'Stcdlt4', 'CTGY21_PRO004');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (301, 'Stcdlt9', 'CTGY21_PRO005');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (302, 'Stcdlt4', 'CTGY21_PRO005');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (303, 'Stcdlt4', 'CTGY21_PRO006');
 

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (304, 'Stcdlt4', 'CTGY21_PRO007');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (305, 'Stcdlt4', 'CTGY21_PRO008');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (306, 'Stcdlt1', 'CTGY22_PRO001');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (307, 'Stcdlt1', 'CTGY22_PRO002');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (308, 'Stcdlt1', 'CTGY22_PRO003');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (309, 'Stcdlt4', 'CTGY22_PRO004');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (310, 'Stcdlt4', 'CTGY22_PRO005');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (311, 'Stcdlt1', 'CTGY22_PRO006');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (312, 'Stcdlt4', 'CTGY22_PRO006');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (313, 'Stcdlt1', 'CTGY22_PRO007');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (314, 'Stcdlt1', 'CTGY22_PRO008');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (410, 'Stcdlt16', 'CTGY30_PRO01');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (411, 'Stcdlt4', 'CTGY30_PRO02');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (412, 'Stcdlt16', 'CTGY30_PRO03');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (413, 'Stcdlt16', 'CTGY30_PRO04');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (414, 'Stcdlt4', 'CTGY30_PRO05');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (415, 'Stcdlt4', 'CTGY30_PRO06');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (416, 'Stcdlt8', 'CTGY30_PRO07');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (417, 'Stcdlt6', 'CTGY30_PRO08');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (418, 'Stcdlt6', 'CTGY30_PRO09');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (419, 'Stcdlt4', 'CTGY30_PRO10');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (420, 'Stcdlt9', 'CTGY30_PRO10');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (421, 'Stcdlt16', 'CTGY30_PRO10');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (422, 'Stcdlt1', 'CTGY31_PRO01');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (423, 'Stcdlt2', 'CTGY31_PRO01');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (424, 'Stcdlt14', 'CTGY31_PRO01');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (425, 'Stcdlt19', 'CTGY31_PRO01');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (426, 'Stcdlt3', 'CTGY31_PRO02');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (427, 'Stcdlt4', 'CTGY31_PRO02');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (428, 'Stcdlt19', 'CTGY31_PRO02');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (429, 'Stcdlt1', 'CTGY31_PRO03');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (430, 'Stcdlt3', 'CTGY31_PRO03');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (431, 'Stcdlt1', 'CTGY31_PRO04');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (432, 'Stcdlt3', 'CTGY31_PRO04');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (433, 'Stcdlt1', 'CTGY31_PRO05');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (434, 'Stcdlt3', 'CTGY31_PRO05');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (435, 'Stcdlt1', 'CTGY31_PRO06');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (436, 'Stcdlt3', 'CTGY31_PRO06');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (437, 'Stcdlt4', 'CTGY31_PRO06');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (438, 'Stcdlt19', 'CTGY31_PRO06');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (439, 'Stcdlt1', 'CTGY31_PRO06');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (440, 'Stcdlt1', 'CTGY31_PRO07');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (441, 'Stcdlt3', 'CTGY31_PRO07');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (442, 'Stcdlt3', 'CTGY31_PRO08');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (443, 'Stcdlt4', 'CTGY31_PRO08');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (444, 'Stcdlt19', 'CTGY31_PRO08');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (445, 'Stcdlt3', 'CTGY31_PRO09');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (446, 'Stcdlt4', 'CTGY31_PRO09');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (447, 'Stcdlt19', 'CTGY31_PRO09');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (448, 'Stcdlt1', 'CTGY31_PRO10');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (449, 'Stcdlt3', 'CTGY31_PRO10');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (450, 'Stcdlt4', 'CTGY31_PRO10');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (451, 'Stcdlt19', 'CTGY31_PRO10');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (452, 'Stcdlt1', 'CTGY32_PRO01');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (453, 'Stcdlt2', 'CTGY32_PRO01');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (454, 'Stcdlt1', 'CTGY32_PRO02');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (455, 'Stcdlt2', 'CTGY32_PRO02');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (456, 'Stcdlt1', 'CTGY32_PRO03');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (457, 'Stcdlt2', 'CTGY32_PRO03');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (458, 'Stcdlt2', 'CTGY32_PRO04');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (459, 'Stcdlt4', 'CTGY32_PRO04');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (460, 'Stcdlt1', 'CTGY32_PRO05');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (461, 'Stcdlt2', 'CTGY32_PRO05');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (462, 'Stcdlt1', 'CTGY32_PRO06');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (463, 'Stcdlt2', 'CTGY32_PRO06');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (464, 'Stcdlt1', 'CTGY32_PRO07');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (465, 'Stcdlt2', 'CTGY32_PRO07');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (466, 'Stcdlt1', 'CTGY32_PRO08');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (467, 'Stcdlt2', 'CTGY32_PRO08');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (468, 'Stcdlt19', 'CTGY32_PRO08');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (469, 'Stcdlt1', 'CTGY32_PRO09');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (470, 'Stcdlt2', 'CTGY32_PRO09');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (471, 'Stcdlt1', 'CTGY32_PRO10');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (472, 'Stcdlt3', 'CTGY32_PRO10');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (473, 'Stcdlt19', 'CTGY32_PRO10');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (474, 'Stcdlt1', 'CTGY33_PRO01');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (475, 'Stcdlt1', 'CTGY33_PRO02');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (476, 'Stcdlt1', 'CTGY33_PRO03');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (477, 'Stcdlt1', 'CTGY33_PRO04');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (478, 'Stcdlt1', 'CTGY33_PRO05');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (479, 'Stcdlt4', 'CTGY33_PRO05');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (480, 'Stcdlt1', 'CTGY34_PRO01');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (481, 'Stcdlt1', 'CTGY34_PRO02');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (482, 'Stcdlt1', 'CTGY34_PRO03');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (483, 'Stcdlt1', 'CTGY34_PRO04');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (484, 'Stcdlt1', 'CTGY35_PRO01');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (485, 'Stcdlt7', 'CTGY35_PRO01');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (486, 'Stcdlt1', 'CTGY35_PRO02');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (487, 'Stcdlt7', 'CTGY35_PRO02');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (488, 'Stcdlt1', 'CTGY35_PRO03');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (489, 'Stcdlt7', 'CTGY35_PRO03');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (490, 'Stcdlt1', 'CTGY35_PRO04');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (491, 'Stcdlt7', 'CTGY35_PRO04');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (492, 'Stcdlt1', 'CTGY35_PRO05');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (528, 'Stcdlt1', 'CTGY38_PRO001');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (529, 'Stcdlt1', 'CTGY38_PRO001');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (530, 'Stcdlt4', 'CTGY38_PRO002');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (531, 'Stcdlt1', 'CTGY38_PRO003');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (532, 'Stcdlt1', 'CTGY38_PRO004');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (533, 'Stcdlt1', 'CTGY38_PRO005');
 

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (534, 'Stcdlt1', 'CTGY38_PRO006');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (535, 'Stcdlt4', 'CTGY38_PRO007');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (536, 'Stcdlt1', 'CTGY38_PRO007');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (537, 'Stcdlt1', 'CTGY38_PRO008');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (538, 'Stcdlt1', 'CTGY39_PRO001');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (539, 'Stcdlt1', 'CTGY39_PRO002');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (540, 'Stcdlt1', 'CTGY39_PRO003');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (541, 'Stcdlt1', 'CTGY39_PRO004');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (542, 'Stcdlt1', 'CTGY39_PRO005');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (543, 'Stcdlt4', 'CTGY39_PRO005');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (544, 'Stcdlt4', 'CTGY39_PRO006');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (545, 'Stcdlt1', 'CTGY39_PRO006');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (546, 'Stcdlt1', 'CTGY39_PRO007');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (547, 'Stcdlt1', 'CTGY39_PRO008');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (548, 'Stcdlt9', 'CTGY40_PRO001');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (549, 'Stcdlt6', 'CTGY40_PRO002');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (550, 'Stcdlt6', 'CTGY40_PRO003');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (551, 'Stcdlt6', 'CTGY40_PRO004');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (552, 'Stcdlt4', 'CTGY40_PRO005');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (553, 'Stcdlt5', 'CTGY40_PRO005');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (554, 'Stcdlt4', 'CTGY40_PRO006');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (555, 'Stcdlt8', 'CTGY40_PRO007');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (556, 'Stcdlt4', 'CTGY40_PRO008');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (557, 'Stcdlt2', 'CTGY41_PRO01');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (558, 'Stcdlt20', 'CTGY41_PRO02');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (559, 'Stcdlt2', 'CTGY41_PRO03');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (560, 'Stcdlt9', 'CTGY41_PRO04');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (561, 'Stcdlt4', 'CTGY41_PRO04');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (562, 'Stcdlt3', 'CTGY41_PRO05');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (563, 'Stcdlt3', 'CTGY41_PRO06');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (564, 'Stcdlt2', 'CTGY41_PRO07');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (565, 'Stcdlt20', 'CTGY41_PRO08');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (566, 'Stcdlt8', 'CTGY42_PRO01');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (567, 'Stcdlt4', 'CTGY42_PRO02');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (568, 'Stcdlt9', 'CTGY42_PRO03');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (569, 'Stcdlt8', 'CTGY42_PRO04');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (570, 'Stcdlt2', 'CTGY42_PRO05');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (571, 'Stcdlt8', 'CTGY42_PRO06');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (572, 'Stcdlt8', 'CTGY42_PRO07');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (573, 'Stcdlt8', 'CTGY42_PRO08');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (574, 'Stcdlt1', 'CTGY43_PRO01');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (575, 'Stcdlt1', 'CTGY43_PRO02');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (576, 'Stcdlt2', 'CTGY43_PRO02');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (577, 'Stcdlt1', 'CTGY43_PRO03');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (578, 'Stcdlt2', 'CTGY43_PRO03');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (579, 'Stcdlt1', 'CTGY43_PRO04');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (580, 'Stcdlt2', 'CTGY43_PRO04');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (581, 'Stcdlt2', 'CTGY43_PRO05');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (582, 'Stcdlt1', 'CTGY43_PRO05');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (583, 'Stcdlt2', 'CTGY43_PRO06');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (584, 'Stcdlt1', 'CTGY43_PRO06');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (585, 'Stcdlt1', 'CTGY43_PRO07');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (586, 'Stcdlt2', 'CTGY43_PRO07');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (587, 'Stcdlt1', 'CTGY43_PRO08');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (588, 'Stcdlt2', 'CTGY43_PRO08');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (589, 'Stcdlt4', 'CTGY44_PRO01');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (590, 'Stcdlt9', 'CTGY44_PRO01');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (591, 'Stcdlt4', 'CTGY44_PRO02');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (592, 'Stcdlt3', 'CTGY44_PRO02');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (593, 'Stcdlt4', 'CTGY44_PRO03');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (594, 'Stcdlt9', 'CTGY44_PRO03');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (595, 'Stcdlt4', 'CTGY44_PRO04');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (596, 'Stcdlt1', 'CTGY44_PRO04');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (597, 'Stcdlt4', 'CTGY44_PRO05');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (598, 'Stcdlt9', 'CTGY44_PRO05');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (599, 'Stcdlt4', 'CTGY44_PRO06');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (600, 'Stcdlt2', 'CTGY44_PRO06');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (601, 'Stcdlt4', 'CTGY44_PRO07');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (602, 'Stcdlt9', 'CTGY44_PRO07');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (603, 'Stcdlt4', 'CTGY44_PRO08');

INSERT `Substance_Products` (`Id`, `SubstanceDetailId`, `ProductId`) VALUES (604, 'Stcdlt9', 'CTGY44_PRO08');
/* SET IDENTITY_INSERT [dbo].[Substance_Products] OFF */
 

INSERT `SubstanceDetail` (`Id`, `Name`) VALUES ('Stcdlt1', 'Gỗ');

INSERT `SubstanceDetail` (`Id`, `Name`) VALUES ('Stcdlt10', 'Xi măng');

INSERT `SubstanceDetail` (`Id`, `Name`) VALUES ('Stcdlt11', 'Thạch cao');

INSERT `SubstanceDetail` (`Id`, `Name`) VALUES ('Stcdlt12', 'Lò xo túi');

INSERT `SubstanceDetail` (`Id`, `Name`) VALUES ('Stcdlt13', 'Lông vũ CN');

INSERT `SubstanceDetail` (`Id`, `Name`) VALUES ('Stcdlt14', 'Inox');

INSERT `SubstanceDetail` (`Id`, `Name`) VALUES ('Stcdlt15', 'MDF');

INSERT `SubstanceDetail` (`Id`, `Name`) VALUES ('Stcdlt16', 'Sáp');

INSERT `SubstanceDetail` (`Id`, `Name`) VALUES ('Stcdlt17', 'Đệm');

INSERT `SubstanceDetail` (`Id`, `Name`) VALUES ('Stcdlt18', 'Thép');

INSERT `SubstanceDetail` (`Id`, `Name`) VALUES ('Stcdlt19', 'Cao su');

INSERT `SubstanceDetail` (`Id`, `Name`) VALUES ('Stcdlt2', 'Vải');

INSERT `SubstanceDetail` (`Id`, `Name`) VALUES ('Stcdlt20', 'Decolan');

INSERT `SubstanceDetail` (`Id`, `Name`) VALUES ('Stcdlt21', 'Kính');

INSERT `SubstanceDetail` (`Id`, `Name`) VALUES ('Stcdlt3', 'Da');

INSERT `SubstanceDetail` (`Id`, `Name`) VALUES ('Stcdlt4', 'Kim loại');

INSERT `SubstanceDetail` (`Id`, `Name`) VALUES ('Stcdlt5', 'Đá');

INSERT `SubstanceDetail` (`Id`, `Name`) VALUES ('Stcdlt6', 'Nhựa');

INSERT `SubstanceDetail` (`Id`, `Name`) VALUES ('Stcdlt7', 'Vật liệu tổ hợp');

INSERT `SubstanceDetail` (`Id`, `Name`) VALUES ('Stcdlt8', 'Gốm sứ');

INSERT `SubstanceDetail` (`Id`, `Name`) VALUES ('Stcdlt9', 'Thủy tinh');
 
ALTER TABLE `Authorities`  ADD FOREIGN KEY(`AccountId`)
REFERENCES `Accounts` (`Username`)
ON UPDATE CASCADE
ON DELETE CASCADE;
 
ALTER TABLE `Authorities`  ADD FOREIGN KEY(`RoleId`)
REFERENCES `Roles` (`Id`);
 
ALTER TABLE `Comments`  ADD FOREIGN KEY(`AccountId`)
REFERENCES `Accounts` (`Username`);
 
ALTER TABLE `Comments`  ADD FOREIGN KEY(`ProductId`)
REFERENCES `Products` (`Id`);
 
ALTER TABLE `OrderDetails`  ADD FOREIGN KEY(`OrderId`)
REFERENCES `Orders` (`Id`);
 
ALTER TABLE `OrderDetails`  ADD FOREIGN KEY(`ProductId`)
REFERENCES `Products` (`Id`);
 
ALTER TABLE `Orders`  ADD FOREIGN KEY(`StatusId`)
REFERENCES `StatusOrders` (`Id`);
 
ALTER TABLE `Products`  ADD FOREIGN KEY(`CategoryId`)
REFERENCES `Categories` (`Id`);
 
ALTER TABLE `Products`  ADD FOREIGN KEY(`PromotionId`)
REFERENCES `Promotions` (`Id`)
ON UPDATE CASCADE
ON DELETE CASCADE;
 
ALTER TABLE `Substance_Products`  ADD FOREIGN KEY(`ProductId`)
REFERENCES `Products` (`Id`)
ON UPDATE CASCADE
ON DELETE CASCADE;
 
ALTER TABLE `Substance_Products`  ADD FOREIGN KEY(`SubstanceDetailId`)
REFERENCES `SubstanceDetail` (`Id`);
 
