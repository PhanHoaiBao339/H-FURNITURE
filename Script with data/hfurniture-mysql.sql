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

INSERT `Accounts` (`Username`, `Email`, `Password`, `Fullname`, `Gender`, `Birthday`, `Phone`, `Address`, `Photo`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonDelete`, `PersonUpdate`) VALUES ('administrator', 'tanphat9859@gmail.com', 'admin@123', 'T??i kho???n admin', 1, NULL, '', '', '', 1, NULL, NULL, NULL, '', '');

INSERT `Accounts` (`Username`, `Email`, `Password`, `Fullname`, `Gender`, `Birthday`, `Phone`, `Address`, `Photo`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonDelete`, `PersonUpdate`) VALUES ('congthanh15305', 'thanhlcps15305@fpt.edu.vn', '369299584', 'L?? C??ng Th??nh', 1, NULL, '369299584', '', '', 1, NULL, NULL, NULL, '', '');

INSERT `Accounts` (`Username`, `Email`, `Password`, `Fullname`, `Gender`, `Birthday`, `Phone`, `Address`, `Photo`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonDelete`, `PersonUpdate`) VALUES ('dangkhoa15449', 'khoaldps15449@fpt.edu.vn', '898524485', 'L?? ????ng Khoa', 1, NULL, '898524485', '', '', 1, NULL, NULL, NULL, '', '');

INSERT `Accounts` (`Username`, `Email`, `Password`, `Fullname`, `Gender`, `Birthday`, `Phone`, `Address`, `Photo`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonDelete`, `PersonUpdate`) VALUES ('daouyen16716', 'uyendtps16716@fpt.edu.vn', '357628935', '????o Th??? Uy??n', 0, NULL, '357628935', '', '', 1, NULL, NULL, NULL, '', '');

INSERT `Accounts` (`Username`, `Email`, `Password`, `Fullname`, `Gender`, `Birthday`, `Phone`, `Address`, `Photo`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonDelete`, `PersonUpdate`) VALUES ('ducphat15413', 'phatndps15413@fpt.edu.vn', '339792319', 'Nguy???n ?????c Ph??t', 1, NULL, '339792319', '', '', 1, NULL, NULL, NULL, '', '');

INSERT `Accounts` (`Username`, `Email`, `Password`, `Fullname`, `Gender`, `Birthday`, `Phone`, `Address`, `Photo`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonDelete`, `PersonUpdate`) VALUES ('hoaibao15317', 'baophps15317@fpt.edu.vn', '793818670', 'Phan Ho??i B???o', 1, NULL, '793818670', '463 D????ng Th??? M?????i, Ph?????ng T??n Ch??nh Hi???p, Q12, H??? Ch?? Minh', '', 1, NULL, NULL, NULL, '', '');

INSERT `Accounts` (`Username`, `Email`, `Password`, `Fullname`, `Gender`, `Birthday`, `Phone`, `Address`, `Photo`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonDelete`, `PersonUpdate`) VALUES ('tanphat15403', 'phathtps15403@fpt.edu.vn', '347803555', 'Hu???nh T???n Ph??t', 1, CAST('1998-06-06' AS Date), '347803555', '', '', 1, NULL, NULL, NULL, '', '');

INSERT `Accounts` (`Username`, `Email`, `Password`, `Fullname`, `Gender`, `Birthday`, `Phone`, `Address`, `Photo`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonDelete`, `PersonUpdate`) VALUES ('thanhngan15765', 'nganntps15765@fpt.edu.vn', '941439361', 'Nguy???n Thanh Ng??n', 0, NULL, '941439361', '', '', 1, NULL, NULL, NULL, '', '');

INSERT `Accounts` (`Username`, `Email`, `Password`, `Fullname`, `Gender`, `Birthday`, `Phone`, `Address`, `Photo`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonDelete`, `PersonUpdate`) VALUES ('thanhtung15314', 'tungltps15314@fpt.edu.vn', '941996062', 'L?? Thanh T??ng', 1, NULL, '941996062', '', '', 1, NULL, NULL, NULL, '', '');

INSERT `Accounts` (`Username`, `Email`, `Password`, `Fullname`, `Gender`, `Birthday`, `Phone`, `Address`, `Photo`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonDelete`, `PersonUpdate`) VALUES ('thanhtuyen15840', 'tuyennttps15840@fpt.edu.vn', '397030931', 'Nguy???n Th??? Thanh Tuy???n', 0, NULL, '397030931', '', '', 1, NULL, NULL, NULL, '', '');

INSERT `Accounts` (`Username`, `Email`, `Password`, `Fullname`, `Gender`, `Birthday`, `Phone`, `Address`, `Photo`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonDelete`, `PersonUpdate`) VALUES ('vanhai15407', 'haigvps15407@fpt.edu.vn', '866417438', 'Gi??p V??n H???i', 1, NULL, '866417438', '', '', 1, NULL, NULL, NULL, '', '');

INSERT `Accounts` (`Username`, `Email`, `Password`, `Fullname`, `Gender`, `Birthday`, `Phone`, `Address`, `Photo`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonDelete`, `PersonUpdate`) VALUES ('xuanmai12019', 'maintxps12019@fpt.edu.vn', '829990649', 'Nguy???n Th??? Xu??n Mai', 0, NULL, '829990649', '', '', 1, NULL, NULL, NULL, '', '');
 
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

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY10', 'B??nh trang tr??', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY11', 'D???ng c??? b???p', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY12', '????n trang tr??', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY13', '?????ng h???', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY14', 'Gh??? ??n', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY15', 'Gh??? Bar', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY16', 'Gh??? d??i & ????n', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY17', 'Gh??? l??m vi???c', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY18', 'Gh??? ngo??i tr???i', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY19', 'Gh??? th?? gi??n', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY2', 'B??n ??n', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY20', 'G???i v?? th?? b??ng', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY21', 'G????ng', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY22', 'Gi?????ng ng???', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY23', 'H??ng trang tr?? kh??c', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY24', 'Hoa v?? c??y', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY25', 'K??? s??ch', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY26', 'K??? tr??ng b??y', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY27', 'Khung h??nh', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY28', 'Michael Aram', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY29', 'N???m', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY3', 'B??n b??n', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY30', 'N???n & ch??n n???n', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY31', 'Sofa', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY32', 'Sofa g??c', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY33', 'T??? ??o', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY34', 'T??? ??m t?????ng', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY35', 'T??? b???p', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY36', 'T??? gi??y', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY37', 'T??? h???c k??o', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY38', 'T??? ly', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY39', 'T??? tivi', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY4', 'B??n Console', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY40', 'T?????ng trang tr??', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY41', 'Th???m trang tr??', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY42', 'Thi???t b??? b???p', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY43', 'Tranh', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY44', 'Xe ?????y', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY5', 'B??n ?????u gi?????ng', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY6', 'B??n l??m vi???c', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY7', 'B??n n?????c', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY8', 'B??n ngo??i tr???i', 1, NULL, NULL, NULL, '', '', '');

INSERT `Categories` (`Id`, `Name`, `Active`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY9', 'B??n trang ??i???m', 1, NULL, NULL, NULL, '', '', '');
 

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY1_PRO01', 'Armchair + ????n Cabo PMA42005 KD1092-6', 23000000, 'CTGY1_PRO1 (1).jpg', 'CTGY1_PRO1 (2).jpg', 'CTGY1_PRO1 (3).jpg', 1, 1, 'Khung g??? Walnut, n???m b???c v???i', 'Armchair Cabo ???????c thi???t k??? nh??? g???n nh???m ti???t ki???m di???n t??ch. Ph???n khung ???????c l??m t??? g??? walnut b???n b??? v?? n???m gh??? ???????c b???c v???i m???m m???i t???o n??n t???ng th??? thi???t k??? sang tr???ng. Armchair Cabo s??? d???ng k???t h???p v???i ????n Cabo c??ng l??m t??ng c???m gi??c d??? ch???u khi ng???i khi ?????c s??ch ho???c l??m vi???c.', 'D745 - R850 - C745 / D500 - R400 - C400 mm', NULL, 'CTGY1', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY1_PRO02', 'Armchair + ????n Cabo PMA42005 KD1092-12', 23000000, 'CTGY1_PRO2 (1).jpg', 'CTGY1_PRO2 (2).jpg', 'CTGY1_PRO2 (3).jpg', 1, 1, 'Khung g??? Walnut, n???m b???c v???i', 'Armchair Cabo ???????c thi???t k??? nh??? g???n nh???m ti???t ki???m di???n t??ch. Ph???n khung ???????c l??m t??? g??? walnut b???n b??? v?? n???m gh??? ???????c b???c v???i m???m m???i t???o n??n t???ng th??? thi???t k??? sang tr???ng. Armchair Cabo s??? d???ng k???t h???p v???i ????n Cabo c??ng l??m t??ng c???m gi??c d??? ch???u khi ng???i khi ?????c s??ch ho???c l??m vi???c.', 'D745 - R850 - C745 / D500 - R400 - C400 mm', NULL, 'CTGY1', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY1_PRO03', 'Armchair Polo + g???i simili x??m', 8740000, 'CTGY1_PRO3 (1).jpg', 'CTGY1_PRO3 (2).jpg', 'CTGY1_PRO3 (3).jpg', 1, 1, 'Khung g??? b???c da c??ng nghi???p', '?????i v???i nh???ng t??n ????? c???a phong c??ch b??n c??? ??i???n th?? chi???c gh??? armchair Polo n??y r???t ????ng ????? th???. Nh??? v??o thi???t k??? v???i nh???ng ???????ng cong nh??? nh??ng, v???a ????? v?? ph???n v???i b???c trung t??nh, armchair c?? th??? ??i k??m v???i r???t nhi???u phong c??ch v?? kh??ng gian kh??c nhau, t??? ph??ng kh??ch ?????n ph??ng ng??? v?? c??? ph??ng ?????c s??ch.', 'D680 - R680 - C770  mm', NULL, 'CTGY1', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY1_PRO04', 'Armchair Polo + g???i v???i x??m', 8740000, 'CTGY1_PRO4 (1).jpg', 'CTGY1_PRO4 (2).jpg', 'CTGY1_PRO4 (3).jpg', 1, 1, 'Khung g??? b???c v???i', '?????i v???i nh???ng t??n ????? c???a phong c??ch b??n c??? ??i???n th?? chi???c gh??? armchair Polo n??y r???t ????ng ????? th???. Nh??? v??o thi???t k??? v???i nh???ng ???????ng cong nh??? nh??ng, v???a ????? v?? ph???n v???i b???c trung t??nh, armchair c?? th??? ??i k??m v???i r???t nhi???u phong c??ch v?? kh??ng gian kh??c nhau, t??? ph??ng kh??ch ?????n ph??ng ng??? v?? c??? ph??ng ?????c s??ch.', 'D680 - R680 - C770  mm', NULL, 'CTGY1', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY1_PRO05', 'Armchair Polo + g???i v???i xanh x??m', 8740000, 'CTGY1_PRO5 (1).jpg', 'CTGY1_PRO5 (2).jpg', 'CTGY1_PRO5 (3).jpg', 1, 1, 'Khung g??? b???c v???i', '?????i v???i nh???ng t??n ????? c???a phong c??ch b??n c??? ??i???n th?? chi???c gh??? armchair Polo n??y r???t ????ng ????? th???. Nh??? v??o thi???t k??? v???i nh???ng ???????ng cong nh??? nh??ng, v???a ????? v?? ph???n v???i b???c trung t??nh, armchair c?? th??? ??i k??m v???i r???t nhi???u phong c??ch v?? kh??ng gian kh??c nhau, t??? ph??ng kh??ch ?????n ph??ng ng??? v?? c??? ph??ng ?????c s??ch.', 'D680 - R680 - C770  mm', NULL, 'CTGY1', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY1_PRO06', 'Armchair Bridge G??? N??u Da cognac', 64900000, 'CTGY1_PRO6 (1).jpg', 'CTGY1_PRO6 (2).jpg', 'CTGY1_PRO6 (3).jpg', 1, 1, 'Khung g??? s???i ?????c t??? nhi??n nh???p kh???u t??? M??? - Da ?? t??? nhi??n cao c???p', 'S??? g???n g??i, sang tr???ng c???a ch???t li???u g??? s???i v?? da t??? nhi??n ?? gi??p armchair Bridge x???ng ????ng l?? s???n ph???m ???????c l???a ch???n cho kh??ng gian hi???n ?????i. K???t c???u thi???t k??? ???????c t??nh to??n khoa h???c t??? t??? l??? l??ng t???a cho ?????n ph???n tay v???n mang l???i c???m gi??c tho???i m??i cho b???n. Bridge ??? T??nh y??u thi??n nhi??n v?? s???c quy???n r?? c???a g???. B??? s??u t???p Bridge mang h??i th??? Scandinavian l?? s??? k???t h???p ho??n h???o c???a nh?? thi???t k??? n???i ti???ng ??an M???ch Hans Sandgren Jakobsen c??ng c??ng ngh??? s???n xu???t th??? c??ng c???a Nh???t B???n. Mang thi???t k??? v?????t th???i gian, s??? d???ng ch???t li???u g??? s???i v?? da b?? t??? nhi??n, Bridge mang ?????n c???m gi??c sang tr???ng, g???n g??i v?? tho???i m??i cho gia ch???. ??i???m n???i b???t c???a Bridge l?? s??? tinh x???o trong ho??n thi???n, t???ng chi ti???t, nh???ng ???????ng cong, b??? m???t g??? s???i ???????c th???c hi???n v?? ch???n l???a v?? c??ng k??? c??ng, ????? t???o ra m???t Bridge ho??n h???o, ch???m ?????n t??m h???n ?????y c???m x??c v?? y??u qu?? nh???ng gi?? tr??? l??u b???n c???a gia ch??? Vi???t.', 'D900 - R900 - C750 mm', NULL, 'CTGY1', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY1_PRO07', 'Armchair Osaka v???i 29', 14900000, 'CTGY1_PRO7 (1).jpg', 'CTGY1_PRO7 (2).jpg', '', 1, 1, 'Khung inox 304 PVD b???c v???i cao c???p', '', 'D670 - R770 - C660/400 mm', NULL, 'CTGY1', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY1_PRO08', 'Armchair Osaka v???i 46', 14900000, 'CTGY1_PRO8 (1).jpg', 'CTGY1_PRO8 (2).jpg', '', 1, 1, 'Khung inox 304 PVD b???c v???i cao c???p', '', 'D670 - R770 - C660/400 mm', NULL, 'CTGY1', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY1_PRO09', 'Armchair Leonard Leat/Meta 37528P', 28520000, 'CTGY1_PRO9 (1).jpg', 'CTGY1_PRO9 (2).jpg', '', 1, 1, 'khung kim lo???i nh???i, n???m b???c da t???ng h???p', '', 'D600 - R770 - H730 mm', NULL, 'CTGY1', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY1_PRO10', 'Armchair Xoay Club Walnut 82994K', 28200000, 'CTGY1_PRO10 (1).jpg', 'CTGY1_PRO10 (2).jpg', 'CTGY1_PRO10 (3).jpg', 1, 1, 'Ch??n kim lo???i xoay, l??ng ???p g??? Walnut, n???m 100 % polyurethane', '', 'D620 - R610 - C680 mm', NULL, 'CTGY1', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY10_PRO001', 'B??nh hoa Matteo L Turquoise 114709E', 7700000, 'CTGY10_PRO01 (1).jpg', '', '', 1, 1, 'Th???y tinh xanh', '', '??190 - C390 mm', NULL, 'CTGY10', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY10_PRO002', 'B??nh hoa g???m h??nh vu??ng xanh d????ng FLC059', 5780000, 'CTGY10_PRO02 (1).jpg', 'CTGY10_PRO2 (2).jpg', '', 1, 1, 'G???m', '', '??160 - C330 mm', NULL, 'CTGY10', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY10_PRO003', 'B??nh hoa g???m ????? 16??32 FLC002', 4450000, 'CTGY10_PRO03 (1).jpg', 'CTGY10_PRO3 (2).jpg', '', 1, 1, 'G???m', '', '??160 - C320 mm', NULL, 'CTGY10', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY10_PRO004', 'B??nh hoa g???m xanh ?????m FLC002', 4450000, 'CTGY10_PRO04 (1).jpg', 'CTGY10_PRO04 (2).jpg', '', 1, 1, 'G???m', '', '??160 - C320 mm', NULL, 'CTGY10', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY10_PRO005', 'B??nh Sacha Blanc', 1710000, 'CTGY10_PRO05 (1).jpg', '', '', 1, 1, 'G???m', '', 'C250 mm', NULL, 'CTGY10', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY10_PRO006', 'Ch???u hoa Paulownia tr???ng l???n 26X26X23WD 11170', 1940000, 'CTGY10_PRO06 (1).jpg', 'CTGY10_PRO06 (2).jpg', 'CTGY10_PRO06 (3).jpg', 1, 1, 'G??? c??ng nghi???p, nh???a c??ng nghi???n', '', 'D260 - R260 - C230 mm', NULL, 'CTGY10', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY10_PRO007', 'Ch???u hoa g???m Ocher l???n 16.5??16.5cm 22977', 950000, 'CTGY10_PRO07 (1).jpg', 'CTGY10_PRO07 (2).jpg', 'CTGY10_PRO07 (3).jpg', 1, 1, 'G???m', '', 'D165 - R165 - C165 mm', NULL, 'CTGY10', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY10_PRO008', 'Ch???u hoa g???m xanh l?? l???n 16.5??16.5cm 22980', 950000, 'CTGY10_PRO08 (1).jpg', 'CTGY10_PRO08 (2).jpg', '', 1, 1, 'G???m', '', 'D165 - R165 - C165 mm', NULL, 'CTGY10', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY10_PRO009', 'Ch???u hoa treo xi m??ng taupe l???nl 20??19.5 22779', 760000, 'CTGY10_PRO09 (1).jpg', 'CTGY10_PRO09 (2).jpg', '', 1, 1, 'Xi m??ng', '', 'D200 - R200 - C195 mm', NULL, 'CTGY10', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY10_PRO010', 'B??nh hoa Darius', 11980000, 'CTGY10_PRO010 (1).jpg', '', '', 1, 1, 'Th???y tinh', '', 'D400- R230- C150 mm', NULL, 'CTGY10', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY11_PRO001', '???m tr?? Infuseur Imany', 1300000, 'CTGY11_PRO01 (1).jpg', '', '', 1, 1, 'G???m s???', '', 'D147 - R120 - C130 mm', NULL, 'CTGY11', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY11_PRO002', '???m tr?? s???c xanh tr???ng QV31913', 790000, 'CTGY11_PRO02 (1).jpg', '', '', 1, 1, 'G???m s???', '', 'D190-R155-C155 mm', NULL, 'CTGY11', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY11_PRO003', 'Khay deco Parrot 52914K', 1030000, 'CTGY11_PRO03 (1).jpg', 'CTGY11_PRO03 (2).jpg', 'CTGY11_PRO03 (3).jpg', 1, 1, 'Nh???a, s??n th??? c??ng m??u gold - xanh', '', 'D205 - R100 - C140 mm', NULL, 'CTGY11', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY11_PRO004', 'Ch??n h???ng QV51992', 140000, 'CTGY11_PRO04 (1).jpg', '', '', 1, 1, 'G???m s??? cao c???p', '', 'D105-R105-C60 mm', NULL, 'CTGY11', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY11_PRO005', 'B??t n??n s??? 1 hoa xanh', 1200000, 'CTGY11_PRO05 (1).jpg', '', '', 1, 1, 'G???m B??t Tr??ng ch???m h???p kim', '', '??200 - C70', NULL, 'CTGY11', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY11_PRO006', 'B??? 2 l?? trang tr?? Metal 93X28-148776C', 2200000, 'CTGY11_PRO06 (1).jpg', '', '', 1, 1, 'Kim lo???i', '', 'D300 - R360 mm', NULL, 'CTGY11', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY11_PRO007', 'D??a C?? Xanh', 799000, 'CTGY11_PRO07 (1).jpg', 'CTGY11_PRO07 (2).jpg', '', 1, 1, 'G???m s???', '', '??280 - C320 mm', NULL, 'CTGY11', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY11_PRO008', 'Ch??n tr???ng vi???n nh?? v??ng QV51992', 170000, 'CTGY11_PRO08 (1).jpg', '', '', 1, 1, 'G???m s??? cao c???p', '', 'D127-R127-C60 mm', NULL, 'CTGY11', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY11_PRO009', 'Khay g???m Ninfea m??u x??m smoke grey', 2455000, 'CTGY11_PRO09 (1).jpg', 'CTGY11_PRO09 (2).jpg', '', 1, 1, 'G???m', 'Th????ng hi???u ?? -Calligaris', 'D402 - R160 - C15 mm', NULL, 'CTGY11', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY11_PRO010', 'T?? xanh hoa tr???ng', 860000, 'CTGY11_PRO010 (1).jpg', '', '', 1, 1, 'G???m B??t Tr??ng ch???m h???p kim', '', '??200 - C90', NULL, 'CTGY11', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY12_PRO001', '????n b??n Lombard 107338E', 17200000, 'CTGY12_PRO01 (1).jpg', 'CTGY12_PRO01 (2).jpg', '', 1, 1, 'Th???y tinh pha l??, ho??n thi???n b???ng niken, h??nh d???ng 90% polyester, 10% b??ng', '', '??350 - C530 mm', NULL, 'CTGY12', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY12_PRO002', '????n ch??m trang tr?? H80 373008', 8970000, 'CTGY12_PRO02 (1).jpg', '', '', 1, 1, 'Kim lo???i, Th???y tinh', '', '??750 - C900 mm', NULL, 'CTGY12', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY12_PRO003', '????n b??n Savona', 19670000, 'CTGY12_PRO03 (1).jpg', 'CTGY12_PRO03 (2).jpg', '', 1, 1, 'G???m, v???i', 'Th??m ??i???m nh???n v??? k???t c???u cho m???t b??n c???a b???n v???i ????n b??n Savona tinh x???o, c?? ????? ????n b???ng s??? tr???ng c?? ch???m kh???c h??nh xo???n ???c. V??? ngo??i ?????c bi???t c???a n?? ???????c th??? hi???n b???i ????? ????n ho??n thi???n b???ng ?????ng c??? v?? m???t chao ????n m??u kem ????n gi???n.', 'D260 - R580 - C660 mm', NULL, 'CTGY12', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY12_PRO004', '????n b??n Kelcie', 21900000, 'CTGY12_PRO04 (1).jpg', '', '', 1, 1, 'V???i, th???ch cao', '????n b??n, ????n trang tr?? ph??ng kh??ch, ph??ng ng??? t??? l??u kh??ng ch??? ????n thu???n l?? gi???i ph??p cung c???p ??nh s??ng, m?? c??n l?? m???t v???t d???ng n???i th???t trang tr?? gi??p gia t??ng t??nh th???m m???, phong c??ch trong kh??ng gian c???a gia ????nh b???n.', 'D420 - R220 - C540 mm B??ng 60W', NULL, 'CTGY12', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY12_PRO005', '????n tr???n Crystal 5 b??ng m??u Gold', 26000000, 'CTGY12_PRO05 (1).jpg', '', '', 1, 1, 'Kim lo???i', '', 'D560 - R540', NULL, 'CTGY12', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY12_PRO006', '????n treo Prisma Ice Cube', 12900000, 'CTGY12_PRO06 (1).jpg', 'CTGY12_PRO06 (2).jpg', 'CTGY12_PRO06 (3).jpg', 1, 1, 'Th??p, k??nh', '', 'D410- R410- C161 mm', NULL, 'CTGY12', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY12_PRO007', '????n tr???n Black E27-40W', 666300, 'CTGY12_PRO07 (1).jpg', '', '', 1, 1, 'Nh???a', '', '??350', NULL, 'CTGY12', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY12_PRO008', '????n ??p tr???n trang tr?? Kinan white', 6900000, 'CTGY12_PRO08 (1).jpg', 'CTGY12_PRO08 (2).jpg', '', 1, 1, 'Kim lo???i', '', 'D540 - R540 - C300 mm', NULL, 'CTGY12', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY12_PRO009', '????n ?????ng Anea', 7500000, 'CTGY12_PRO09 (1).jpg', 'CTGY12_PRO09 (2).jpg', 'CTGY12_PRO09 (3).jpg', 1, 1, 'Kim lo???i', '', 'D585 - R 254 C1675 mm', NULL, 'CTGY12', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY12_PRO010', '????n b??n Ignes', 3300000, 'CTGY12_PRO10 (1).jpg', 'CTGY12_PRO10 (2).jpg', '', 1, 1, 'Kim lo???i', '', 'D280- R200- C635 mm', NULL, 'CTGY12', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY13_PRO001', '?????ng h??? ????? b??n b??o th???c ALU COPPAR 15X11 KA5721', 960000, 'CTGY13_PRO01 (1).jpg', '', '', 1, 1, 'Kim lo???i m??? ?????ng, k??nh', '', 'D110 - C150 mm', NULL, 'CTGY13', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY13_PRO002', '?????ng h??? ????? b??n BAN WORLD', 890000, 'CTGY13_PRO02 (1).jpg', 'CTGY13_PRO02 (2).jpg', '', 1, 1, 'Kim lo???i nh??m, m???t k??nh tr???ng - nh???p kh???u ???n ?????', '', '??125- C140 mm', NULL, 'CTGY13', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY13_PRO003', '?????ng h??? ????? b??n SB FINSIH 53185', 1300000, 'dsc05824.jpg', 'dsc05826-768x511.jpg', '', 1, 1, 'Kim lo???i', '', '9 x 9 x C7cm', NULL, 'CTGY13', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY13_PRO004', '?????ng h??? ????? b??n Brass kim lo???i 6??? 54131', 1300000, 'Dong-ho-de-ban-Brass-6p-SB-54131-1-768x495.jpg', '', '', 1, 1, 'Kim lo???i, Th???y tinh', '', 'D175-R90-C260 mm', NULL, 'CTGY13', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY13_PRO005', '?????ng h??? ????? b??n SB/ Satin Grey 55254', 2200000, 'dsc05783.jpg', 'dsc05784-768x511.jpg', '', 1, 1, 'Kin lo???i', '', 'N26 x C40 x X12', NULL, 'CTGY13', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY13_PRO006', '?????ng h??? ????? b??n SB FINSIH 53216', 1100000, 'dsc05817.jpg', 'dsc05819.jpg', '', 1, 1, 'Kin lo???i', '', 'C7 x N9 x X5', NULL, 'CTGY13', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY13_PRO007', '?????ng h??? ????? b??n STEEL/ ALUM BL 53715', 2900000, 'dsc05795.jpg', 'dsc05796-768x511.jpg', '', 1, 1, 'Kin lo???i', '', '25 x 12 x 40', NULL, 'CTGY13', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY13_PRO008', '?????ng h??? treo t?????ng Nickel b???c da', 4230000, '65161-noi-that-nha-xinh-dong-treo-tuong-boc-da1.jpg', '', '', 1, 1, 'Kin lo???i', '', '??310', NULL, 'CTGY13', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY14_PRO001', 'Gh??? Hudson Beige 80006K', 10900000, 'GHE-HUDSON-BEIGE-80006K-3105860-768x511.jpg', 'GHE-HUDSON-BEIGE-80006K-3105860-4-768x511.jpg', '', 1, 1, 'Ch??n kim lo???i s??n 2 m??u ??en, gold - n???m b???c v???i', '', 'D490 - R540 - C840 mm', NULL, 'CTGY14', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY14_PRO002', 'Gh??? ??n Peak v???i xanh', 4900000, 'ghe-an-peak-mau-xanh-1-768x511.jpg', 'ghe-an-peak-mau-xanh-2-768x511.jpg', '', 1, 1, 'B???c V???i, Ch??n s???t s??n t??nh ??i???n m??u ??en', '', 'D470-R490-C800mm', NULL, 'CTGY14', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY14_PRO003', 'Gh??? ??n Peak v???i cam', 4900000, 'ghe-an-peak-mau-cam-hien-dai-1-768x511.jpg', 'ghe-an-peak-mau-cam-hien-dai-2-768x511.jpg', '', 1, 1, 'B???c V???i, Ch??n s???t s??n t??nh ??i???n m??u ??en', '', 'D470-R490-C800mm', NULL, 'CTGY14', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY14_PRO004', 'N???m ng???i gh??? Elegance da Semia ??en S2', 3920000, '102414-ghe-elegance-da-den-semia-768x511.jpg', '', '', 1, 1, 'Da b?? th???t', 'Ph???n n???m ng???i ?????t tr??n gh???', 'D380 - R370 - C10 mm', NULL, 'CTGY14', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY14_PRO005', 'Gh??? Bridge G??? m??u T??? nhi??n Da ??en', 18800000, '1000-ghe-bridge2-768x511.jpg', 'phong-an-bridge3.jpg', '', 1, 1, 'G??? s???i ?????c t??? nhi??n nh???p kh???u t??? M???- Da ?? t??? nhi??n cao c???p', 'C???m gi??c tho??i m??i v?? d??? ch???u c???a gh??? ??n Bridge mang l???i l?? tr???i nghi???m tuy???t v???i b???ng vi???c s??? d???ng ch???t li???u da ?? m???m m???i v?? g??? s???i t??? nhi??n. ?????c bi???t, ph???n l??ng gh??? c???a Bridge ???????c th???c hi???n th??? c??ng v???i ????? kh?? g???p 10 l???n th??ng th?????ng t???o ra m???t s???n ph???m ho??n h???o, ?????p ??? m???i g??c nh??n.', 'D600- R500- C680 mm', NULL, 'CTGY14', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY14_PRO006', 'Gh??? ??n Harry', 10700000, '84681-ghe-an-harry-1-768x511.jpg', '84681-ghe-an-harry-5-768x511.jpg', '', 1, 1, 'Ch??n kim lo???i m???t ng???i khung v??n ??p c??ng nghi???p b???c da c??ng nghi???p', '', 'D630 - R600 - C840 mm', NULL, 'CTGY14', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY14_PRO007', 'Gh??? ??n M??y ??? da Mushroom', 7700000, 'ghe-an-may-kem-768x511.jpg', 'nhaxinh-phong-an-may-201210-768x511.jpg', '', 1, 1, 'G??? Acacia ( Tr??m )- M??y t??? nhi??n- N???m b???c da- Ch??n b???c inox m??? ?????ng', '', 'D510-R530-C880', NULL, 'CTGY14', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY14_PRO008', 'Gh??? ??n Miami v???i m??u kem', 3900000, 'Ghe-an-Miami-vai-mau-kem-768x511.jpg', 'Ghe-an-Miami-vai-mau-kem-1-768x495.jpg', '', 1, 1, 'G??? s???i t??? nhi??n b???c v???i', '', 'D540 - R450 - C820', NULL, 'CTGY14', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY15_PRO001', 'Gh??? Bar Bridge m??u n??u Da Cognac', 29900000, 'ghe-bar-bridge-mau-nau-cognac-go-soi-768x511.jpg', '', '', 1, 1, 'Khung g??? s???i ?????c t??? nhi??n nh???p kh???u t??? M??? - da ?? t??? nhi??n cao c???p', '', 'D500 - R500 - C750/980 mm', NULL, 'CTGY15', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY15_PRO002', 'Gh??? bar Fifties da m??u cognac', 20450000, '103801-ghe-bar-fifties-da-cognac-calligaris-768x511.jpg', '', '', 1, 1, 'Ch??n kim lo???i m??u gold n???m b???c da t???ng h???p cao c???p', '', 'D505 - R540 - C650/950 mm', NULL, 'CTGY15', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY15_PRO003', 'Gh??? bar Fifties da m??u mud brown', 19500000, '103439-ghe-bar-fifties-da-mau-mud-brown-768x511.jpg', '', '', 1, 1, 'Ch??n kim lo???i m??u gold, n???m b???c da t???ng h???p cao c???p', 'ifties thu h???p kho???ng c??ch gi???a thi???t k??? v?? s??? tho???i m??i m???t c??ch ho??n h???o v?? t???o n??n s??? c??n b???ng l?? t?????ng gi???a v??? ?????p hi???n ?????i v?? n??t c??? ??i???n. Ph???n ?????m th??m ???????c b???o v??? b???ng ??ai ????n h???i hi???u su???t cao cho c???m gi??c c???c k??? tho???i m??i v?? d??? ch???u', 'D505 - R540 - C650/950 mm', NULL, 'CTGY15', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY15_PRO004', 'Gh??? Bar Boheme da taupe', 9900000, '62688-noi-that-nha-xinh-phong-khach-ghe-bar-boheme-da-taupe-b-l.jpg', 'ghe-bar-boheme-13-768x511.jpg', '', 1, 1, 'Khung kim lo???i - b???c da t???ng h???p cao c???p', 'Gh??? qu???y bar Boheme nh???p kh???u t??? ?? c?? m??u s???c sang tr???ng. S???n ph???m ???????c thi???t k??? ????n gi???n nh??ng kh??ng k??m ph???n tinh t???, hi???n ?????i. Gh??? ???????c l??m b???ng khung kim lo???i ch???c ch???n b???c l???p da n??u t??? nhi??n cho v??? ?????p ho??n h???o', 'D400 - R400 - C900 mm', NULL, 'CTGY15', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY15_PRO005', 'Gh??? bar Boheme da Coffee', 9900000, '56577-noi-that-nha-xinh-phong-khach-ghe-bar-boheme-da-coffee-b-l.jpg', 'ghe-bar-boheme-1-768x511.jpg', '', 1, 1, 'Khung kim lo???i - b???c da t???ng h???p cao c???p', 'Gh??? qu???y bar Boheme nh???p kh???u t??? ?? c?? m??u s???c sang tr???ng. S???n ph???m ???????c thi???t k??? ????n gi???n nh??ng kh??ng k??m ph???n tinh t???, hi???n ?????i. Gh??? ???????c l??m b???ng khung kim lo???i ch???c ch???n b???c l???p da n??u t??? nhi??n cho v??? ?????p ho??n h???o', 'D400 - R400 - C900', NULL, 'CTGY15', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY15_PRO006', 'Gh??? bar Monaco', 9200000, 'ghe-monaco-10001-768x511.jpg', 'ghe-monaco-5002.jpg', '', 1, 1, 'Kim lo???i kh??ng r???, da c??ng nghi???p', '', 'D480- C1000 mm', NULL, 'CTGY15', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY15_PRO007', 'Gh??? bar Tulij m??u petrol xanh d????ng', 22950000, 'Ghe-bar-Tulij-mau-petrol-xanh-duong-768x511.jpg', 'Ghe-bar-Tulij-mau-petrol-xanh-duong-1-768x495.jpg', '', 1, 1, 'Ch??n kim lo???i s??n ng???i polyurethane', '', 'D435 - R425 - C650 mm', NULL, 'CTGY15', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY15_PRO008', 'Gh??? bar Jenny ??? 96364J', 5800000, 'ghe-bar-3-101653-768x511.jpg', 'ghe-bar-3-101653-3-768x511.jpg', '', 1, 1, 'Kim lo???i kh??ng r???, da c??ng nghi???p', '', 'D470- C860 mm', NULL, 'CTGY15', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY16_PRO01', 'Gh??? bench Gallet 122cm H122x46x43 37245P', 15950000, 'CTGY16_PRO01(1).jpg', 'CTGY16_PRO01(2).jpg', 'CTGY16_PRO01(3).jpg', 1, 1, 'khung kim lo???i, nh???i n???m b???c da t???ng h???p', '', 'D1220 - R460 - C430 mm', NULL, 'CTGY16', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY16_PRO02', 'Bench Elegance m??u ??en da brown', 26770000, 'CTGY16_PRO02(1).jpg', '', '', 1, 1, 'G??? Ash (t???n b??) ?????c t??? nhi??n nh???p kh???u t??? M???, da b?? nh???p kh???u Italy', '', 'D1500 - R350 - C460 mm', NULL, 'CTGY16', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY16_PRO03', 'Bench Cabo v???i KD1085-11 PMA491015 F1', 10400000, 'CTGY16_PRO03(1).jpg', 'CTGY16_PRO03(2).jpg', 'CTGY16_PRO03(3).jpg', 1, 1, 'Khung ch??n kim lo???i, g??? walnut, b???c v???i', 'Gh??? Bench Cabo v???i khung ch??n ???????c l??m b???ng kim lo???i k???t h???p v???i 1 thanh ngang b???ng g??? walnut, ph???n n???m gh??? ???????c b???c v???i tinh t???, sang tr???ng. Gh??? Bench Cabo s??? l?? ??i???m nh???n trong ph??ng ng??? n???u b???n bi???t k???t h???p m???t c??ch h???p l??. ?????i v???i ph??ng ng???, ?????c bi???t l?? ph??ng ng??? master v???i l???i th??? kh??ng gian r???ng th?? s??? xu???t hi???n c???a m???t chi???c gh??? bench s??? gi??p cho c??n ph??ng tr??? n??n sang tr???ng h??n.', 'D1400 - R370 - C450 mm', NULL, 'CTGY16', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY16_PRO04', 'Bench Bridge g??? T??? nhi??n Da ??en', 29590000, 'CTGY16_PRO04(1).jpg', 'CTGY16_PRO04(2).jpg', 'CTGY16_PRO04(3).jpg', 1, 1, 'G??? s???i ?????c t??? nhi??n nh???p kh???u t??? M???- Da ?? t??? nhi??n cao c???p', 'Bench Bridge ?????i di???n cho tinh th???n t???i gi???n trong phong c??ch thi???t k??? ??an M???ch nh??ng c??ng r???t ???n t?????ng. S??? d???ng ch???t li???u da v?? g??? s???i t??? nhi??n, bench Bridge ghi d???u trong nhi???u kh??ng gian ph??ng ??n, ph??ng kh??ch hay ph??ng ng???. Bridge ??? T??nh y??u thi??n nhi??n v?? s???c quy???n r?? c???a g???. B??? s??u t???p Bridge mang h??i th??? Scandinavian l?? s??? k???t h???p ho??n h???o c???a nh?? thi???t k??? n???i ti???ng ??an M???ch Hans Sandgren Jakobsen c??ng c??ng ngh??? s???n xu???t th??? c??ng c???a Nh???t B???n. Mang thi???t k??? v?????t th???i gian, s??? d???ng ch???t li???u g??? s???i M??? v?? da b?? t??? nhi??n ??, Bridge mang ?????n c???m gi??c sang tr???ng, g???n g??i v?? tho???i m??i cho gia ch???. ??i???m n???i b???t c???a Bridge l?? s??? tinh x???o trong ho??n thi???n, t???ng chi ti???t, nh???ng ???????ng cong, b??? m???t g??? s???i ???????c th???c hi???n v?? ch???n l???a v?? c??ng k??? c??ng, ????? t???o ra m???t Bridge ho??n h???o, ch???m ?????n t??m h???n ?????y c???m x??c v?? y??u qu?? nh???ng gi?? tr??? l??u b???n c???a gia ch??? Vi???t.', 'D1500 - R380 - C440', NULL, 'CTGY16', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY16_PRO05', 'Bench Elegance m??u t??? nhi??n da cognac', 26770000, 'CTGY16_PRO05(1).jpg', '', '', 1, 1, 'G??? Ash (t???n b??) ?????c t??? nhi??n nh???p kh???u t??? M???, da b?? nh???p kh???u Italy', '', 'D1500 - R350 - C460 mm', NULL, 'CTGY16', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY16_PRO06', 'Bench YK', 18560000, 'CTGY16_PRO06(1).jpg', '', '', 1, 1, 'M???t bench: Slolid oak Ph??p- m???t bench gh??p timber Ch??n: Solid oak - Inox m???', '', 'D1800 - R400 - C450 mm', NULL, 'CTGY16', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY16_PRO07', 'Bench Bridge g??? n??u Da cognac 1m5', 29590000, 'CTGY16_PRO07(1).jpg', '', '', 1, 1, 'G??? s???i ?????c t??? nhi??n nh???p kh???u t??? M???- Da ?? t??? nhi??n cao c???p', 'Bench Bridge ?????i di???n cho tinh th???n t???i gi???n trong phong c??ch thi???t k??? ??an M???ch nh??ng c??ng r???t ???n t?????ng. S??? d???ng ch???t li???u da v?? g??? s???i t??? nhi??n, bench Bridge ghi d???u trong nhi???u kh??ng gian ph??ng ??n, ph??ng kh??ch hay ph??ng ng???. Bridge ??? T??nh y??u thi??n nhi??n v?? s???c quy???n r?? c???a g???. B??? s??u t???p Bridge mang h??i th??? Scandinavian l?? s??? k???t h???p ho??n h???o c???a nh?? thi???t k??? n???i ti???ng ??an M???ch Hans Sandgren Jakobsen c??ng c??ng ngh??? s???n xu???t th??? c??ng c???a Nh???t B???n. Mang thi???t k??? v?????t th???i gian, s??? d???ng ch???t li???u g??? s???i M??? v?? da b?? t??? nhi??n ??, Bridge mang ?????n c???m gi??c sang tr???ng, g???n g??i v?? tho???i m??i cho gia ch???. ??i???m n???i b???t c???a Bridge l?? s??? tinh x???o trong ho??n thi???n, t???ng chi ti???t, nh???ng ???????ng cong, b??? m???t g??? s???i ???????c th???c hi???n v?? ch???n l???a v?? c??ng k??? c??ng, ????? t???o ra m???t Bridge ho??n h???o, ch???m ?????n t??m h???n ?????y c???m x??c v?? y??u qu?? nh???ng gi?? tr??? l??u b???n c???a gia ch??? Vi???t.', 'D1500 - R380 - C440 ', NULL, 'CTGY16', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY16_PRO08', 'Bench Miami 1m6', 7500000, 'CTGY16_PRO08(1).jpg', 'CTGY16_PRO08(2).jpg', 'CTGY16_PRO08(3).jpg', 1, 1, 'G??? s???i t??? nhi??n + MDF ch???ng ???m', '', 'D1600-R400-C450', NULL, 'CTGY16', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY16_PRO09', 'Bench Shadow', 11690000, 'CTGY16_PRO09(1).jpg', 'CTGY16_PRO09(2).jpg', 'CTGY16_PRO09(3).jpg', 1, 1, 'Ch??n kim lo???i m??u ?????ng- MDF Veneer s???i', '', 'D1600- R400- C450 mm', NULL, 'CTGY16', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY16_PRO10', 'Bench Butterfly Ginkgo 411554', 111345000, 'CTGY16_PRO10(1).jpg', '', '', 1, 1, '', '', 'D1193 - R393 - C457 mm', NULL, 'CTGY16', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY17_PRO01', 'Gh??? l??m vi???c check out 83959K', 24500000, 'CTGY17_PRO01(1).jpg', 'CTGY17_PRO01(2).jpg', 'CTGY17_PRO01(3).jpg', 1, 1, 'Ch??n kim lo???i c?? b??nh xe xoay, l??ng mdf veneer - b???c da c??ng nghi???p', '', '', NULL, 'CTGY17', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY17_PRO02', 'Gh??? L??m Vi???c Xoay Franky Brown 1300008Z', 12800000, 'GHE-LAM-VIEC-XOAY-FRANKY-BROWN-130008Z-1-600x400.jpg', 'GHE-LAM-VIEC-XOAY-FRANKY-BROWN-130008Z-2-600x400.jpg', '', 1, 1, 'Ch??n kim lo???i xoay b???c da c??ng nghi???p', '', '', NULL, 'CTGY17', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY17_PRO03', 'Gh??? xoay Patron Walnut 79696K', 14500000, 'Ghe-xoay-Patron-Walnut-3105579-2-600x355.jpg', 'Ghe-xoay-Patron-Walnut-3105579-3-600x355.jpg', 'Ghe-xoay-Patron-Walnut-3105579-6-copy-600x354.jpg', 1, 1, '100% Polyester, 100% Polyvinyl clorua (PVC c???ng)', '', '', NULL, 'CTGY17', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY17_PRO04', 'Gh??? xoay v??n ph??ng High Bossy', 34500000, 'Ghe-xoay-van-phong-High-Bossy-398599-5622-600x400.jpg', 'Ghe-xoay-van-phong-High-Bossy-398599-1-600x400.jpg', 'Ghe-xoay-van-phong-High-Bossy-398599-6-600x400.jpg', 1, 1, 'G??? & MDF', '', '', NULL, 'CTGY17', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY17_PRO05', 'Gh??? l??m vi???c Labora Pebble 84739K', 9500000, 'Ghe-Lam-Viec-Labora-Pebble-84739K-3105585-600x354.jpg', 'Ghe-Lam-Viec-Labora-Pebble-84739K-3105585-2-600x354.jpg', 'Ghe-Lam-Viec-Labora-Pebble-84739K-3105585-1-600x354.jpg', 1, 1, 'Ch??n 100% Polyamide nylon, armrest kim lo???i - b???c 100 % Polyester', '', '', NULL, 'CTGY17', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY17_PRO06', 'Gh??? l??m vi???c Lanora High Pebble', 14200000, 'ghe-labora-high-pebble-600x400.jpg', 'ghe-labora-high-pebble-600x400.jpg', '', 1, 1, 'Ch??n kim lo???i b???c da', '', '', NULL, 'CTGY17', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY17_PRO07', 'Gh??? ??n Kayla x??m', 11000000, '104683-ghe-an-kayla-grey-1-600x400.jpg', '104683-ghe-an-kayla-grey-2-600x400.jpg', '104683-ghe-an-kayla-grey-5-600x400.jpg', 1, 1, 'Ch??n kim lo???i m???t ng???i khung v??n ??p c??ng nghi???p b???c v???i', '', '', NULL, 'CTGY17', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY17_PRO08', 'Gh??? ??n kh??ng tay Porto b???c da Pu', 7500000, 'ghe_an_porto-600x400.jpg', 'ghe_an_porto_1-600x400.jpg', 'ghe_an_porto_2-600x400.jpg', 1, 1, 'G??? oak - Inox m??u gold - N???m b???c da c??ng nghi???p (PU )', '', '', NULL, 'CTGY17', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY18_PRO01', 'Gh??? ngo??i tr???i Angela Alu ADS003', 8700000, 'GHE-NGOAI-TROI-ANGELA-ALU-ADS003-600x400.jpg', 'GHE-NGOAI-TROI-ANGELA-ALU-ADS003-1-600x400.jpg', 'GHE-NGOAI-TROI-ANGELA-ALU-ADS003-1-600x400.jpg', 1, 1, 'Khung kim lo???i Alu b???c v???i', '', '', NULL, 'CTGY18', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY18_PRO02', 'Gh??? ngo??i tr???i Puyi Alu H78x56x59 ADS004', 7500000, 'GHE-NGOAI-TROI-PUYI-ALU-H78x56x59-ADS004-600x387.jpg', 'GHE-NGOAI-TROI-PUYI-ALU-H78x56x59-ADS004-1-600x387.jpg', '', 1, 1, 'Kim lo???i', '', '', NULL, 'CTGY18', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY18_PRO03', 'Gh??? ngo??i tr???i Tuka v???i Samoa SQB
', 27419000, '103367-ghe-tuka-vai-samoa-sqb-600x400.jpg', '103367-ghe-tuka-vai-samoa-sqb-2-600x400.jpg', '', 1, 1, 'Ch??n kim lo???i s??n n???m v???i lemon yellow -Th????ng hi???u Calligaris Italy', '', '', NULL, 'CTGY18', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY18_PRO04', 'Gh??? ngo??i tr???i YO! v???i v??ng', 25200000, '103368ghe-ngoai-troi-yo-calligaris-600x400.jpg', '', '', 1, 1, 'Ch??n kim lo???i s??n m??u v??ng v???i STB Th????ng hi???u Calligaris Italy', 'Gh??? s??n v?????n YO! c?? m???t ng???i v?? t???a l??ng ??an tr??n khung nh??m gi??p b???n th?? gi??n tho???i m??i v?? ch???c ch???n. Khung d???t ph???ng mang l???i s??? tho???i m??i t???i ??a v?? ???? ???????c gia c??? b???ng polypropylene ????? c???i thi???n ????? b???n k???t h???p khung kim lo???i h??nh ???ng ???? ???????c x??? l?? ph??? ????? ph?? h???p cho m???c ????ch s??? d???ng ngo??i tr???i.', '', NULL, 'CTGY18', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY18_PRO05', 'Gh??? ngo??i tr???i YO! v???i v??ng Saffron CB1986-E P7L/P7L', 3100000, 'GHE-YO-CB1986-E-P7L-P7L-SAFFRON-YELLOW-300x200.jpg', 'GHE-YO-CB1986-E-P7L-P7L-SAFFRON-YELLOW-1-600x387.jpg', '', 1, 1, 'Ch??n kim lo???i s??n m??u Saffron, n???m gh??? PP', 'Gh??? s??n v?????n YO! c?? m???t ng???i v?? t???a l??ng ??an tr??n khung nh??m gi??p b???n th?? gi??n tho???i m??i v?? ch???c ch???n. Khung d???t ph???ng mang l???i s??? tho???i m??i t???i ??a v?? ???? ???????c gia c??? b???ng polypropylene ????? c???i thi???n ????? b???n k???t h???p khung kim lo???i h??nh ???ng ???? ???????c x??? l?? ph??? ????? ph?? h???p cho m???c ????ch s??? d???ng ngo??i tr???i.', '', NULL, 'CTGY18', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY18_PRO06', 'Gh??? x???p Lorette Lagoon blue 570146', 2900000, 'Ghe-xep-Lorette-Lagoon-blue-570146-600x400.jpg', 'Ghe-xep-Lorette-Lagoon-blue-570146-1-600x387.jpg', 'Ghe-xep-Lorette-Lagoon-blue-570146-2-600x387.jpg', 1, 1, 'Th??p s??n t??nh ??i???n c??ng ngh??? cao, l??ng gh??? s??? d???ng c??ng ngh??? c???t laser', 'Gh??? x???p Lorette Lagoon blue 570146 s??? d???ng th??p s??n t??nh ??i???n c??ng ngh??? cao v?? ph???n l??ng gh??? s??? d???ng c??ng ngh??? c???t laser t???o ra chi???c gh??? c?? m??u s???c n???i b???t b???t m???t, thi???t k??? g???n g??ng c?? th??? d??? d??ng di chuy???n th??ch h???p cho vi???c s??? d???ng ngo??i tr???i v?? trong nh??.', '', NULL, 'CTGY18', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY18_PRO07', 'Gh??? ngo??i tr???i Fermob Bistro Linen', 3400000, 'ghe-ngoai-troi-30-69116-600x400.jpg', 'ghe-ngoai-troi-bistro3-600x400.jpg', '', 1, 1, 'Th??p s??n t??nh ??i???n c??ng ngh??? cao , l??ng gh??? s??? d???ng c??ng ngh??? c???t laser', 'Ra m???t v??o cu???i th??? k??? 19, m???t s???n ph???m ???????ng th???i c???a Th??p Eiffel, gh??? x???p Bistro c?? thi???t k??? tinh gi???n v?? ch???c ch???n ???? tr??? n??n ph??? bi???n v?? ng??y c??ng ???????c y??u th??ch. Cho ?????n ng??y nay, chi???c gh??? Bistro v???n cu???n h??t v?? h???p d???n h??n bao gi??? h???t. ???????c thi???t k??? t???o h??nh b???i Fermob, gh??? Bistro c?? k???t c???u ch???c ch???n, n???i b???t v???i nhi???u m??u s???c kh??c nhau chuy??n d??ng ngo??i tr???i C??n n???ng: 4,8 kg T???i tr???ng 300kg. V???t li???u: th??p K???p nh???a ????? g???p v?? m??? an to??n 24 m??u t??y ch???n.', '', NULL, 'CTGY18', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY18_PRO08', 'Gh??? ngo??i tr???i Fermob La Mome Lemon', 3100000, 'ghe-ngoai-troi-3-101073-1-600x400.jpg', 'ghe-ngoai-troi-la-mome-600x400.jpg', '', 1, 1, 'Th??p s??n t??nh ??i???n c??ng ngh??? cao , l??ng gh??? s??? d???ng c??ng ngh??? c???t laser', 'La Mome ra ?????i v???i ?? t?????ng gi??p ng?????i s??? d???ng ????? t???n h?????ng ???????c kh??ng kh?? trong l??nh cho d?? l?? b???n ??? th??nh ph??? hay n??ng th??n, trong nh?? hay ngo??i v?????n. Gh??? ???????c thi???t k??? v???i s??? ????n gi???n, nh??? nh??ng v?? di ?????ng s??? ho??n to??n ph?? h???p v???i khu v?????n nh?? b???n', '', NULL, 'CTGY18', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY19_PRO01', 'Gh??? Lazboy 10T352 Shannon da Sienna', 27400000, 'GHE-LAZBOY-10T352-SHANNON-DA-SIENNA-3106238-768x511.jpg', '', '', 1, 1, 'Khung g??? cao su b???c da b?? cao cao c???p', '', '', NULL, 'CTGY19', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY19_PRO02', 'Gh??? Lazboy ??i???n Cardinal 1PT550 ??? Ivory
', 44000000, '500-nha-xinh-phong-khach-ghe-thu-gian-lazboy3.jpg', '500-nha-xinh-phong-khach-ghe-thu-gian-lazboy3.jpg', '500-nha-xinh-phong-khach-ghe-thu-gian-lazboy3.jpg', 1, 1, 'Khung g??? cao su b???c da b?? t??? nhi??n 100%', '', '', NULL, 'CTGY19', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY19_PRO03', 'Gh??? Lazboy Pinnacle 10T512 ??? Cognac
', 38200000, '63163_lazboy_10t512_pinnacle_fl515374_cognac-1-1.jpg', '63163_lazboy_10t512_pinnacle_fl515374_cognac-1-1.jpg', '63163_lazboy_10t512_pinnacle_fl515374_cognac-1-1.jpg', 1, 1, 'Khung g??? cao su b???c da b?? 100%', 'Gh??? th?? gi??n th????ng hi???u n???i ti???ng Lazboy c???a M??? ???????c l??m b???ng khung g??? b???c da, c???u tr??c gh??? ch???c ch???n n??ng ????? c?? th???. Khi ng???i t???o c???m gi??c ??m ??i tho???i m??i l???c l?? theo nh???p gh???, ph???n n??ng ????? ch??n ???????c b???t ra, ch??? c???n m???t ?????ng t??c nh??? ph???n t???a l??ng s??? t??? ?????ng xu??i theo d??ng n???m cho b???n c???m gi??c tho???i m??i nh???t. Gh??? th?? gi??n Lazboy l?? s??? l???a ch???n tuy???t v???i nh???t cho nh???ng ph??t gi??y th?? gi??n sau m???t ng??y d??i ho???t ?????ng.', '', NULL, 'CTGY19', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY19_PRO04', 'Gh??? Lazboy Rialto 2C+CS T39505 ??? Claret
', 57000000, 'lazboy2-79964-500-.jpg', '', '', 1, 1, 'Khung g??? cao su b???c da b?? t??? nhi??n 100%', 'Gh??? th?? gi??n th????ng hi???u n???i ti???ng Lazboy c???a M??? ???????c l??m b???ng khung g??? b???c da, c???u tr??c gh??? ch???c ch???n n??ng ????? c?? th???. Khi ng???i t???o c???m gi??c ??m ??i tho???i m??i l???c l?? theo nh???p gh???, ph???n n??ng ????? ch??n ???????c b???t ra, ch??? c???n m???t ?????ng t??c nh??? ph???n t???a l??ng s??? t??? ?????ng xu??i theo d??ng n???m cho b???n c???m gi??c tho???i m??i nh???t. Gh??? th?? gi??n Lazboy l?? s??? l???a ch???n tuy???t v???i nh???t cho nh???ng ph??t gi??y th?? gi??n sau m???t ng??y d??i ho???t ?????ng.', '', NULL, 'CTGY19', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY19_PRO05', 'Gh??? Laz Boy 3C Barrett T35-752 Deep Sage
', 88260000, 'laz_boy_3c_barrett_t35-752_deep_sage-600x400.jpg', '', '', 1, 1, 'Khung g??? cao su b???c da b?? 100%', 'Gh??? th?? gi??n th????ng hi???u n???i ti???ng Lazboy c???a M??? ???????c l??m b???ng khung g??? b???c da, c???u tr??c gh??? ch???c ch???n n??ng ????? c?? th???. Khi ng???i t???o c???m gi??c ??m ??i tho???i m??i l???c l?? theo nh???p gh???, ph???n n??ng ????? ch??n ???????c b???t ra, ch??? c???n m???t ?????ng t??c nh??? ph???n t???a l??ng s??? t??? ?????ng xu??i theo d??ng n???m cho b???n c???m gi??c tho???i m??i nh???t. Gh??? th?? gi??n Lazboy l?? s??? l???a ch???n tuy???t v???i nh???t cho nh???ng ph??t gi??y th?? gi??n sau m???t ng??y d??i ho???t ?????ng.', '', NULL, 'CTGY19', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY19_PRO06', 'Gh??? Lazboy H.Town 10T532 ??? Cognac
', 39000000, '63178_ghe_thu_gian_532_cognac_b_l.jpg', '63178_ghe_thu_gian_532_cognac_c_l.jpg', '', 1, 1, 'Khung g??? cao su b???c da b?? t??? nhi??n cao c???p', 'Gh??? th?? gi??n c???a th????ng hi???u n???i ti???ng Lazboy c???a M??? ???????c l??m b???ng khung g??? x?? c??? b???c da, c???u tr??c gh??? ch???c ch???n n??ng ????? c?? th??? ??? c??c tr???ng th??i ng???i v?? n???m. Gh??? th?? gi??n l?? s??? l???a ch???n cho nh???ng ph??t gi??y th?? gi??n sau m???t ng??y d??i ho???t ?????ng', '', NULL, 'CTGY19', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY19_PRO07', 'Gh??? Lazboy Larson 10T528 ??? Ash', 20000000, 'ghe-lazboy-100761-600x400.jpg', 'ghe-lazboy-100761-1-600x400.jpg', '', 1, 1, 'Khung g??? cao su b???c v???i cao c???p', 'Gh??? th?? gi??n th????ng hi???u n???i ti???ng Lazboy c???a M??? ???????c l??m b???ng khung g??? b???c da, c???u tr??c gh??? ch???c ch???n n??ng ????? c?? th???. Khi ng???i t???o c???m gi??c ??m ??i tho???i m??i l???c l?? theo nh???p gh???, ph???n n??ng ????? ch??n ???????c b???t ra, ch??? c???n m???t ?????ng t??c nh??? ph???n t???a l??ng s??? t??? ?????ng xu??i theo d??ng n???m cho b???n c???m gi??c tho???i m??i nh???t. Gh??? th?? gi??n Lazboy l?? s??? l???a ch???n tuy???t v???i nh???t cho nh???ng ph??t gi??y th?? gi??n sau m???t ng??y d??i ho???t ?????ng.', '', NULL, 'CTGY19', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY19_PRO08', 'Gh??? Lazboy Enzo 10T349 Da Pebble
', 25000000, 'GHE-LAZBOY-ENZO-10T349-DA-PEBBLE-3106224-600x400.jpg', 'GHE-LAZBOY-ENZO-10T349-DA-PEBBLE-3106224.jpg', 'GHE-LAZBOY-ENZO-10T349-DA-PEBBLE-3106224.jpg', 1, 1, 'Khung g??? cao su b???c da b?? cao cao c???p', '', '', NULL, 'CTGY19', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY2_PRO01', 'B??n ??n Cult 6 ch???', 6900000, 'CTGY2_PRO1 (1).jpg', 'CTGY2_PRO1 (2).jpg', 'CTGY2_PRO1 (3).jpg', 1, 1, 'Ch??n b??n Aluminium s??n t??nh ??i???n, m???t b??n g??? HPL', 'B??n ??n Cult c?? thi???t k??? t???i gi???n, ph?? h???p v???i kh??ng gian ph??ng ??n mang phong c??ch B???c ??u. M???t b??n thi???t k??? ?????c bi???t v???i ????? m???ng c??ng nh???ng ???????ng n??t tinh t???, ho??n h???o, t???o c???m gi??c tho???i m??i cho t???t c??? m???i ng?????i.', 'D1400 - R800 - C750 mm', NULL, 'CTGY2', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY2_PRO02', 'B??n ??n Tuscany', 8300000, 'CTGY2_PRO02 (1).jpg', 'CTGY2_PRO02 (2).jpg', '', 1, 1, 'M???t g??? s???i gh??p , ch??n kim lo???i', 'B??n ??n Tuscany ph?? h???p v???i nhi???u kh??ng gian ph??ng ??n kh??c nhau. Thi???t k??? ????n s???c v?? ???????ng n??t tinh t??? t???o ra m???t m???u b??n ??n trang nh??, ?????c bi???t m???t b??n thi???t k??? nh??? g???n l?? m???t s??? ph?? h???p ho??n h???o cho nh???ng ng??i nh?? nh???.', 'D2000 - R1000 - C770 mm', NULL, 'CTGY2', NULL, NULL, NULL, '', '', '');
 

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY2_PRO03', 'B??n ??n g??? Miami 1m2', 8300000, 'CTGY2_PRO03 (1).jpg', 'CTGY2_PRO03 (2).jpg', '', 1, 1, 'G??? s???i t??? nhi??n + MDF ch???ng ???m', 'B??n ??n Miami ???????c l??m ch??nh t??? v??n MDF ch???ng ???m cao c???p, ph???n d?????i ???????c l??m t??? g??? S???i tr???ng nh???p kh???u t??? M??? t???o n??n s??? ch???c ch???n cho s???n ph???m. ????y l?? s??? l???a ch???n ho??n h???o cho kh??ng gian ph??ng ??n mang ?????m phong c??ch B???c ??u.', 'D1200 - R800 - C760 mm', NULL, 'CTGY2', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY2_PRO04', 'B??n ??n Tr??n Tague g???', 13260000, 'CTGY2_PRO04 (1).jpg', 'CTGY2_PRO04 (2).jpg', '', 1, 1, 'G??? Mahogany - MDF Veneer Mahogany', 'B??n ??n trong Tague ???????c l??m t??? g??? Mahogany, l?? m???t lo???i g??? t???t v???i gi?? th??nh c???nh tranh ????? thi???t k??? nh???ng s???n ph???m n???i th???t b???n ?????p v?? ???????c r???t nhi???u ng?????i ??a chu???ng. Thi???t k??? c???a b??n ??n tr??n Tague t???o n??n s??? g???n g??i, v???a c?? th??? th?????ng th???c nh???ng m??n ??n tr??n chi???c b??n, v???a c?? th??? trang tr?? cho kh??ng gian nh?? b???p c???a m???i gia ????nh.', '??1200 - C750 mm', NULL, 'CTGY2', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY2_PRO05', 'B??? b??n ??n Skagen 6 ch???', 22490000, 'CTGY2_PRO05 (1).jpg', 'CTGY2_PRO05 (2).jpg', '', 1, 1, 'G??? cao su + MDF Veneer Walnut + V???i - nh???p kh???u Malaysia', 'B??? b??n ??n Skagen k??m 6 gh??? d??nh cho nh???ng c??n h??? c?? kh??ng gian ph??ng ??n v???a ph???i. Ki???u d??ng hi???n ?????i v?? thanh m???nh c??ng ch??n g??? tr??m v???ng ch???c t???o ra kh??ng gian sang tr???ng nh??ng v???n ???m c??ng v???i tone g??? m??u n??u ?????m. Skagen l?? l???a ch???n ho??n h???o cho nh???ng ph??ng ??n mang phong c??ch B???c ??u.', 'D1600 x R900 x C750 / D540 x R540 x C800 mm', NULL, 'CTGY2', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY2_PRO06', 'B??? b??n ??n Tristan Belfast 6 ch??? v???i x??m', 22490000, 'CTGY2_PRO06 (1).jpg', 'CTGY2_PRO06 (2).jpg', 'CTGY2_PRO06 (3).jpg', 1, 1, 'G??? - MDF VENEER ASH - N???m b???c v???i', '', 'D1600-R900-C750 / D540-R485-C830 mm', NULL, 'CTGY2', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY2_PRO07', 'B??? b??n ??n Tristan Belfast 6 ch??? v???i ?????', 22490000, 'CTGY2_PRO07 (1).jpg', 'CTGY2_PRO07 (2).jpg', 'CTGY2_PRO07 (3).jpg', 1, 1, 'G??? - MDF VENEER ASH - N???m b???c v???i', '', 'D1600-R900-C750 / D540-R485-C830 mm', NULL, 'CTGY2', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY2_PRO08', 'B??n ??n 1m6 Elegance m??u ??en', 44930000, 'CTGY2_PRO08 (1).jpg', 'CTGY2_PRO08 (2).jpg', '', 1, 1, 'G??? Ash (t???n b??) ?????c t??? nhi??n nh???p kh???u t??? M???', 'B??n ??n Elegance v???i thi???t k??? truy???n th???ng t??? g??? t???n b?? v???i c??ch ch??? t???o ?????c bi???t gi??p th??n b??n nh??? nh??ng nh??ng v???n v?? c??ng v???ng ch???c. C??c g??c ???????c bo tr??n m???m m???i ?????ng b??? v???i c???m h???ng b??? s??u t???p. M???t b??n b??n ???????c ch?? ?? v???i c??c ???????c ?????m tr??nh va ?????p gi???a gh??? v?? th??n b??n. B??n c?? 2 k??ch th?????c l?? 1m6 v?? 1m8 d??? d??ng l???a ch???n ????? ph?? h???p v???i kh??ng gian.d??ng c???a gh???. Gh??? Elegance g???i l??n v??? ?????p c???a m???t n??? v?? c??ng chuy??n nghi???p v???i s??? thanh l???ch, sang tr???ng v?? ?????y quy???n r??.', 'D1600 - R850 - C710 mm', NULL, 'CTGY2', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY2_PRO09', 'B??n ??n 1m8 Elegance m??u t??? nhi??n', 49250000, 'CTGY2_PRO09 (1).jpg', 'CTGY2_PRO09 (2).jpg', '', 1, 1, 'G??? Ash (t???n b??) ?????c t??? nhi??n nh???p kh???u t??? M???', 'B??n ??n Elegance v???i thi???t k??? truy???n th???ng t??? g??? t???n b?? v???i c??ch ch??? t???o ?????c bi???t gi??p th??n b??n nh??? nh??ng nh??ng v???n v?? c??ng v???ng ch???c. C??c g??c ???????c bo tr??n m???m m???i ?????ng b??? v???i c???m h???ng b??? s??u t???p. M???t b??n b??n ???????c ch?? ?? v???i c??c ???????c ?????m tr??nh va ?????p gi???a gh??? v?? th??n b??n. B??n c?? 2 k??ch th?????c l?? 1m6 v?? 1m8 d??? d??ng l???a ch???n ????? ph?? h???p v???i kh??ng gian.d??ng c???a gh???. Gh??? Elegance g???i l??n v??? ?????p c???a m???t n??? v?? c??ng chuy??n nghi???p v???i s??? thanh l???ch, sang tr???ng v?? ?????y quy???n r??.', 'D1800 - R850 - C710 mm', NULL, 'CTGY2', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY2_PRO10', 'B??n ??n g??? Bridge 1m8', 54890000, 'CTGY2_PRO10 (1).jpg', 'CTGY2_PRO10 (2).jpg', 'CTGY2_PRO10 (3).jpg', 1, 1, 'G??? s???i ?????c m??u n??u t??? nhi??n nh???p kh???u t??? M???', 'B??n ??n g??? Bridge ???????c thi???t k??? ?????c bi???t t??? g??? s???i ?????c. Ki???u d??ng t???i gi???n v???i nh???ng n??t cong m???m m???i, ???????c x??? l?? tinh x???o mang t??nh th??? c??ng cao mang l???i s??? tinh t???, sang tr???ng cho kh??ng gian. M??u s???c v?? v??n g??? c???a Bridge ???????c ch???n l???a k??? l?????ng ch??nh l?? ??i???m ?????c s???c trong thi???t k??? b??n ??n Bridge n??i ri??ng v?? nh???ng thi???t k??? c??ng BST n??i chung.', 'D1800 - R850 - C720 mm', NULL, 'CTGY2', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY20_PRO001', 'G???i Cutie polyester ????? 44??41 76896', 1050000, 'GOI-CUTIE-POLYESTER-RED-44x41-76896-768x495jpg', 'GOI-CUTIE-POLYESTER-RED-44x41-76896-1-768x495.jpg', '', 1, 1, 'nh???i n???m b???c v???i', '', 'D440 - R410 - C120 mm', NULL, 'CTGY20', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY20_PRO002', 'G???i AROMATIC Khuynh di???p 70X50 Colmol', 2900000, 'goi_colmol_khuynh_diep_eucalyptus_jpg-768x461.jpg', '', '', 1, 1, 'V???i, foam', 'G???i colmol ???????c l??m t??? ph???n m??t ghi nh??? b??n trong v?? ???????c ph??? ngo??i l???p v???i m???n. K???t h???p c??ng tinh d???u gi??p mang l???i c???m gi??c ??m ??i, n??ng niu ph???n ?????u v?? c??? cho gi???c ngu s??u v?? d??? ch???u', 'D700 - R500 - C140 mm', NULL, 'CTGY20', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY20_PRO003', 'G???i Kuscino CS7227 C', 2070000, 'Goi-Kuscino-CS7227-C-768x511.jpg', 'Goi-Kuscino-CS7227-C-2-768x495.jpg', '', 1, 1, 'V???i polyester', 'G???i Kuscino CS7227 C kh??ng ch??? ???????c may t??? m??? t??? v???i polyester ?????c t??nh m???m, ????? ????n h???i t???t h???n ch??? b??? x???p trong qu?? tr??nh s??? d???ng ho???c v??? sinh m?? c??n c?? h???a ti???t sinh ?????ng mang t??ng m??u h???ng d??? th????ng, n??? t??nh. G???i Kuscino ???????c ?????n l???p b??ng m???m c?? th??? l??m g???i ng??? hay t???a l??ng ??em ?????n cho b???n s??? tho???i m??i, th?? gi??n sau m???t ng??y d??i h???c t???p hay l??m vi???c m???t m???i.', 'D450 - R450 - C150 mm', NULL, 'CTGY20', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY20_PRO004', 'G???i Stowe v???i S6Q', 4100000, 'Goi-Stowe-vai-S6Q-768x511.jpg', 'Goi-Stowe-vai-S6Q-1-768x495.jpg', '', 1, 1, 'V???i trang tr?? m??u ??en/tr???ng', 'G???i Stowe v???i S6Q s??? d???ng v???i trang tr?? m??u ??en/tr???ng c?? d???ng h??nh vu??ng, v???i ru???t g???i ???????c l??m t??? g??n c??ng nghi???p t???o s??? c??n ph???ng cho g???i ?????ng th???i mang l???i c???m gi??c tho???i m??i cho ng?????i d??ng. G???i Stowe s??? h???u nhi???u h???a ti???t ??em ?????n nhi???u s??? l???a ch???n cho b???n c?? th??? ???ng d???ng l??m g???i trang tr?? sofa, g???i t???a l??ng, g???i n???m, ???', 'D480-R480 mm', NULL, 'CTGY20', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY20_PRO005', 'G???i Stowe v???i S6S', 6170000, 'Goi-Stowe-vai-S6S-768x511.jpg', 'Goi-Stowe-vai-S6S-1-768x495.jpg', '', 1, 1, 'V???i trang tr?? m??u x??m', 'G???i Stowe v???i S6S s??? d???ng v???i trang tr?? m??u x??m c?? d???ng h??nh vu??ng, v???i ru???t g???i ???????c l??m t??? g??n c??ng nghi???p t???o s??? c??n ph???ng cho g???i ?????ng th???i mang l???i c???m gi??c tho???i m??i cho ng?????i d??ng. G???i Stowe s??? h???u nhi???u h???a ti???t ??em ?????n nhi???u s??? l???a ch???n cho b???n c?? th??? ???ng d???ng l??m g???i trang tr?? sofa, g???i t???a l??ng, g???i n???m, ???', 'D480 - R480 mm', NULL, 'CTGY20', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY20_PRO006', 'G???i Stowe v???i SR3', 6170000, 'Goi-Stowe-vai-SR3.jpg', 'Goi-Stowe-vai-SR3-1.jpg', '', 1, 1, 'V???i trang tr?? m??u xanh l??', 'G???i Stowe v???i SR3 s??? d???ng v???i trang tr?? m??u xanh l?? c?? d???ng h??nh vu??ng, v???i ru???t g???i ???????c l??m t??? g??n c??ng nghi???p t???o s??? c??n ph???ng cho g???i ?????ng th???i mang l???i c???m gi??c tho???i m??i cho ng?????i d??ng. G???i Stowe s??? h???u nhi???u h???a ti???t ??em ?????n nhi???u s??? l???a ch???n cho b???n c?? th??? ???ng d???ng l??m g???i trang tr?? sofa, g???i t???a l??ng, g???i n???m, ???', 'D480 - R480 mm', NULL, 'CTGY20', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY20_PRO007', 'G???i linen th??u tim 38103J', 6200000, '63919_goi_linen_theu_tim_l.jpg', '', '', 1, 1, 'V???i trang tr?? m??u xanh l??', '', 'D450 - C450mm', NULL, 'CTGY20', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY20_PRO008', 'G???i trang tr?? m??u v??ng', 3900000, '500-68339-nha-xinh-hang-trang-tri-goi2.jpg', '', '', 1, 1, 'V???i cotton cao c???p', '', 'D400 - R400', NULL, 'CTGY20', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY21_PRO001', 'G????ng Bords', 9460000, 'Guong-Bords-3105667-3-768x454.jpg', 'Guong-Bords-3105667-2-768x511.jpg', '', 1, 1, 'Kim lo???i, k??nh', '', 'R750 - C1250 mm', NULL, 'CTGY21', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY21_PRO002', 'Khung g????ng Metal Diamond 87X77-148699C', 5500000, 'guong-3-101598-768x511.jpg', '', '', 1, 1, 'khung kim lo???i, k??nh', '', 'D870 - C770 mm', NULL, 'CTGY21', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY21_PRO003', 'Khung g????ng Rect Wood-96976J', 9300000, 'guong-3-101656-768x511.jpg', '', '', 1, 1, 'khung g??? - k??nh th???y', '', 'D500 - C800 mm', NULL, 'CTGY21', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY21_PRO004', 'Khung g????ng Jet Set Oval Gold', 8900000, 'khung-guong-jetset-oval-gold-768x511.jpg', '', '', 1, 1, 'MDF s??n m??u gold +K??nh th???y', '', 'D630 - R35 - C930 mm', NULL, 'CTGY21', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY21_PRO005', 'G????ng soi Shapes', 30500000, 'guong-soi-83009k-1000-768x511.jpg', 'guong-soi-83009k-1-500.jpg', '', 1, 1, 'Khung kim lo???i -k??nh th???y', '', 'D1100 - R100 - C1300 mm', NULL, 'CTGY21', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY21_PRO006', 'Khung g????ng treo t?????ng Thousand square', 26400000, 'guong-3-89377-768x511.jpg', '', '', 1, 1, 'Khung kim lo???i -k??nh th???y', '', 'D650 - C1040 mm', NULL, 'CTGY21', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY21_PRO007', 'Khung g????ng Metal', 2500000, 'guong-3-101631.jpg', '', '', 1, 1, 'Khung kim lo???i -k??nh th???y', '', '420 - 120 -700 mm', NULL, 'CTGY21', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY21_PRO008', 'G????ng soi trang tr?? ????n Led', 6500000, '81178-guong-hinh-chu-nhat-infinity-led-80x60cm.jpg', '', '', 1, 1, 'khung kim lo???i -k??nh th???y', '', 'D800 - R600 mm', NULL, 'CTGY21', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY22_PRO001', 'Gi?????ng H???c K??o Iris 1M8 V???i Belfast 41', 15600000, 'giuong_iris_1m6_stone3.jpg', 'phong-ngu-giuong-hoc-keo-iris-3-768x512.jpg', '', 1, 1, 'Khung g??? MFC b???c v???i - 4 h???c k??o', '', 'D2000 - R1800 - C1112 mm', NULL, 'CTGY22', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY22_PRO002', 'Gi?????ng h???c k??o Penny 1m6 v???i stone', 14630000, 'giuong-penny-boc-vai-1m6-1m8-768x513.jpg', 'giuong-penny4-768x511.jpg', '', 1, 1, 'Khung g??? MFC, b???c v???i m??u stone', 'Gi?????ng h???c k??o Penny 1m6 taupe v???i ??i???m n???i b???t l?? b???n ng??n ch???a ????? r???ng thu???n ti???n c???t nh???ng v???t d???ng trong ph??ng ng??? nh?? g???i, m???n, drap h???t s???c g???n g??ng. Ch???c ch???n s??? l?? s??? l???a ch???n t???i ??u cho kh??ng gian ph??ng ng??? hi???n ?????i. Gi?????ng h???c k??o Penny c?? 2 k??ch th?????c 1m6 v?? 1m8, ??a d???ng m??u s???c.', 'D2000 - R1600 - C1110', NULL, 'CTGY22', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY22_PRO003', 'Gi?????ng ng??? Miami 1m8 b???c v???i Dolce 150', 20900000, 'GIUONG-MIAMI-1M8-VAI-DOLCE-150-768x511.jpg', 'GIUONG-MIAMI-1M8-VAI-DOLCE-094-3106032-1-768x543.jpg', '', 1, 1, 'G??? s???i t??? nhi??n - MDF ch???ng ???m - v???i cao c???p', 'Gi?????ng ng??? b???c v???i Miami s??? d???ng g??? S???i tr???ng nh???p kh???u t??? M??? k???t h???p MDF ch???ng ???m cao c???p t???o n??n s??? ch???c ch???n cho s???n ph???m. Nh??? v??o tone ???m c???a g???, gi?????ng Miami mang ?????n m???t s??? h??i h??a, ?????c tr??ng c???a phong c??ch n???i th???t B???c ??u.', 'D2000- R1800- C1210 mm', NULL, 'CTGY22', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY22_PRO004', 'Gi?????ng Moon 1m6 m??u cam KD1097-14', 19900000, 'GIUONG-MOON-1M6-MAU-CAM-KD1097-14-768x511.jpg', '', '', 1, 1, 'Ch??n inox m??? PVD , b???c v???i cao c???p', '', 'D2000 - R1600 - C1050 mm', NULL, 'CTGY22', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY22_PRO005', 'Gi?????ng Moon 1m6 m??u xanh KD1097-23', 19900000, 'GIUONG-MOON-1M6-MAU-XANH-KD1097-23-768x511.jpg', '', '', 1, 1, 'Ch??n inox m??? PVD , b???c v???i cao c???p', '', 'D2000 - R1600 - C1050 mm', NULL, 'CTGY22', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY22_PRO006', 'Gi?????ng ng??? b???c da M??y 1m6 Fango', 28830000, 'giuong-may-xam2-768x511.jpg', 'nhaxinh-phong-ngu-may-2012103-768x511.jpg', '', 1, 1, 'G??? Acacia (Tr??m)- M??y t??? nhi??n- Da t??? nhi??n cao c???p- Ch??n b???c inox m??? gold', '', 'D2000- R1600- C1000 mm', NULL, 'CTGY22', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY22_PRO007', 'Gi?????ng ng??? b???c v???i Pio 1M6 VACT6171/VACT4400', 25000000, 'GIUONG-PIO-1M6-VAI-VACT6171-VACT4400-768x511.jpg', '', '', 1, 1, 'G??? Beech, b???c v???i cao c???p', 'Gi?????ng ng??? b???c v???i Pio 1M6 VACT6171/VACT4400 ???????c thi???t k??? b???c v???i ho??n to??n v???i khung g??? beech ch???c ch???n. Nh???ng chi ti???t nh???n nh?? t???i ?????u gi?????ng, g???i ?????u gi?????ng gi??p n?? tr??? n??n l??? m???t v?? ???n t?????ng. S??? d???ng ch??n thon g???n gi??p ph??ng ng??? c???a b???n tr??? n??n th??ng tho??ng v?? thanh l???ch h??n. Gi?????ng Pio l?? m???t l???a ch???n s??ng gi?? cho kh??ng gian ph??ng ng??? B???c ??u- Hi???n ?????i, v???i 2 k??ch th?????c l???a ch???n: 1m6, 1m8, c?? c??c m??u v???i kh??c nhau ????? l???a ch???n.', 'D2000- R1600- C1000 mm', NULL, 'CTGY22', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY22_PRO008', 'Gi?????ng Osaka 1m8 da cognac', 62000000, 'Giuong-Osaka-1M8-Da-Cognac-3105903-768x511.jpg', '', '', 1, 1, 'Khung g??? b???c da b?? t??? nhi??n cao c???p', '', 'D2000 - R1800 - C1100 mm', NULL, 'CTGY22', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY23_PRO01', 'B???ng treo ch??a kh??a', 409000, '78723-bang-treo-chia-khoa-600x400.jpg', '', '', 1, 1, 'G??? MDF s??n x??m, M??c kim lo???i', '', 'D400 - R10 - C200 mm', NULL, 'CTGY23', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY23_PRO02', 'B??? 2 chu??ng chim g???m tr???ng', 949000, '70311-chuong-gom-hinh-chim-trang.jpg', '', '', 1, 1, 'G???m s???', '', 'D120 - R60 - C170 mm', NULL, 'CTGY23', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY23_PRO03', 'B??? 2 t?????ng ch???n s??ch Bookend h??nh ?????u ng???a ????? ??en', 1420000, 'Bo-2-tuong-chan-sach-hinh-dau-ngua.jpg', '', '', 1, 1, 'Kim lo???i, Nh???a', '', 'D175-R135-C270 mm', NULL, 'CTGY23', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY23_PRO04', 'Ch??? Love trang tr?? Alu nh??m m??u tr???ng b???c S2', 1170000, 'Chu-love-trang-tri-Alu-bookend-nickel-S2-41646.jpg', '', '', 1, 1, 'Nh??m', '', 'D130-R90-C130 mm', NULL, 'CTGY23', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY23_PRO05', 'Ch??? Read trang tr?? Alu nh??m m??u tr???ng b???c 41092', 1170000, 'Chu-trang-tri-Read-Alu-bookend-nickel-S2-41092.jpg', '', '', 1, 1, 'Nh??m', '', 'D125-R90-C130 mm', NULL, 'CTGY23', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY23_PRO06', 'Khay ch??? nh???t c?? Koi', 2916000, 'Khay-chu-nhat-Ca-Koi-KHAY02010084.jpg', 'Khay-chu-nhat-Ca-Koi-KHAY02010084-1.jpg', '', 1, 1, '100% MDF s??n m??i', '', 'D250-R400-C45 mm', NULL, 'CTGY23', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY23_PRO07', 'Khay ch??? nh???t v???y r???ng', 2916000, 'Khay-chu-nhat-Vay-Rong-KHAY02010086.jpg', 'Khay-chu-nhat-Vay-Rong-KHAY02010086-1.jpg', 'Khay-chu-nhat-Vay-Rong-KHAY02010086-3.jpg', 1, 1, '100% MDF s??n m??i', '', 'D250-R400-C45 mm', NULL, 'CTGY23', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY23_PRO08', 'Khay tr??n hoa l??', 2916000, 'Khay-tron-Hoa-La-KHAY02010064-600x387.jpg', 'Khay-tron-Hoa-La-KHAY02010064-1.jpg', 'Khay-tron-Hoa-La-KHAY02010064-3.jpg', 1, 1, '100% MDF s??n m??i', '', '??350-C45 mm', NULL, 'CTGY23', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY23_PRO09', 'Xe ?????p trang tr??', 710000, 'Xe-dap-iron-wood-Blk-brown-53989.jpg', '', '', 1, 1, 'Kim lo???i', '', 'D477-R135-C255 mm', NULL, 'CTGY23', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY23_PRO10', 'K??nh vi???n v???ng trang tr?? Binocular', 1840000, 'Kinh-vien-vong-trang-tri-Binocular-51474.jpg', '', '', 1, 1, 'Kim lo???i, Da', '', 'D125-R115-C295 mm', NULL, 'CTGY23', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY24_PRO01', 'Hoa lan tr???ng 54 cm', 7760000, 'Hoa-lan-trang-54cm-396442.jpg', 'Hoa-lan-trang-54cm-396442-1.jpg', 'Hoa-lan-trang-54cm-396442-1-3.jpg', 1, 1, 'Nh???a', '', 'D510 - R140 - C540 mm', NULL, 'CTGY24', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY24_PRO02', 'Hoa treo t?????ng Capucine', 3750000, 'Hoa-treo-tuong-Capucine.jpg', '', '', 1, 1, '', '', 'D570 - R830 mm', NULL, 'CTGY24', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY24_PRO03', 'Hoa treo t?????ng Orchid Gold', 5170000, 'Hoa-treo-tuong-Orchid-Gold-3105861.jpg', 'Hoa-treo-tuong-Orchid-Gold-3105861-3.jpg', 'Hoa-treo-tuong-Orchid-Gold-3105861-4.jpg', 1, 1, 'Nh???a', '', 'D400 - R120 - C440 mm', NULL, 'CTGY24', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY24_PRO04', 'Ch???u hoa pivoine gloria ??? h???ng nh???t', 2500000, 'hoa-pivoine-gloria-pot.jpg', '', '', 1, 1, 'Nh???a t???ng h???p', '', 'H460 mm', NULL, 'CTGY24', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY24_PRO05', 'Ch???u hoa pivoine gloria', 2500000, 'hoa-pivoine-gloria-pot-2.jpg', '', '', 1, 1, 'Nh???a t???ng h???p', '', 'H460 mm', NULL, 'CTGY24', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY24_PRO06', 'Ch???u Lanvender', 530000, 'hoa-3-101614.jpg', '', '', 1, 1, '', '', 'H280 mm', NULL, 'CTGY24', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY24_PRO07', 'Ch???u Lanvender PURP 8.5??28-2571J', 530000, 'hoa-3-101615.jpg', '', '', 1, 1, '', '', '??85-H280 mm', NULL, 'CTGY24', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY24_PRO08', 'C??y Bayleaf Ball+Trunk+Pot', 7400000, 'cay-bayleaf-ball-trunk-pot-91511.jpg', '', '', 1, 1, 'Nh???a t???ng h???p', '', 'C180CM', NULL, 'CTGY24', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY24_PRO09', 'C??y cam 80CM', 3590000, '00066-1000.jpg', '', '', 1, 1, 'Nh???a t???ng h???p', '', '??160-C700 mm', NULL, 'CTGY24', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY24_PRO10', 'B??nh hoa x????ng r???ng trang tr??', 450000, '29551-chau-xuong-rong.jpg', '', '', 1, 1, 'Nh???a', '', 'R110 - C140 mm', NULL, 'CTGY24', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY25_PRO01', 'K??? s??ch Cabo', 16300000, 'KE-CABO-1400x400x1760-PMA732007.jpg', 'KE-CABO-1400x400x1760-PMA732007-1.jpg', '', 1, 1, 'MDF veneer walnut, Khung kim lo???i m??u gold', 'K??? s??ch Cabo ???????c c???u t???o t??? khung kim lo???i m??u gold sang tr???ng, s??? k???t h???p gi???a g???,v?? kim lo???i v??ng b??ng. ?????c bi???t nh???ng n??t bo vi???n trong t???ng chi ti???t t??? m??? kh??o l??o t???o ra ??i???m nh???n ri??ng bi???t ?????c ????o t???o kh??ng gian tr??ng b??y ?????m ch???t v??n h???c cho nh???ng ai y??u th??ch ?????c s??ch l?? ??i???m nh???n s??ng gi?? cho kh??ng gian l??m vi???c c???a b???n.', 'D1400 - R400 - C1760 mm', NULL, 'CTGY25', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY25_PRO02', 'K??? s??ch Osaka', 19900000, 'ke-sach-osaka-3101900.jpg', 'ke-sach-osaka-3-101900.jpg', 'ke-sach-osaka-3101900-1.jpg', 1, 1, 'G??? Oak, MDF veneer Oak, Inox 304 m??u gold', '', 'D830 - R450 - C1900 mm', NULL, 'CTGY25', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY25_PRO03', 'K??? s??ch Glamour m??u tr???ng', 25240000, '61148_ke_sach_glamour_mau_trang_l2.jpg', 'phong-khach-hien-dai-roma4.jpg', '', 1, 1, 'G??? x?? c??? (Mahogany), G??? ??p, G??? l???ng', 'K??? c?? nhi???u ng??n chia ???????c ??i???m th??m b???i c??c khu??ng r???ng v???i nhi???u k??ch th?????c kh??c nhau t???o s??? thu h??t m???i l???', 'D2440 - R330 - C2075 mm', NULL, 'CTGY25', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY25_PRO04', 'K??? S??ch Artigo', 29360000, 'nha-xinh-ke-sach-cico.jpg', 'nha-xinh-ke-sach-chio-hinh_lifestyle.jpg', '', 1, 1, 'G??? S???i k???t h???p MDF veneer, Ch??n th??p s??n t??nh ??i???n', 'Th????ng hi???u Ph??p Gautier.', 'D850 - R380 - C1980 mm', NULL, 'CTGY25', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY25_PRO05', 'K??? S??ch Brem M??u Tr???ng', 25430000, 'nha-xinh-ke-sach-bem.jpg', 'nha-xinh-ke-sach-bem-500.jpg', '', 1, 1, 'MFC s??n lacquer', 'L?? d??ng s???n ph???m cao c???p nh???p kh???u t??? Ph??p. K??? s??ch Brem s??? d???ng v???t li???u MFC cao c???p ch???ng ???m, ?????t chu???n an to??n ch??u ??u, ho??n thi???n s??n lacquer. Ph???n k??? k??nh c?????ng l???c 10mm c?? th??? ??i???u ch???nh ????? cao t??y ??. C?? th??? k???t h???p v???i ????? n???i th???t kh??c t???o th??nh v??ch ng??n m??? cho kh??ng gian.', 'D800-R430-C2000 mm', NULL, 'CTGY25', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY25_PRO06', 'K??? s??ch Division P94 White', 37010000, 'ke-sach-division-3-72809.jpg', 'ke-sach-division-3-72809-1-1.jpg', '', 1, 1, 'MDF s??n lacquer tr???ng', '', 'D735 - R300 - C1975 mm', NULL, 'CTGY25', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY25_PRO07', 'K??? s??ch Division Nougat', 47319000, 'ke-sach-division-3-89499.jpg', 'ke-sach-division-3-89499-1-1.jpg', '', 1, 1, 'MDF s??n', '', 'D985 - R300 - C1975 mm', NULL, 'CTGY25', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY25_PRO08', 'K??? s??ch Division B2 White', 27320000, 'ke-sach-division-3-89465.jpg', 'ke-sach-division-3-89465-1-1.jpg', '', 1, 1, 'MDF s??n lacquer tr???ng', '', 'D985- R300 - C1005 mm', NULL, 'CTGY25', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY25_PRO09', 'K??? S??ch Hangar Gr Black H200', 67890000, 'KE-SACH-HANGAR-GR-BLACK-H200-2.jpg', 'KE-SACH-HANGAR-GR-BLACK-H200-3.jpg', '', 1, 1, 'Kim Lo???i S??n M??u ??en, Mdf Veneer Ask M??u ??en', '', 'D1130-R400-C2000mm', NULL, 'CTGY25', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY25_PRO10', 'K??? treo Inside Taupe', 11959000, 'ke-treo-3-80442.jpg', 'ke-treo-3-80442-1-1.jpg', '', 1, 1, 'MDF s??n lacquer m??u Taupe', '', 'D800 - R280 - C400 mm', NULL, 'CTGY25', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY26_PRO01', 'K??? trang tr?? Eden', 21510000, 'ke_trang_tri_eden.jpg', '', '', 1, 1, 'Kim lo???i m??u gold, K??nh', '', 'D1400-R400-C2000 mm', NULL, 'CTGY26', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY26_PRO02', 'K??? kim lo???i ??en 6 t???ng', 16690000, 'ke-sach-78459j-1000.jpg', '', '', 1, 1, 'Kim lo???i', '', 'D1010 - R390 - C1850 mm', NULL, 'CTGY26', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY26_PRO03', 'K??? t???p ch?? m??u n??u g??? W60', 6060000, 'Ke-tap-chi-brown-Lth-ette-ba-W60-58890.jpg', '', '', 1, 1, 'Da t???ng h???p, Kim lo???i', '', 'D600-R410-C515 mm', NULL, 'CTGY26', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY26_PRO04', 'K??? Hangar cao', 67890000, '82552-1000x666-1.jpg', 'ke-hangar-cs6055gr.jpg', '', 1, 1, 'Kim lo???i s??n m??u ??en, MDF veneer', '', 'D1130-R400-C2000', NULL, 'CTGY26', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY26_PRO05', 'K??? Hangar Ash', 32474000, 'ke-hangar-3-88106.jpg', 'ke-hangar-3-88106-1-1.jpg', '', 1, 1, 'Kim lo???i s??n m??u tr???ng, MDF s??n tr???ng', '', 'D1130 - R400 - C830 mm', NULL, 'CTGY26', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY26_PRO06', 'K??? trang tr?? h??nh tr??n m??u petrol xanh d????ng', 15830000, 'Ke-trang-tri-hinh-tron-mau-petrol-xanh-duong-1.jpg', 'Ke-trang-tri-hinh-tron-mau-petrol-xanh-duong-2.jpg', '', 1, 1, 'Kim lo???i s??n m??u petrol blue', 'T??? v???t li???u kim lo???i s??n m??u petrol blue, m???u k??? trang tr?? h??nh tr??n m??u petrol xanh d????ng h???p th???i trang mang c???m h???ng m???i m??? cho ph??ng kh??ch l?? m???t s??? l???a ch???n ho??n h???o cho nh???ng gia ????nh th??ch s??u t???m nh???ng m??n ????? trang tr?? ?????p m???t n??n c?? th??? ph?? h???p v???i nhi???u ng?????i.', '??555 - C1460 mm', NULL, 'CTGY26', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY26_PRO07', 'K??? tr??ng b??y Puro- M???t ?????', 25331000, '92651-1000x666-2.jpg', 'calligaris-puro-console2.jpg', '', 1, 1, 'Kim lo???i s??n, K??nh c?????ng l???c', 'Th????ng hi???u Calligaris ??', 'D1000-R300-C850 mm', NULL, 'CTGY26', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY26_PRO08', 'K??? tr??ng b??y PURO Ceramic P7C', 26411000, 'ke-trung-bay-puro.jpg', 'calligaris-puro-console.jpg', '', 1, 1, 'Kim lo???i s??n ??en, m???t ceramic abs', 'Th????ng hi???u Calligaris ??', 'D1000-R300-C850 mm', NULL, 'CTGY26', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY26_PRO09', 'K??? Rack 3 t???ng', 24060000, 'ke-rack-500.jpg', '', '', 1, 1, 'Kim lo???i', '', 'D1800 - R400 - C1800 mm', NULL, 'CTGY26', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY26_PRO10', 'K??? Rack 3 t???ng m??u ??en', 8830000, 'ke-rack-3-tang-500.jpg', '', '', 1, 1, 'Kim lo???i', '', 'D1010 - R390 - C970 mm', NULL, 'CTGY26', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY27_PRO01', 'Khung h??nh c??nh hoa 21??26', 1290000, 'KHUNG-HINH-FRAME-FLOWER-21X26-53570K.jpg', 'KHUNG-HINH-FRAME-FLOWER-21X26-53570K-1.jpg', '', 1, 1, 'Khung nh???a t???ng h???p', '', 'D210 - R20 - C260 mm', NULL, 'CTGY27', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY27_PRO02', 'Khung h??nh d???t polystyrene be s???m 10??15', 260000, 'KHUNG-HINH-WOV-TEX-POLY-DBEI-10X15-23592.jpg', 'KHUNG-HINH-WOV-TEX-POLY-DBEI-10X15-23592-1.jpg', 'KHUNG-HINH-WOV-TEX-POLY-DBEI-10X15-23592-2.jpg', 1, 1, 'Nh???a t???ng h???p', '', 'D160 - R45 - C210 mm', NULL, 'CTGY27', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY27_PRO03', 'Khung h??nh g??? kim tuy???n v??ng 20??25', 190000, 'KHUNG-HINH-20X25-GLIT-WD-GD-L-8122.jpg', 'KHUNG-HINH-20X25-GLIT-WD-GD-L-8122-1.jpg', '', 1, 1, 'G??? c??ng nghi???p', '', 'D220 - R15 - C270 mm', NULL, 'CTGY27', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY27_PRO04', 'Khung h??nh hoa h???ng l??ng m???n 31??26', 1790000, 'KHUNG-HINH-ROMANTIC-ROSE-31X26-53628K.jpg', 'KHUNG-HINH-ROMANTIC-ROSE-31X26-53628K-1.jpg', 'KHUNG-HINH-ROMANTIC-ROSE-31X26-53628K-2.jpg', 1, 1, 'khung nh???a t???ng h???p', '', 'D260 - R32 - C310 mm', NULL, 'CTGY27', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY27_PRO05', 'Tranh ??p hoa kh?? Bonheur L', 1060000, '104266-khung-hinh-bonheur-l.jpg', '', '', 1, 1, 'Khung kim lo???i, V???i canvas', '', 'R82 - C120 mm', NULL, 'CTGY27', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY27_PRO06', 'Khung h??nh Voyage nh???', 690000, '104708-khung-hinh-voyage-s.jpg', '104709-khung-hinh-voyage-L-1.jpg', '', 1, 1, 'G??? c??ng nghi???p, Th???y tinh', '', 'R100 - C150 mm', NULL, 'CTGY27', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY27_PRO07', 'Khung h??nh Chalet l???n', 590000, '104730-khung-hinh-chalet-L.jpg', '104730-khung-hinh-chalet-L-1.jpg', '', 1, 1, 'G??? c??ng nghi???p, Th???y tinh', '', 'R130 - C180 mm', NULL, 'CTGY27', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY27_PRO08', 'Khung h??nh Class 20X25', 510000, 'khung-hinh-3-101636.jpg', '', '', 1, 1, 'Kim lo???i', '', 'R230- C280 mm', NULL, 'CTGY27', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY27_PRO09', 'Khung h??nh trong su???t M', 390000, 'khung-anh-trong-suot-m.jpg', 'khung-anh-trong-suot.jpg', 'khung-anh-trong-suot-1.jpg', 1, 1, 'Kim lo???i', '', 'R200- C250mm', NULL, 'CTGY27', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY27_PRO10', 'Khung h??nh trang tr?? xanh pastel', 1290000, 'photo-art-pastel-blue-1000.jpg', '', '', 1, 1, 'Th???y tinh', '', 'R100 - C150 mm', NULL, 'CTGY27', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY28_PRO01', 'Khung h??nh Anemone 8X10', 7700000, 'Khung-Hinh-Anemone-8X10-175056-Mca-3105047.jpg', 'Khung-Hinh-Anemone-8X10-175056-Mca-3105047-2.jpg', 'Khung-Hinh-Anemone-8X10-175056-Mca-3105047-3.jpg', 1, 1, 'Men tr???ng', '', 'D330 - R266 mm', NULL, 'CTGY28', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY28_PRO02', 'Khung h??nh Olive Bran 5X7 Gold', 5400000, 'Khung-Hinh-Olive-Bran-3106522.jpg', 'Khung-Hinh-Olive-Bran-3106522-3.jpg', 'Khung-Hinh-Olive-Bran-3106522-1.jpg', 1, 1, 'V??ng', '', 'D247 - R203 mm', NULL, 'CTGY28', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY28_PRO03', 'B??nh Calla Lily Rose', 5793000, 'BINH-CALLA-LILY-ROSE-123203-MCA-398648.jpg', 'BINH-CALLA-LILY-ROSE-123203-MCA-398648-2.jpg', 'BINH-CALLA-LILY-ROSE-123203-MCA-398648-4.jpg', 1, 1, 'Th??p kh??ng g???, ?????ng thau t??? nhi??n, Men tr???ng', '', '??120 - C120 mm', NULL, 'CTGY28', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY28_PRO04', 'T?? Olive brand gold', 6775000, 'TO-OLIVE-BRANCH-GOLD-175133-MCA-391934.jpg', '', '', 1, 1, 'Th??p kh??ng g???, ?????ng thau t??? nhi??n, Men ??en', '', 'D270 - R270 - C80 mm', NULL, 'CTGY28', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY28_PRO05', '????a Pomegranate', 2800000, 'Dia-Pomegranate-175222-4.25X5.75Cm-Mca-391947.jpg', 'Dia-Pomegranate-175222-4.25X5.75Cm-Mca-3.jpg', 'Dia-Pomegranate-175222-4.25X5.75Cm-Mca-1.jpg', 1, 1, '?????ng t??? nhi??n', '', 'D146 - R108 - C25 mm', NULL, 'CTGY28', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY28_PRO06', 'B??? dao th???t Golden Ginkgo', 10500000, 'Bo-Dao-Thot-Golden-Ginkgo-3106535.jpg', 'Bo-Dao-Thot-Golden-Ginkgo-3106535-3.jpg', 'Bo-Dao-Thot-Golden-Ginkgo-3106535-4.jpg', 1, 1, '???? hoa, ?????ng t??? nhi??n, Th??p kh??ng g???', '', 'D457 - R254 - C25 mm', NULL, 'CTGY28', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY28_PRO07', 'B??nh Butterfly Ginkgo Small', 8190000, 'Binh-Butterfly-Ginkgo-Small-3105120.jpg', 'Binh-Butterfly-Ginkgo-Small-3105120-2.jpg', 'Binh-Butterfly-Ginkgo-Small-3105120-1.jpg', 1, 1, 'Th??p kh??ng g???, ?????ng t??? nhi??n', '', 'D152 - R139 - C203 mm', NULL, 'CTGY28', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY28_PRO08', 'T?? Butterfly Ginkgo Nut', 9600000, 'To-Butterfly-Ginkgo-Nut-3106539.jpg', 'To-Butterfly-Ginkgo-Nut-3106539-2.jpg', 'To-Butterfly-Ginkgo-Nut-3106539-4.jpg', 1, 1, 'Th??p kh??ng g???, ?????ng t??? nhi??n', '', 'D235 - R215 - C146 mm', NULL, 'CTGY28', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY28_PRO09', 'Gi?? ????? r?????u Anemone Wine', 8190000, 'Gia-Do-Ruou-Anemone-Wine-3106568-6.jpg', 'Gia-Do-Ruou-Anemone-Wine-3106568-7.jpg', 'Gia-Do-Ruou-Anemone-Wine-3106568-1.jpg', 1, 1, '???? hoa c????ng, ?????ng t??? nhi??n, Men tr???ng', '', 'D279 - R114 - C152 mm', NULL, 'CTGY28', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY28_PRO10', 'T?? Mistletoe Prcl Srvg', 14600000, 'To-Mistletoe-Prcl-Srvg-3106561.jpg', 'To-Mistletoe-Prcl-Srvg-3106561-2.jpg', 'To-Mistletoe-Prcl-Srvg-3106561-3.jpg', 1, 1, 'S???, ?????ng t??? nhi??n', '', 'D254 - R228 - C152mm', NULL, 'CTGY28', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY29_PRO01', 'N???m Sen Vi???t 1m6', 11063000, 'nem-lo-xo-tui-senviet-1m6.jpg', 'nem-sen-viet.jpg', 'sen-viet.jpg', 1, 1, 'L?? xo t??i ?????c l???p', 'N???m l?? xo t??i Sen Vi???t. L?? xo b???o h??nh 10 n??m. L?? Xo T??i 7 v??ng ch???ng c??n tr??ng, l??? th??ng h??i tho??ng m??t. N???m l?? xo t??i Sen Vi???t ???????c ra m???t t??? n??m 2017. B???ng tinh th???n s??ng t???o d??n t???c, k???t h???p c??ng c??ng ngh??? s???n xu???t l?? xo t??i, N???m ??u Vi???t ???? t???o ra d??ng s???n ph???m Sen Vi???t v???i nh???ng ???????ng n??t hoa sen Vi???t Nam ???????c ch???m ph?? tr??n m???t n???m v???i mong mu???n truy???n ??i ?? ngh??a ?????o ?????c l???n lao, mang m???t gi?? tr??? th???m m??? v??nh h???ng c???a lo??i hoa ???? th???m s??u v??o t??m h???n d??n t???c. S???n ph???m ???????c nh???ng ?????i t??c l???n ??a chu???ng, tin d??ng v?? ph??n ph???i r???ng kh???p tr??n c??? n?????c.', 'D2000 - R1600 - C250 mm', NULL, 'CTGY28', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY29_PRO02', 'N???m Sen Vi???t 1m8', 12260000, 'nem-lo-xo-tui-senviet-1m6.jpg', 'nem-sen-viet.jpg', 'sen-viet.jpg', 1, 1, 'L?? xo t??i ?????c l???p', 'N???m l?? xo t??i Sen Vi???t. L?? xo b???o h??nh 10 n??m. L?? Xo T??i 7 v??ng ch???ng c??n tr??ng, l??? th??ng h??i tho??ng m??t. N???m l?? xo t??i Sen Vi???t ???????c ra m???t t??? n??m 2017. B???ng tinh th???n s??ng t???o d??n t???c, k???t h???p c??ng c??ng ngh??? s???n xu???t l?? xo t??i, N???m ??u Vi???t ???? t???o ra d??ng s???n ph???m Sen Vi???t v???i nh???ng ???????ng n??t hoa sen Vi???t Nam ???????c ch???m ph?? tr??n m???t n???m v???i mong mu???n truy???n ??i ?? ngh??a ?????o ?????c l???n lao, mang m???t gi?? tr??? th???m m??? v??nh h???ng c???a lo??i hoa ???? th???m s??u v??o t??m h???n d??n t???c. S???n ph???m ???????c nh???ng ?????i t??c l???n ??a chu???ng, tin d??ng v?? ph??n ph???i r???ng kh???p tr??n c??? n?????c.', 'D2000 - R1800 - C250 mm', NULL, 'CTGY29', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY29_PRO03', 'N???m Luxury Golden Black 1m6', 47130000, 'nem-luxury-golden-black5.jpg', 'nem-luxury-golden-black3.jpg', 'nem_eco_ruby-_col_15.jpg', 1, 1, 'Khung l?? xo t??i mousse, V???i', 'N???m Luxury Golden Black v???i c???u t???o h??ng tri???u h???t gel ???????c th???m v??o n???m, ???????c thi???t k??? ????? l??m gi???m nhi???t v?? gi??p b???n m??t m??? su???t ????m. C??c h???t c??ng l??m t??ng m???t ????? c???a b???t l??m cho n?? th??m b???n. C??c l???i ??ch b??? sung bao g???m ph???c h???i nhanh h??n sau m???t m???i c??ng nh?? c???i thi???n n??ng l?????ng khi th???c d???y. N???m Colmol ???????c nh???p kh???u t??? B??? ????o Nha- l?? th????ng hi???u n???m n???i ti???ng t??? n??m 1972. H??? th???ng l?? xo SSI l?? vi???t t???t c???a h??? th???ng SUSPENSION ?????c l???p v???i cu???n d??y b??? t??i. Colmol c?? th??? cu???n b???t k??? lo???i n???m n??o - bao g???m l?? xo t??i - ????? t???i ??u h??a chi ph?? v???n chuy???n giao h??ng. S??? d???ng c??c v???t li???u h???u c?? t???t nh???t, ???????c ki???m so??t, x??c minh, v?? t???t c??? c??c qu?? tr??nh ?????u ???????c ki???m tra trong h??? th???ng ki???m so??t ch???t l?????ng.', 'D2000 - R1600 - C280 mm', NULL, 'CTGY28', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY29_PRO04', 'N???m Luxury Golden Black 1m8', 55970000, 'nem-luxury-golden-black5.jpg', 'nem-luxury-golden-black3.jpg', 'nem_eco_ruby-_col_15.jpg', 1, 1, 'Khung l?? xo t??i mousse, V???i', 'N???m Luxury Golden Black v???i c???u t???o h??ng tri???u h???t gel ???????c th???m v??o n???m, ???????c thi???t k??? ????? l??m gi???m nhi???t v?? gi??p b???n m??t m??? su???t ????m. C??c h???t c??ng l??m t??ng m???t ????? c???a b???t l??m cho n?? th??m b???n. C??c l???i ??ch b??? sung bao g???m ph???c h???i nhanh h??n sau m???t m???i c??ng nh?? c???i thi???n n??ng l?????ng khi th???c d???y. N???m Colmol ???????c nh???p kh???u t??? B??? ????o Nha- l?? th????ng hi???u n???m n???i ti???ng t??? n??m 1972. H??? th???ng l?? xo SSI l?? vi???t t???t c???a h??? th???ng SUSPENSION ?????c l???p v???i cu???n d??y b??? t??i. Colmol c?? th??? cu???n b???t k??? lo???i n???m n??o - bao g???m l?? xo t??i - ????? t???i ??u h??a chi ph?? v???n chuy???n giao h??ng. S??? d???ng c??c v???t li???u h???u c?? t???t nh???t, ???????c ki???m so??t, x??c minh, v?? t???t c??? c??c qu?? tr??nh ?????u ???????c ki???m tra trong h??? th???ng ki???m so??t ch???t l?????ng.', 'D2000 - R1800 - C280 mm', NULL, 'CTGY29', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY29_PRO05', 'N???m Olive Infusion 1m6', 32400000, 'nem-olive-infusion2.jpg', 'nem_33.jpg', 'nem_43.jpg', 1, 1, 'Khung l?? xo t??i mousse, V???i', 'N???m Olive Infusion c?? v???i d???u ?? liu, m???m m???i khi ch???m v??o, v?? c?? r???t nhi???u l???i ??ch cho l??n da c???a b???n h???p th??? kho??ng ch???t v?? vitamin. N?? t??ng t???c ????? ch???a l??nh, gi??? ???m cho da, gi??p gi???m s??? xu???t hi???n c???a c??c v???t r???n da, h??? tr??? ph???c h???i ??? c??c v???n ?????ng vi??n v?? l??m m???n da c???a b???n, c?? ?????c t??nh ch???ng l??o h??a. N???m Colmol ???????c nh???p kh???u t??? B??? ????o Nha- l?? th????ng hi???u n???m n???i ti???ng t??? n??m 1972. H??? th???ng l?? xo SSI l?? vi???t t???t c???a h??? th???ng SUSPENSION ?????c l???p v???i cu???n d??y b??? t??i. Colmol c?? th??? cu???n b???t k??? lo???i n???m n??o - bao g???m l?? xo t??i - ????? t???i ??u h??a chi ph?? v???n chuy???n giao h??ng. S??? d???ng c??c v???t li???u h???u c?? t???t nh???t, ???????c ki???m so??t, x??c minh, v?? t???t c??? c??c qu?? tr??nh ?????u ???????c ki???m tra trong h??? th???ng ki???m so??t ch???t l?????ng.', 'D2000 - R1600 - C280 mm', NULL, 'CTGY28', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY29_PRO06', 'N???m Olive Infusion 1m8', 39180000, 'nem-olive-infusion2.jpg', 'nem_33.jpg', 'nem_43.jpg', 1, 1, 'Khung l?? xo t??i mousse, V???i', 'N???m Olive Infusion c?? v???i d???u ?? liu, m???m m???i khi ch???m v??o, v?? c?? r???t nhi???u l???i ??ch cho l??n da c???a b???n h???p th??? kho??ng ch???t v?? vitamin. N?? t??ng t???c ????? ch???a l??nh, gi??? ???m cho da, gi??p gi???m s??? xu???t hi???n c???a c??c v???t r???n da, h??? tr??? ph???c h???i ??? c??c v???n ?????ng vi??n v?? l??m m???n da c???a b???n, c?? ?????c t??nh ch???ng l??o h??a. N???m Colmol ???????c nh???p kh???u t??? B??? ????o Nha- l?? th????ng hi???u n???m n???i ti???ng t??? n??m 1972. H??? th???ng l?? xo SSI l?? vi???t t???t c???a h??? th???ng SUSPENSION ?????c l???p v???i cu???n d??y b??? t??i. Colmol c?? th??? cu???n b???t k??? lo???i n???m n??o - bao g???m l?? xo t??i - ????? t???i ??u h??a chi ph?? v???n chuy???n giao h??ng. S??? d???ng c??c v???t li???u h???u c?? t???t nh???t, ???????c ki???m so??t, x??c minh, v?? t???t c??? c??c qu?? tr??nh ?????u ???????c ki???m tra trong h??? th???ng ki???m so??t ch???t l?????ng.', 'D2000 - R1800 - C280 mm', NULL, 'CTGY29', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY29_PRO07', 'N???m Ion Protect 1m8', 20520000, 'nem-ion-protect-logo.jpg', 'nem-ion-protect-1.jpg', 'nem_eco_ruby-_col_18.jpg', 1, 1, 'L?? xo t??i, V???i ch???ng vi khu???n', 'N???m Ion Protect - m???i ng??y ch??ng ta ?????u ti???p x??c v???i c??c thi???t b??? ??i???n t??? gi???i ph??ng c??c ion d????ng. M??y t??nh, ??i???n tho???i di ?????ng v?? thi???t b??? kh??ng d??y l?? m???t ph???n c???a m??i tr?????ng quanh ch??ng ta. V??? b???o v??? ion tr??n thi???t b??? c???i ti???n n??y ???????c truy???n qua c??ng ngh??? nano v???i h??ng tri???u ion ??m gi??p kh??i ph???c c??n b???ng ion th??ch h???p, ch???ng l??o h??a v?? lo???i b??? vi khu???n, n???m. N?? c?? ?????c t??nh gi???m c??ng th???ng, gi???m m???t m???i v?? ??i???u ch???nh s??? c??n b???ng n???i ti???t t???. N???m Colmol ???????c nh???p kh???u t??? B??? ????o Nha- l?? th????ng hi???u n???m n???i ti???ng t??? n??m 1972. H??? th???ng l?? xo SSI l?? vi???t t???t c???a h??? th???ng SUSPENSION ?????c l???p v???i cu???n d??y b??? t??i. Colmol c?? th??? cu???n b???t k??? lo???i n???m n??o - bao g???m l?? xo t??i - ????? t???i ??u h??a chi ph?? v???n chuy???n giao h??ng. S??? d???ng c??c v???t li???u h???u c?? t???t nh???t, ???????c ki???m so??t, x??c minh, v?? t???t c??? c??c qu?? tr??nh ?????u ???????c ki???m tra trong h??? th???ng ki???m so??t ch???t l?????ng.', 'D2000- R1800- C230 mm', NULL, 'CTGY28', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY29_PRO08', 'T???m t??ng ti???n nghi n???m 1m6', 3086000, 'nemtangitennghi-1m6.jpg', '', '', 1, 1, 'L??ng v?? c??ng nghi???p m???m m???i', '', 'D2000 - R1600 - C70 mm', NULL, 'CTGY29', NULL, NULL, NULL, '', '', '');
 

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY29_PRO09', 'T???m t??ng ti???n nghi n???m 1m8', 3386000, 'nemtangitennghi-1m6.jpg', '', '', 1, 1, 'L??ng v?? c??ng nghi???p m???m m???i', '', 'D2000 - R1800 - C70 mm', NULL, 'CTGY28', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY29_PRO10', 'N???m L??ng C???u 1m6', 18710000, 'nem-long-cuu.png.jpg', '', '', 1, 1, 'L?? xo t??i ?????c l???p, V???i Knitting cao c???p T?? t???m', '', 'D2000 - R1600 - C300 mm', NULL, 'CTGY29', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY3_PRO01', 'B??n b??n Luxury Triangle Champ 84156K
', 9050000, 'BAN-BEN-LUXURY-TRIANGLE-CHAMP-84156K-305583--768x511.jpg', 'BAN-BEN-LUXURY-TRIANGLE-CHAMP-84156K-305583-4-768x511.jpg', '', 1, 1, 'MDF d??n k??nh th???y', '', 'D320 - R320 - C535 mm', NULL, 'CTGY3', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY3_PRO02', 'B??n b??n Luxury Marble 84762K', 9350000, 'Ban-Ben-Luxury-Marble-84762K-3098205-1-768x454.jpg', 'Ban-Ben-Luxury-Marble-84762K-3098205-2-768x454.jpg', '', 1, 1, 'K??nh laminate marble', '', 'D320 - R320 - C535 mm', NULL, 'CTGY3', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY3_PRO03', 'B??n b??n Trento Gold 112314E', 32900000, 'Ban-Ben-Trento-Gold-112314-3105568-768x454.jpg', 'Ban-Ben-Trento-Gold-112314-3105568-1-768x454.jpg', 'Ban-Ben-Trento-Gold-112314-3105568-2-768x454.jpg', 1, 1, 'Khung b???ng v??ng v???i c??c thanh acrylic v?? m???t b??n b???ng k??nh trong su???t.', '', '??500 - C550 mm', NULL, 'CTGY3', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY3_PRO04', 'B??n b??n Victoria h???ng', 15610000, '104745-ban-ben-victoria-pink-1-768x511.jpg', '104745-ban-ben-victoria-pink-3-768x511.jpg', '104745-ban-ben-victoria-pink-4-768x511.jpg', 1, 1, '???? marble, xi m??ng', '', '??410 - C470 mm', NULL, 'CTGY3', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY3_PRO05', 'B??n b??n YK', 13260000, 'ban_ben_yen_khe-768x511.jpg', '', '', 1, 1, 'Slolid oak Ph??p - Inox m???', '', '??420 - C600 mm', NULL, 'CTGY3', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY3_PRO06', 'B??n b??n Bolero', 9720000, 'ban_ben_tron_bolero_99102-768x511.jpg', 'ban_ben_bolero_1-768x511.jpg', '', 1, 1, 'Ch??n inox m??u gold- MDF b???c gi??? da c?? ??u???i (faux shagreen)', 'B??n b??n Bolero c?? k??ch th?????c ho??n h???o cho m???t b??? t??ch tr?? ho???c b??nh hoa trang tr?? th??m sinh ?????ng. K???t c???u ch??n kim lo???i ???????c s??n ph??? l???p nh??? ?????ng nh???, c???ng c??p. V???i m???t b??n ???????c b???c da c?? ??u???i (Simili ) ???????c gh??p th??? c??ng t???ng t???m da, mang n??t ?????c ????o ?????n t???ng chi ti???t. S??? th???t tuy???t n???u b???n l?? t??nh ????? mang phong c??ch MAVERICK.', '??500- C550 mm', NULL, 'CTGY3', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY3_PRO07', 'B??n b??n Maxine', 12660009, '1000-san-pham-nha-xinh_16-768x511.jpg', '1000-round-console-table-86827.jpg', 'phong-khach-maxine5-768x511.jpg', 1, 1, 'Khung g??? Okumi, MDF veneer recon Walnut, ch??n inox m??? PVD m??u gold', 'K???t c???u m???nh m??? mang c???m h???ng c??ng nghi???p c?? kh?? t???o cho s???n ph???m b??n b??n Maxine tr??? n??n c?? t??nh v?? l??? m???t. B??n c???nh ????, s???n ph???m v???n s??? d???ng ch???t li???u kim lo???i ?????ng, khung g??? beech v?? v??n g??? mdf c???a b??? s??u t???p Maxine. S???n ph???m l?? g??p ph???n t???o n??n s??? k???t n???i v???i sofa trong ph??ng kh??ch. Maxine ??? N??t n??u tr???m sang tr???ng Maxine, mang thi???t k??? v?????t th???i gian, g???i g???m v?? g??i g???n l???i nh???ng n??t ?????p c???a thi??n nhi??n v?? con ng?????i nh??ng v???n ?????y t??nh ???ng d???ng cao trong su???t h??nh tr??nh phi??u l??u c???a nh?? thi???t k??? ng?????i Ph??p Dominique Moal. B??? s??u t???p n???i b???t v???i m??u s???c n??u tr???m sang tr???ng, l?? s??? k???t h???p gi???a g???, da b?? v?? kim lo???i v??ng b??ng. ?????c bi???t tr??n m???i s???n ph???m, nh???ng n??t bo vi??n, chi ti???t k???t n???i ???????c s??? d???ng k??o l??o t???o ra ??i???m nh???t r???t ri??ng cho b??? s??u t???p. Maxine th??? hi???n n??t tr???m t??, th?? gi??n ????? t???n h?????ng kh??ng gian s???ng trong nh???p s???ng hi???n ?????i. S???n ph???m thu???c BST Maxine ???????c s???n xu???t t???i Vi???t Nam.', '??590 - 700 mm', NULL, 'CTGY3', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY3_PRO08', 'B??n b??n B???i', 5800000, 'bui_ban-ben-768x511.jpg', 'phong-khach-bui4-768x511.jpg', '', 1, 1, 'MDF Veneer Th??ng gh??p + M??y ??an c???ng nh??? + Kim lo???i s??n t??nh ??i???n', 'B??n b??n B???I l?? s???n ph???m n???m trong b??? s??u t???p (B???i) line h??ng ?????n t??? ?????i ng??? thi???t k??? Nh?? Xinh . Mang phong c??ch RUSTIC t???o n??n n??t duy??n d??ng ?????c ????o cho ng??i nh??, ???????c thi???t k??? v???i khung kim lo???i s??n t??nh ??i???n trang tr??, m???t tr??n b???ng g??? th??ng gh??p, c??n m???t d?????i l?? ??ang d???t l???i t??? M??y t???o th??m n??t ?????c tr??ng cho phong c??ch trang tr?? c???a b???n, t??? m???t v??n g??? ???????ng n??t tinh t??? ?????n c??c s???i m??y ??ang khoanh tr??n. M???t s???n ph???m h???p xu h?????ng cho b???t k??? ph??ng n??o, n?? ho??n h???o ????? s??? d???ng l??m b??n cu???i gh??? sofa ho???c l??m b??n ?????u gi?????ng trong ph??ng ng???.', '??480 - C580 mm', NULL, 'CTGY3', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY3_PRO09', 'B??? 3 c??i b??n b??n tr??n', 6200000, 'bo-3-cai-ban-ben-tron-76415.jpg', 'bo-3-cai-ban-ben-tron-76415-2.jpg', '', 1, 1, 'Ch??n kim lo???i - m???t g???', 'B??? 3 s???n ph???m l?? s??? k???t h???p ho??n h???o c???a g??? v?? kim lo???i, t???o s??? m???m m???i cho kh??ng gian v?? t???o ??i???m nh???n, s???n ph???m c?? th??? k???t h???p b??n l??m b??n b??n sofa, trang tr?? kh??ng nh??? ph??ng ng???, l??m b??? b??n tr?? ho???c c?? th??? t??ch r???i c??c s???n ph???m theo m???c ????ch s??? dun', 'D450 - R450 - C620 mm', NULL, 'CTGY3', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY3_PRO10', 'B??n b??n Porto m???u 2', 6500000, 'ban_ben_porto-6.jpg', '100768_2_1000_666-3-768x511.jpg', '100768_3_1000-3-768x511.jpg', 1, 1, 'G??? White oak - MDF ch???ng ???m Veneer oak - Inox m??u gold', '', 'D500 - R500 - C550 mm', NULL, 'CTGY3', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY30_PRO01', 'B??? 6 n???n ????? b??n vanilla 13h 7??4.5x24cm 93434', 490000, 'BO-6-NEN-VANILLA-13H-7x45x24CM-93434-768x495.jpg', '', '', 1, 1, 's??p n???n', '', 'D70 - R45 - C240 mm', NULL, 'CTGY30', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY30_PRO02', 'B??? 2 ch??n n???n Black Iris 111209', 13600000, 'chan-nen-black-iris-w10cm-111209-mca-768x511.jpg', '', '', 1, 1, 'Th??p kh??ng g???', '', 'D139 -7 - R95 - 3 - C381 mm', NULL, 'CTGY30', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY30_PRO03', 'B??? 6 n???n ????? b??n ????? Gi??ng sinh 13h 7??4.5??24 87156', 490000, 'BO-6-NEN-CHRISTM-RED-13H-7x45x24-87156-768x495.jpg', '', '', 1, 1, 's??p n???n', '', 'D70 - R45 - C240 mm', NULL, 'CTGY30', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY30_PRO04', 'B??? 6 n???n ????? b??n xanh l?? ?????m 13h 24cm 80551', 490000, 'BO-6-NEN-TABLE-D-GREEN-13H-24CM-80551-768x495.jpg', '', '', 1, 1, 's??p n???n', '', 'D70 - R45 - C240 mm', NULL, 'CTGY30', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY30_PRO05', 'B??? ba ch??n n???n Neo 10??30 29078J', 1820000, 'CHAN-NEN-S3-NEO-ALU-GD-10X30-29078J-768x495.jpg', '', '', 1, 1, 'Metal', '', 'D105 - R105 - C305 mm', NULL, 'CTGY30', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY30_PRO06', 'Ch??n n???n Aras Brass 113903E', 18700000, 'Chan-Nen-Aras-Brass-113903E-3105574-768x454.jpg', 'Chan-Nen-Aras-Brass-113903E-3105574-4-768x454.jpg', 'Chan-Nen-Aras-Brass-113903E-3105574-1-768x454.jpg', 1, 1, '?????ng ????nh b??ng', '', 'D160 - R165 - C480 mm', NULL, 'CTGY30', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY30_PRO07', 'Ch??n n???n g???m Cathedral blue', 3731000, '89275-chan-nen-cathedral-blue-calligaris-768x511.jpg', '', '', 1, 1, 'G???m s???', 'Cathedral l?? m???t ch??n n???n b???ng g???m v???i 7 v??? tr?? c???m n???n d??? d??ng s???p x???p theo c??c v??? tr?? kh??c nhau nh?? 3 c??y, 4 c??y ho???c 7 c??y. V???i d???ng nh?? m???t t??a th??nh, Cathedral d??? d??ng khi???n ta li??n t?????ng ?????n nh???ng b???a ti???c ho??ng gia sang tr???ng th???i k??? trung c???.', 'D360 - R145 - C135 mm', NULL, 'CTGY30', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY30_PRO08', 'Ch??n n???n Parrot', 13500000, 'Chan-nen-Parrot-3105865-768x511.jpg', 'Chan-nen-Parrot-3105865-3-768x511.jpg', 'Chan-nen-Parrot-3105865-7-768x511.jpg', 1, 1, 'Nh???a', '', 'D270 - R260 - C970 mm', NULL, 'CTGY30', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY30_PRO09', 'Ch??n n???n qu??? th??m l???n', 730000, '93455-chan-nen-qua-thom-vang-l.jpg', '', '', 1, 1, 'Nh???a t???ng h???p', '', '??110 - C250 mm', NULL, 'CTGY30', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY30_PRO10', 'N???n Garland', 2750000, '104039-nen-thom-chum-hoa-michael-aram-garland-candle-768x511.jpg', '104039-nen-thom-chum-hoa-michael-aram-garland-candle-2-768x511.jpg', '', 1, 1, 'Kim lo???i, th???y tinh, s??p n???n', '', '??95 - 3 - C120 - 7 mm', NULL, 'CTGY30', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY31_PRO01', 'Sofa 3 ch??? Osaka m???u 1 v???i 29', 28900000, 'SOFA-3-CHO-OSAKA-MAU-1-VAI-29.jpg', 'sofa-osaka-3-cho-3101896-768x454.jpg', 'sofa-osaka-3-cho-3101896-4-768x454.jpg', 1, 1, 'Ch??n Inox m??u gold, tay g???, b???c v???i, n???m ng???i th??o r???i', '', 'D2060 - R750 - C820 mm', NULL, 'CTGY31', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY31_PRO02', 'Sofa Penny 3 ch??? da Veneza 506 MB', 61860000, 'sofa-3-cho-boc-da-penny-mau-be-1-768x511.jpg', 'sofa-3-cho-boc-da-penny-mau-be-2-768x511.jpg', '', 1, 1, 'Ch??n kim lo???i s??n, n???m b???c da t??? nhi??n, n???m ng???i & l??ng r???i', '', 'D2400 - R880 - C850 mm', NULL, 'CTGY31', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY31_PRO03', 'Sofa 3 ch??? Elegance m??u ??en, da Brown R5', 124850000, '102411-sofa-elegance-mau-den-da-brown-2_1-768x511.jpg', '102411-sofa-elegance-mau-den-da-brown-3_1-768x511.jpg', '', 1, 1, 'G??? Ash (t???n b??) ?????c t??? nhi??n nh???p kh???u t??? M???, da b?? Patrol R5 nh???p kh???u', '', 'D2250 - R905 - C790 mm', NULL, 'CTGY31', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY31_PRO04', 'Sofa Bridge 3 ch??? hi???n ?????i da Beige', 109890000, 'sofa-bridge-khung-go-soi-boc-da-bo-cao-cap-sang-trong-mau-kem-86220.jpg', 'bridge-kem-3-nghieng-500.jpg', '', 1, 1, 'Khung g??? s???i ?????c t??? nhi??n nh???p kh???u t??? M???- Da ?? t??? nhi??n cao c???p', 'Sofa Bridge 3 ch??? v???i thi???t k??? v?????t th???i gian, s??? d???ng ch???t li???u g??? s???i ?????c v?? da b?? t??? nhi??n, sofa Bridge l?? ??i???m nh???n ?????ng c???p trong ph??ng kh??ch c???a b???n. ?????c bi???t, ph???n tay v???n ???????c ho??n thi???n v?? c??ng tinh x???o k???t h???p v???i k???t c???u v?? c??ng ch???n ch???n gi??p cho sofa Bridge t???o c???m x??c g???n g??i, t??? nhi??n v?? tho??i m??i khi s??? d???ng. S???n ph???m c?? c??c m??u s???c ho??n thi???n g??? s???i s??ng v?? tr???m v?? nhi???u m??u da kh??c nhau ????? l???a ch???n. Sofa Bridge 3 ch??? l?? 1 l???a ch???n s??ng gia cho phong c??ch n???i th???t B???c ??u.', 'D2100- R900- C750 mm', NULL, 'CTGY31', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY31_PRO05', 'Sofa Jazz 3 ch??? hi???n ?????i da n??u', 58810000, 'sofa-jazz-3-cho-hien-dai-da-that-chan-kim-loai-81214-mau-nau-768x511.jpg', 'phong-khach-jazz-200629-1000x666-1-768x511.jpg', '', 1, 1, 'Khung g??? b???c da t??? nhi??n cao c???p', 'Sofa Jazz 3 ch??? ???????c bao b???c b???i l???p da b?? cao c???p ??em l???i c???m gi??c m???m m???i, ??m ??i, th?? gi??n tuy???t v???i. Thi???t k??? hi???n ?????i mang n??t ?????p ?????c ????o t??? h??nh kh???i thanh l???ch, ???????ng n??t tinh t??? l?? ??i???m c???ng l???n nh???t c???a sofa Jazz.', 'D2300 - R840 - C760 mm', NULL, 'CTGY31', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY31_PRO06', 'Sofa M??y 2.5 ch??? hi???n ?????i da Fango', 39180000, 'sofa-may-khung-go-may-dan-tu-nhien-dem-boc-da-fango-96230-768x511.jpg', 'sofa_may_3_cho_da_go_tram_may_tu_nhien_96230_2-768x511.jpg', 'sofa_may_3_cho_da_go_tram_may_tu_nhien_96230_3-768x511.jpg', 1, 1, 'G??? Acacia ( Tr??m )+ M??y t??? nhi??n+ N???m b???c da+ Ch??n b???c inox m??? ?????ng', 'Sofa M??y 2.5 ch??? mang ki???u d??ng thanh l???ch, hi???n ?????i v???i k???t c???u b???ng khung g??? v?? ch???t li???u m??y 2 l???p. Ph???n ?????m ng???i b???ng da c?? th??? t??ch r???i. C??c chi ti???t ???????c ho??n thi???n v???i m??u s???c tr???m nh??? nh??ng v?? nh???n nh?? kim lo???i ?????ng tinh t???. Sofa M??y c?? nhi???u m??u s???c kh??c nhau ????? ch???n l???a ph?? h???p kh??ng gian ph??ng kh??ch c???a b???n.', 'D1800 - R750 - C860', NULL, 'CTGY31', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY31_PRO07', 'Sofa Maxine 3 ch??? hi???n ?????i da English Saddle', 143250000, 'sofa-maxine-3-cho-da-english-mau-nau-co-dien-87472.jpg', '500-sofa-maxine-nghieng.jpg', 'phong-khach-sofa-maxine-3,jpg', 1, 1, 'G??? Mahogany+ Da b?? t??? nhi??n cao c???p-nh???p kh???u Anh Qu???c', 'Sofa Maxine 3 ch??? v???i ??i???m nh???n ?????c bi???t ??? nh???ng h??ng n??t ph?? c??ch m??u v??ng ?????ng, l???p da b?? m??u cognac n???i b???t. Sofa Maxine l?? 1 l???a ch???n s??ng gi?? cho kh??ng gian ph??ng kh??ch sang tr???ng, tinh t???.', 'D2160- R1010- C850 mm', NULL, 'CTGY31', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY31_PRO08', 'Sofa Maxine 3 ch??? hi???n ?????i da Cognac', 48010000, 'sofa-maxine-3-cho-da-cognac-hien-dai-100762.jpg', 'sofa_maxine_cognac_1-768x511.jpg', 'bridge-sofa-100762-768x511.jpg', 1, 1, 'Ch??n kim lo???i m??u gold - Khung da b?? t??? nhi??n - N???m v???i', 'Sofa Maxine 3 ch??? v???i thi???t k??? g???n g??ng, t???i gi???n. Sofa Maxine 3 ch??? ???linh ?????ng???, ??????m ??p??? v???i nhi???u m??u s???c kh??c nhau ????? ch???n l???a, ph?? h???p kh??ng gian ph??ng kh??ch hi???n ?????i c???a gia ????nh b???n.', 'D2100 - R850 - C830 mm', NULL, 'CTGY31', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY31_PRO09', 'Sofa Maxine 3 ch??? hi???n ?????i da Mushroom b???c v???i KD', 48010000, '100763-sofa-maxine-da-mush-boc-vai-3.jpg', '13b-768x511.jpg', '13a-768x511.jpg', 1, 1, 'Ch??n kim lo???i m??u gold - Khung da b?? t??? nhi??n - N???m v???i', 'Sofa Maxine 3 ch??? v???i thi???t k??? g???n g??ng, t???i gi???n. Sofa Maxine 3 ch??? ???linh ?????ng???, ??????m ??p??? v???i nhi???u m??u s???c kh??c nhau ????? ch???n l???a, ph?? h???p kh??ng gian ph??ng kh??ch hi???n ?????i c???a gia ????nh b???n.', 'D2100 - R850 - C830 mm', NULL, 'CTGY31', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY31_PRO10', 'Sofa Combo 3 ch??? da Bali 518', 59900000, 'Sofa-Combo-3-cho-da-Bali-518-2-768x511.jpg', 'Sofa-Combo-3-cho-da-Bali-518-1-2-768x511.jpg', 'Sofa-Combo-3-cho-da-Bali-518-2-1-768x511.jpg', 1, 1, 'Khung g??? beech, mousse si??u ????n h???i, ch??n kim lo???i s??n ??en + gold, b???c da t??? nhi??n', 'Sofa Combo 3 ch??? da Bali 518 m??u cam g???ch th???i th?????ng l?? s??? l???a ch???n s??ng su???t nh???t c???a b???n cho kh??ng gian ph??ng kh??ch th??m ???m ??p, ??m ??i. ????y l?? m???u sofa da s??? h???u khung g??? beech c??ng v???i mousse si??u ????n h???i, ch??n kim lo???i s??n ??en v?? gold, b???c da t??? nhi??n r???t b???n, ?????p, gi?? c??? ph???i ch??ng ph?? h???p v???i c??c kh??ng gian th?????ng xuy??n ti???p kh??ch, ng?????i ra v??o nhi???u.', 'D2100 - R860 - C720mm', NULL, 'CTGY31', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY32_PRO01', 'Sofa Poppy g??c tr??i v???i m??u cam', 29360000, 'sofa_vai_poppy_mau_hong_12-6-768x511.jpg', 'sofa_vai_poppy_mau_hong-768x511.jpg', '', 1, 1, 'Ch??n g??? - V???i cao c???p', '', 'D2400/1350 - R830 - C700 mm', NULL, 'CTGY32', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY32_PRO02', 'Sofa g??c tr??i ??? ph???i Rumba hi???n ?????i v???i xanh MB18', 19540000, 'sofa-goc-rumaba-vai-xanh-hien-dai-101492-6-8.jpg', 'sofa-goc-rumaba-vai-xanh-hien-dai-101492-5-768x511.jpg', 'sofa-goc-rumaba-vai-xanh-hien-dai-101492-2-768x511.jpg', 1, 1, 'Khung g??? b???c v???i cao c???p - Ch??n g??? s???i', 'Sofa g??c tr??i - ph???i Rumba v???i thi???t k??? nh??? g???n, linh ?????ng v???i g??c ch??? L r???i. Ph?? h???p cho nh???ng c??n h??? c?? kh??ng gian v???a v?? nh???, b???n c?? th??? th???a th??ch s???p x???p g??c theo ?? ph???i hay tr??i t??y v??o k???t c???u g??c ph??ng. H??n n???a b???n c??ng c?? th??? bi???n t???u b??? sofa g??c ????n gi???n th??nh b??? sofa 3.1 r???i ????? kh??ng gian ph??ng kh??ch nh?? b???n tr??? n??n m???i m??? h??n.', 'D2000/1400 - R810 - C750 mm', NULL, 'CTGY32', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY32_PRO03', 'Sofa g??c ph???i Rumba V???i 28', 19540000, 'sofa-goc-rumba-thay-doi-goc-linh-hoat-boc-vai-hien-dai-91215-4.jpg', 'sofa_rumba_91215_3-768x512.jpg', 'sofa_rumba_91215_4-768x511.jpg', 1, 1, 'Ch??n g??? -b???c v???i cao c???p', 'Sofa G??c nh??? g???n Rumba ???????c thi???t k??? linh ?????ng v???i g??c ch??? L r???i. Ph?? h???p cho nh???ng c??n h??? c?? kh??ng gian v???a v?? nh???, b???n c?? th??? th???a th??ch s???p x???p g??c theo ?? ph???i hay tr??i t??y v??o k???t c???u g??c ph??ng. H??n n???a b???n c??ng c?? th??? bi???n t???u b??? sofa g??c ????n gi???n th??nh b??? sofa 3.1 r???i ????? c??n ph??ng kh??ch nh?? b???n tr??? n??n m???i m??? h??n.', 'D2000/1400 -R810 -C750', NULL, 'CTGY32', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY32_PRO04', 'Sofa g??c tr??i Shadow v???i beige FY-02', 29900000, 'SOFA-SHADOW-GOC-TRAI-BEIGE-FY-02-768x511.jpg', 'sofa-shadow3-1-768x511.jpg', '', 1, 1, 'Ch??n kim lo???i - V???i cao c???p', 'Sofa g??c tr??i Shadow v???i thi???t k??? nh??? g???n, ph?? h???p cho c??c kh??ng gian c??n h??? c?? di???n t??ch v???a ph???i. Ki???u d??ng nh??? nh??ng, ????n gi???n nh??ng kh??ng k??m ph???n tinh t??? v???i ??i???m nh???n l?? n???m l??ng gh??? ???????c may ch??? ??? gi???a r???t duy??n d??ng. Tay sofa t???o kh???i bo tr??n th???p l??m cho t???ng th??? nh??? g???n h???t m???c. Sofa g??c Shadow l?? l???a ch???n t???i ??u cho kh??ng gian ph??ng kh??ch hi???n ?????i.', 'D2550/1600- R955- C860mm', NULL, 'CTGY32', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY32_PRO05', 'Sofa g??c tr??i Monaco + ????n v???i 2041/13 +141/23', 42900000, 'SOFA-MONACO-GOC-PHAI-DON-VAI-2041-13-141-23-5-768x495.jpg', 'SOFA-MONACO-GOC-PHAI-DON-VAI-2041-13-141-23-2-768x511.jpg', '', 1, 1, 'Khung g??? b???c v???i 2 m??u, bao g???m 3 g???i', 'Sofa g??c tr??i Monaco + ????n v???i 2041/13 +141/23 v???i ph???n n???m ng???i ??m ??i, ch??n sofa s??? d???ng khung g??? t???o s??? g???n g??i v?? ???m c??ng, l?? 1 l???a ch???n t???i ??u cho kh??ng gian ph??ng kh??ch hi???n ?????i, ti???n nghi cho c??? gia ????nh.', 'D2750 - R1850 - C700 mm / D900 - R890 - C450 mm', NULL, 'CTGY32', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY32_PRO06', 'Sofa g??c tr??i Monaco + ????n v???i 559/03 +141/23', 42900000, 'SOFA-MONACO-GOC-TRAI-DON-VAI-559-03-141-23-768x511.jpg', '', '', 1, 1, 'Khung g??? b???c v???i 2 m??u, bao g???m 3 g???i', 'Sofa g??c tr??i Monaco + ????n v???i 2041/13 +141/23 v???i ph???n n???m ng???i ??m ??i, ch??n sofa s??? d???ng khung g??? t???o s??? g???n g??i v?? ???m c??ng, l?? 1 l???a ch???n t???i ??u cho kh??ng gian ph??ng kh??ch hi???n ?????i, ti???n nghi cho c??? gia ????nh.', 'D2750 - R1850 - C700 mm / D900 - R890 - C450 mm', NULL, 'CTGY32', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY32_PRO07', 'Sofa g??c tr??i Rap hi???n ?????i v???i v??ng', 29360000, 'sofa-goc-rap-boc-vai-vang-95321.jpg', '', '', 1, 1, 'Khung g??? - B???c v???i cao c???p', 'Sofa g??c ph???i Rap v???i ph???n n???m ng???i ??m ??i, ch??n sofa s??? d???ng kim lo???i b??ng s??ng kh??ng r??? t???o s??? sang tr???ng. Sofa g??c Rap l?? 1 l???a ch???n t???i ??u cho kh??ng gian ph??ng kh??ch hi???n ?????i, ti???n nghi cho c??? gia ????nh.', 'D2530/1760- R 850- C700 mm', NULL, 'CTGY32', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY32_PRO08', 'Sofa g??c tr??i Pio', 36900000, 'sofa-goc-pio-vai-hien-dai-100204-768x511.jpg', 'nha-xinh-phong-khach-pio-hien-dai-1-768x512.jpg', '', 1, 1, 'G??? Beech+ B???c v???i , n???m ng???i & l??ng r???i', 'Sofa g??c tr??i Pio v???i thi???t k??? m???i l???, ??i???m nh???n l?? ph???i m??u v???i h??i h??a gi???a n???m v?? khung gh???, d??y ??ai ph???n l??ng nh?? m???t khuy ??o nh???m gia t??ng n???m l??ng l??n xu???ng t??y theo nhu c???u s??? d???ng c???a b???n. ??u ??i???m l???n c???a Pio l?? b???n c?? th??? ph???i m??u cho b??? sofa y??u th??ch c???a m??nh thay v?? ch??? s??? d???ng m???t m??u ????n s???c th??ng th?????ng. Ch??n sofa c??ng ???????c thi???t k??? nh???n nh?? chi ti???t b???ng hai m??u s???c th???i th?????ng ????? t???ng th??? chung tr??? n??n b???t m???t, ho??n h???o, v??? n???m c?? th??? th??o r???i ????? v??? sinh. Sofa g??c Pio l?? l???a ch???n t???i ??u cho kh??ng gian ph??ng kh??ch B???c ??u - hi???n ?????i.', 'D2800/1650- R850- C810', NULL, 'CTGY32', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY32_PRO09', 'Sofa g??c tr??i Pio hi???n ?????i v???i Atlanta', 36900000, 'sofa-goc-pio-boc-vai-atlanta-hien-dai-98026-768x511.jpg', 'phong-khach-pio94-768x511.jpg', '', 1, 1, 'G??? Beech+ B???c v???i ', 'Sofa g??c tr??i Pio v???i thi???t k??? m???i l???, ??i???m nh???n l?? ph???i m??u v???i h??i h??a gi???a n???m v?? khung gh???, d??y ??ai ph???n l??ng nh?? m???t khuy ??o nh???m gia t??ng n???m l??ng l??n xu???ng t??y theo nhu c???u s??? d???ng c???a b???n. ??u ??i???m l???n c???a Pio l?? b???n c?? th??? ph???i m??u cho b??? sofa y??u th??ch c???a m??nh thay v?? ch??? s??? d???ng m???t m??u ????n s???c th??ng th?????ng. Ch??n sofa c??ng ???????c thi???t k??? nh???n nh?? chi ti???t b???ng hai m??u s???c th???i th?????ng ????? t???ng th??? chung tr??? n??n b???t m???t, ho??n h???o, v??? n???m c?? th??? th??o r???i ????? v??? sinh. Sofa g??c Pio l?? l???a ch???n t???i ??u cho kh??ng gian ph??ng kh??ch B???c ??u - hi???n ?????i.', 'D2800/1650- R850- C810', NULL, 'CTGY32', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY32_PRO10', 'Sofa Combo g??c tr??i da Bali 520', 96900000, 'SOFA-COMBO-GOC-TRAI-DA-BALI-520-768x511.jpg', 'Sofa-Combo-goc-trai-da-Bali-520-4-1-768x495.jpg', 'Sofa-Combo-goc-trai-da-Bali-520-6-1-768x495.jpg', 1, 1, 'Ch??n kim lo???i 2 m??u ??en/gold - n???m b???c da t??? nhi??n', 'Sofa Combo g??c tr??i da Bali 520 c?? thi???t k??? 3 ch??? ng???i v???i ph???n ch??n b???ng kim lo???i ???????c s??n ph???i h???p 2 m??u ??en v?? gold. Ph???n n???m gh??? ???????c b???c da Bali b???n v?? ?????p t???o c???m gi??c tho???i m??i d??? ch???u khi ng???i. Sofa Combo b???c da t??? nhi??n v???i thi???t k??? sang tr???ng, hi???n ?????i ph?? h???p cho kh??ng gian qu??y qu???n sum h???p gia ????nh sau kho???ng th???i gian ??i l??m b???n r???n hay l?? n??i ch??o ????n nh???ng v??? kh??ch ?????n ch??i nh??.', 'D2800/1600 - R890 - C725 mm', NULL, 'CTGY32', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY33_PRO01', 'T??? ??o Acrylic', 32900000, 'Tu-ao-Acrylic-768x511.jpg', 'Tu-ao-Acrylic-1-768x511.jpg', 'Tu-ao-Acrylic-2-768x511.jpg', 1, 1, 'Th??ng MFC ch???ng ???m - m???t MDF Acrylic Parc50', '', 'D1600 - R600 - C2000 mm', NULL, 'CTGY33', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY33_PRO02', 'T??? ??o Harmony', 12670000, 'tu-ao-harmony-7-768x511.jpg', 'tu-ao-harmony-4-3-768x511.jpg', '', 1, 1, 'G??? s???i+ tr??m, MDF s??n tr???ng', 'L?? s??? k???t h???p c???a m??u tr???ng tinh kh??i v???i m??u g??? ???m ??p tr??n n???n nh???ng ???????ng n??t thi???t k??? hi???n ?????i, trang nh??. Harmony ???????c ????nh gi?? r???t cao c??? v??? ki???u d??ng v?? c??ng n??ng, ???? s??? l?? ni???m t??? h??o c???a gia ch??? khi kh??ch ?????n th??m nh??.', 'D980 - R630 - C1980', NULL, 'CTGY33', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY33_PRO03', 'T??? ??o hi???n ?????i', 24900000, 'tu-ao-hien-dai-500.jpg', 'tu-ao-hien-dai-2.jpg', 'tu-ao-hien-dai-5-500.jpg', 1, 1, 'MFC ch???ng ???m -ph??? ki???n Hafele', 'M???u t??? ??o hi???n ?????i c???a Nh?? Xinh v???i thi???t k??? gi???n ????n, t???i ??a ti???n ??ch b???ng nhi???u ng??n k??o v?? kho???ng tr???ng ????? c???t tr??? qu???n ??o v?? ????? ?????c.', 'D1600-R600-C2000mm', NULL, 'CTGY33', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY33_PRO04', 'T??? ??o hi???n ?????i', 24450000, '3-99496-1-768x511.jpg', '', '', 1, 1, 'MFC ch???ng ???m -ph??? ki???n Hafele', 'M???u t??? ??o hi???n ?????i c???a Nh?? Xinh v???i thi???t k??? gi???n ????n, t???i ??a ti???n ??ch b???ng nhi???u ng??n k??o v?? kho???ng tr???ng ????? c???t tr??? qu???n ??o v?? ????? ?????c.', 'D1600-R600-C2000mm', NULL, 'CTGY33', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY33_PRO05', 'Maxine wardrobe', 43200000, '3_91000_1-768x513.jpg', '3_91000_2-768x513.jpg', '', 1, 1, 'Gold PVD plated stainless steel legs - MDF veneer recon Walnu', 'T??? ??o Maxine ch???a ?????ng ?????y ????? c??ng n??ng t???i ??u cho vi???c c???t tr??? qu???n ??o b???ng vi???c b??? tr?? s???p x???p h???p l?? c??c ng??n t???. Nh???ng chi ti???t v??? ph??? ki???n cao c???p gi??p cho vi???c thao t??c nh??? nh??ng. B??? ngo??i, t??? ???????c thi???t k??? duy??n d??ng v?? thu h??t v???i s???c n??u tr???m v?? kim lo???i ?????ng. Maxine ??? N??t n??u tr???m sang tr???ng. Maxine, mang thi???t k??? v?????t th???i gian, g???i g???m v?? g??i g???n l???i nh???ng n??t ?????p c???a thi??n nhi??n v?? con ng?????i nh??ng v???n ?????y t??nh ???ng d???ng cao trong su???t h??nh tr??nh phi??u l??u c???a nh?? thi???t k??? ng?????i Ph??p Dominique Moal. B??? s??u t???p n???i b???t v???i m??u s???c n??u tr???m sang tr???ng, l?? s??? k???t h???p gi???a g???, da b?? v?? kim lo???i v??ng b??ng. ?????c bi???t tr??n m???i s???n ph???m, nh???ng n??t bo vi??n, chi ti???t k???t n???i ???????c s??? d???ng k??o l??o t???o ra ??i???m nh???t r???t ri??ng cho b??? s??u t???p. Maxine th??? hi???n n??t tr???m t??, th?? gi??n ????? t???n h?????ng kh??ng gian s???ng trong nh???p s???ng hi???n ?????i. S???n ph???m thu???c BST Maxine ???????c s???n xu???t t???i Vi???t Nam.', 'W1200 - D600 - H2100mm', NULL, 'CTGY33', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY34_PRO01', 'T??? ??m Canon', 18000000, 'tu_am_tuong_canon_l.jpg', '', '', 1, 1, 'G??? ??c ch?? (Walnut), g??? ??p v?? v??n l???ng S???i nh??n t???o (Oak recon)', '', 'D3000/2700 - R600 - C2400', NULL, 'CTGY34', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY34_PRO02', 'T??? ??m Diamond', 23000000, 'tu_am_tuong_diamond_l.jpg', '', '', 1, 1, 'G??? x?? c??? (Mahogany), MDF', '', 'D2500 - R600 - C2200', NULL, 'CTGY34', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY34_PRO03', 'T??? ??m Kiwi', 17500000, 'tu_am_tuong_kiwi_a_l.jpg', 'tu_am_tuong_kiwi_b_l.jpg', '', 1, 1, 'G??? ??c ch?? (Walnut), g??? ??p v?? v??n l???ng ??c ch?? nh??n t???o (Walnut recon)', '', 'D2275/4400/2275 - R600 - C2400', NULL, 'CTGY34', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY34_PRO04', 'T??? ??m Whitecalypso', 21000000, 'tu_am_tuong_whitecalypso_l.jpg', '', '', 1, 1, 'G??? ??c ch?? (Walnut), g??? x?? c??? (Mahogany), g??? ??p, v??n l???ng ??c ch?? nh??n t???o', '', 'D3480 - R600 - C2350', NULL, 'CTGY34', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY35_PRO01', 'T??? b???p Daily', 50000000, '7._daily-768x511', '', '', 1, 1, 'Th??ng MFC ??? C??nh Acrylic v?? s??n b??ng', '', 'T??y theo kh??ng gian nh?? b?p th?c t?', NULL, 'CTGY35', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY35_PRO02', 'T??? b???p Fancy', 52000000, '6._fancy-768x511', '', '', 1, 1, 'Th??ng MFC ??? C??nh Acrylic v?? s??n b??ng', '', 'T??y theo kh??ng gian nh?? b?p th?c t?', NULL, 'CTGY35', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY35_PRO03', 'T??? b???p Olive', 45000000, '5._olive-768x496', '', '', 1, 1, 'Th??ng MFC ??? C??nh Acrylic v?? s??n b??ng', '', 'T??y theo kh??ng gian nh?? b?p th?c t?', NULL, 'CTGY35', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY35_PRO04', 'T??? b???p Elita', 49000000, '4._elita-768x511', '8._elita_2-768x511', '', 1, 1, 'Th??ng MFC ??? C??nh Acrylic v?? s??n b??ng', '', 'T??y theo kh??ng gian nh?? b?p th?c t?', NULL, 'CTGY35', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY35_PRO05', 'T??? b???p Charmy', 51000000, '3._charmy_2-768x511', '3._charmy_1-768x511', '', 1, 1, 'Th??ng MFC ??? C??nh Acrylic v?? s??n b??ng', '', 'T??y theo kh??ng gian nh?? b?p th?c t?', NULL, 'CTGY35', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY35_PRO06', 'T??? b???p Jolie', 50000000, 'untitled-768x511', '2._jolie_2-768x511', '', 1, 1, 'Th??ng MFC ??? C??nh Acrylic v?? s??n b??ng', '', 'T??y theo kh??ng gian nh?? b?p th?c t?', NULL, 'CTGY35', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY35_PRO07', 'T??? b???p Classy', 48000000, '1._classy_2-32-768x511', '1._classy_2-33-768x511', '1._classy_1-16-768x511', 1, 1, 'Th??ng MFC ??? C??nh Acrylic v?? s??n b??ng', '', 'T??y theo kh??ng gian nh?? b?p th?c t?', NULL, 'CTGY35', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY35_PRO08', 'T??? b???p Venus', 55000000, 'nha-xinh-tu-bep-venus-768x511', '', '', 1, 1, 'Th??ng MFC ??? C??nh Acrylic v?? s??n b??ng', '', 'T??y theo kh??ng gian nh?? b?p th?c t?', NULL, 'CTGY35', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY36_PRO01', 'K??? gi??y Caruso 5 Doors', 10900000, 'Ke-giay-Caruso-5-Doors-3105870-768x511', 'Ke-giay-Caruso-5-Doors-3105870-6-768x511', 'Ke-giay-Caruso-5-Doors-3105870-8-768x511', 1, 1, 'Kim lo???i', '', 'D500 - R140 - C1700 mm', NULL, 'CTGY36', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY36_PRO02', ' T??? gi??y Caruso 2 ng??n n??u75X77 86217K', 14500000, 'TU-GIAY-CARUSO-DBLE-BRZ-75X77-86217K-768x495', 'TU-GIAY-CARUSO-DBLE-BRZ-75X77-86217K-1-768x495', '', 1, 1, 'Kim lo???i', '', 'D500 - R140 - C1700 mm', NULL, 'CTGY36', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY36_PRO03', ' T??? gi??y Caruso 3 ng??n tr???ng H103x50x14 9287K', 6900000, 'TU-GIAY-CARUSO-3-WHITE-H103x50x14-9287K-768x495', 'TU-GIAY-CARUSO-3-WHITE-H103x50x14-9287K-1-768x495', '', 1, 1, 'Kim lo???i', '', 'D500 - R140 - C1030 mm', NULL, 'CTGY36', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY36_PRO04', 'T??? gi??y Caruso 5 ng??n tr???ng H170x50x14 9288K', 10900000, 'TU-GIAY-CARUSO-5-WHITE-H170x50x14-9288K-768x495', 'TU-GIAY-CARUSO-5-WHITE-H170x50x14-9288K-2-768x495', '', 1, 1, 'Kim lo???i', '', 'D500 - R140 - C1700 mm', NULL, 'CTGY36', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY36_PRO05', ' T??? gi??y Caruso 5 ng??n x??m H170x50x14 82568K', 10900000, 'TU-GIAY-CARUSO-5-GREY-H170x50x14-82568K-768x495', 'TU-GIAY-CARUSO-5-GREY-H170x50x14-82568K-3-768x495', '', 1, 1, 'Kim lo???i', '', 'D500 - R140 - C1700 mm', NULL, 'CTGY36', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY36_PRO06', 'T??? gi??y 3 ng??n Caruso', 5270000, '103181-tu-giay-caruso-silver-3-ngan-2-768x511', '103181-tu-giay-caruso-silver-3-ngan-1', '', 1, 1, 'Kim lo???i', '', 'D500- R140- C1030 mm', NULL, 'CTGY36', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY36_PRO07', 'T??? gi??y 4 ng??n Luxury 84995K', 34900000, 'tu-giay-luxury-4-drawer-84995k-768x511', 'tu-giay-luxury-4-drawer-84995k-2-768x511', '', 1, 1, 'MDF - K??nh c?????ng l???c tr??ng g????ng', '', 'D550- R300- C1460 mm', NULL, 'CTGY36', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY36_PRO08', '??? gi??y 3 ng??n Luxury 84993K', 24690000, 'tu-giay-luxury-3-drawer-84993k-768x511', 'tu-giay-luxury-3-drawer-84993k-2-768x511', '', 1, 1, 'MDF - K??nh c?????ng l???c tr??ng g????ng', '', 'D550- R300- C1240 mm', NULL, 'CTGY36', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY37_PRO01', 'T??? Th???p Meena 410040Z', 39700000, 'TU-THAP-MEENA-410040Z-1-768x511', 'TU-THAP-MEENA-410040Z-3-768x511', 'TU-THAP-MEENA-410040Z-6-768x511', 1, 1, 'Khung v?? ch??n s???t s??n t??nh ??i???n', '', 'D800-R400-C950 mm', NULL, 'CTGY37', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY37_PRO02', 'T??? h???c k??o Osaka', 23900000, 'Tu-hoc-keo-Osaka-3101899-1-768x511', 'Tu-hoc-keo-Osaka-3101899-4-768x454', '', 1, 1, 'G??? Oak - MDF veneer Oak - Inox 304 m??u gold', '', 'D900 - R500 - C1100 mm', NULL, 'CTGY37', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY37_PRO03', 'T??? h???c k??o Pio', 16590000, 'line-may_2-', 'phong-an-pio5-768x511', '', 1, 1, 'G??? Oak - MDF veneer Oak - Inox 304 m??u gold', 'T??? h???c k??o Pio gi??p c???t tr??? t???i ??u cho nh???ng ????? ?????c trong ph??ng ng??? c???a b???n. Nh???ng ng??n k??o ???????c thi???t k??? r???ng r??i, ki???u d??ng l??? t???o nh???ng  g??c nh??n m???i m??? v?? duy??n d??ng. T??? h???c k??o Pio ho??n thi???n v???i m??u n??u x??m k???t h???p v???i m??u ghi.', 'D1400-R450-C900', NULL, 'CTGY37', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY37_PRO04', 'T??? h???c k??o Dubai', 12670000, 'tu-hoc-keo-dubai_1-768x511', 'phong-an-dubai-768x511', '', 1, 1, 'G??? Oak - MDF veneer Oak - Inox 304 m??u gold', '', 'D1200-R400-C750', NULL, 'CTGY37', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY37_PRO05', 'T??? h???c k??o City', 35248000, '500-72463-nha-xinh-phong-khach-tu-city2', '500-72463-nha-xinh-phong-ngu-tu-hoc-keo-city4', '', 1, 1, 'MDF Veneer - K??nh c?????ng l???c', 'T??? h???c k??o City ???????c nh???p kh???u t??? th????ng hi???u n???i ti???ng Calligaris c???a ??, v???i khung g??? sang tr???ng k???t h???p c??ng m???t k??nh c?????ng l???c, ba h???c k??o r???ng r??i v???i c??ch thi???t k??? th??ng minh kh??ng c???n tay n???m cho c??n ph??ng th??m r???ng r??i, ch???c ch???n l?? v???t c???n thi???t ????p ???ng c??? v??? c??ng n??ng v?? th???m m??? cho c??n ph??ng b???n. ', 'D1200 - R500 - C700', NULL, 'CTGY37', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY37_PRO06', 'T??? h???c k??o City CS/576-D P201/Gew', 31000000, 'tu_hk_city1-768x511', '', '', 1, 1, 'MDF Veneer walnut - K??nh c?????ng l???c', 'T??? h???c k??o City ???????c nh???p kh???u t??? th????ng hi???u n???i ti???ng Calligaris c???a ??, v???i khung g??? sang tr???ng k???t h???p c??ng m???t k??nh c?????ng l???c, ba h???c k??o r???ng r??i v???i c??ch thi???t k??? th??ng minh kh??ng c???n tay n???m cho c??n ph??ng th??m r???ng r??i, ch???c ch???n l?? v???t c???n thi???t ????p ???ng c??? v??? c??ng n??ng v?? th???m m??? cho c??n ph??ng b???n.', 'D1200-R500-C700', NULL, 'CTGY37', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY37_PRO07', ' T??? H???c K??o Universal Ceramic P9C', 84400000, 'TU-HOC-KEO-UNIVERSAL-CERAMIC-P9C-2-768x511', 'TU-HOC-KEO-UNIVERSAL-CERAMIC-P9C-3-768x511', '', 1, 1, 'Ch??n kim lo???i s??n -khung g??? s??n tr???ng -m???t Ceramic P9C', '', 'D1605-R500-C645 mm', NULL, 'CTGY37', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY37_PRO08', 'T??? H???c K??o York Ceramic', 98000000, 'TU-HOC-KEO-YORKCERAMIC-2-768x511', 'TU-HOC-KEO-YORKCERAMIC-4-768x511', '', 1, 1, 'Ch??n kim lo???i s??n -khung g??? s??n tr???ng -m???t Ceramic P9C', '', 'D1235-R470-C780 mm', NULL, 'CTGY37', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY38_PRO001', 'T??? Buffet Osaka', 29900000, 'tu-buffet-osaka-3101890-768x511.jpg', 'tu-buffet-osaka-3101890-1-768x454.jpg', '', 1, 1, 'G??? Oak - MDF veneer Oak - Inox 304 m??u gold', '', 'D1800 - R400 - C815 mm', NULL, 'CTGY38', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY38_PRO002', 'T??? ly Shadow', 19900000, 'tu-ly-shadow-768x511.jpg', 'phong-an-shadow5-768x511.jpg', '', 1, 1, 'Ch??n, tay n???m kim lo???i m??u ?????ng + MDF Veneer s???i', '', 'D1600- R450- C750', NULL, 'CTGY38', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY38_PRO003', 'T??? ly Bridge g??? n??u', 56650000, '73859-tu-ly-bridge-go-nau-768x511.jpg', '1000-san-pham-nha-xinh50-5-768x511.jpg', '', 1, 1, 'G??? s???i ?????c t??? nhi??n nh???p kh???u t??? M???', 'T??? ly Bridge ???????c l??m b???ng ch???t g??? s???i ?????c, c??nh t??? ????ng m??? nh??? nh??ng nh??? thi???t k??? nam ch??m, ch??n t??? d??? d??ng th??o l???p khi c???n di chuy???n, v???i ???????ng n??t gia c??ng t??? m???, t??? ly Bridge s??? l?? ??i???m n???i b???t cho ph??ng ??n nh?? b???n. Bridge ??? T??nh y??u thi??n nhi??n v?? s???c quy???n r?? c???a g???. B??? s??u t???p Bridge mang h??i th??? Scandinavian l?? s??? k???t h???p ho??n h???o c???a nh?? thi???t k??? n???i ti???ng ??an M???ch Hans Sandgren Jakobsen c??ng c??ng ngh??? s???n xu???t th??? c??ng c???a Nh???t B???n. Mang thi???t k??? v?????t th???i gian, s??? d???ng ch???t li???u g??? s???i v?? da b?? t??? nhi??n, Bridge mang ?????n c???m gi??c sang tr???ng, g???n g??i v?? tho???i m??i cho gia ch???. ??i???m n???i b???t c???a Bridge l?? s??? tinh x???o trong ho??n thi???n, t???ng chi ti???t, nh???ng ???????ng cong, b??? m???t g??? s???i ???????c th???c hi???n v?? ch???n l???a v?? c??ng k??? c??ng, ????? t???o ra m???t Bridge ho??n h???o, ch???m ?????n t??m h???n ?????y c???m x??c v?? y??u qu?? nh???ng gi?? tr??? l??u b???n c???a gia ch??? Vi???t.', 'D1500 - R450 - C670', NULL, 'CTGY38', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY38_PRO004', 'T??? ly Miami 209012', 14900000, 'Tu-ly-Miami-209012-768x495.jpg', '', '', 1, 1, 'G??? s???i t??? nhi??n + MDF ch???ng ???m', '', 'D1100-R450-C750', NULL, 'CTGY38', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY38_PRO005', 'T??? ly Poppy PMA632011', 18600000, 'TU-LY-POPPY-PMA632011-768x511.jpg', 'TU-LY-POPPY-PMA632011-1-768x511.jpg', '', 1, 1, 'G??? t???n b?? (ash) , MDF veneer t???n b??', '', 'D1600 - R450 - C750 mm', NULL, 'CTGY38', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY38_PRO006', 'T??? Ly Rap', 16600000, 'tu-ly-rap-768x511.jpg', '1000-san-pham-nha-xinh_62-5-768x511.jpg', '1000-san-pham-nha-xinh_62-2-768x511.jpg', 1, 1, 'Ch??n g??? s???i, M???t MDF Veneer', '', 'D1620-R450-C760 mm', NULL, 'CTGY38', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY38_PRO007', 'T??? r?????u Vino', 29700000, 'tu-rouo-vino-768x511.jpg', 'tu-rouo-vino-1-1-768x511.jpg', '', 1, 1, 'G??? - Kim lo???i', 'Chi???c t??? r?????u v???i s??? k???t h???p gi???a kim lo???i v?? g??? t???o n??n s??? m???i m???, tr??? trung. V???i thi???t k??? ????? ???????c nhi???u chai r?????u, ly t??ch ??? ph??a tr??n d??n treo, c??ng nhi???u ng??n k??o ph??a d?????i s??? gi??p t???i ??u ho?? ???????c c??ng n??ng s??? d???ng.', 'D560 - R380 - C1700', NULL, 'CTGY38', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY38_PRO008', 'T??? Ly Barbier Walnut 410043Z', 49690000, 'TU-LY-BARBIER-WALNUT-410043Z-1-768x511.jpg', 'TU-LY-BARBIER-WALNUT-410043Z-2-768x511.jpg', 'TU-LY-BARBIER-WALNUT-410043Z-3-768x511.jpg', 1, 1, 'G??? -mdf veneer walnut', '', 'D1000-R450-C1400 mm', NULL, 'CTGY38', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY39_PRO001', 'T??? tivi Bridge G??? 1m5 ??? M??u n??u', 41580000, 'tu-tivi-bridge-mau-nau-1m5_-_copy.jpg', 'phong-khach-bridge6-768x511.jpg', '', 1, 1, 'G??? s???i ?????c t??? nhi??n nh???p kh???u t??? M???', 'T???ng ???????ng n??t bo tr??n v?? x??? l?? tinh t??? t???o n??n m???t s???n ph???m ho??n h???o cho kh??ng gian ph??ng kh??ch. T??? tivi Bridge ch???a ng??n k??o ????ng v?? m??? ????? ph?? h???p ????? ????p ???ng c??ng n??ng c???t tr???. S???n ph???m s??? d???ng g??? s???i ?????c t??? nhi??n v???i 2 m??u ho??n thi???n s??ng v?? tr???m.', 'D1500 - R450 - C450 mm', NULL, 'CTGY39', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY39_PRO002', 'T??? tivi Bridge G??? 1m5 ??? M??u T??? nhi??n', 41580000, '1000-tu-tivi-768x511.jpg', 'tu-tivi-bridge2-768x511.jpg', '', 1, 1, 'G??? s???i ?????c t??? nhi??n nh???p kh???u t??? M???', 'T???ng ???????ng n??t bo tr??n v?? x??? l?? tinh t??? t???o n??n m???t s???n ph???m ho??n h???o cho kh??ng gian ph??ng kh??ch. T??? tivi Bridge ch???a ng??n k??o ????ng v?? m??? ????? ph?? h???p ????? ????p ???ng c??ng n??ng c???t tr???. S???n ph???m s??? d???ng g??? s???i ?????c t??? nhi??n v???i 2 m??u ho??n thi???n s??ng v?? tr???m.', 'D1500 - R450 - C450 mm', NULL, 'CTGY39', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY39_PRO003', 'T??? tivi Bridge G??? 1m8- M??u n??u', 54890000, '1000-san-pham-nha-xinh48-768x511.jpg', '73864-1000-nhaxinh-phongkhach-tu-tivi-bridge-768x511.jpg', 'phong-khach-bridge5-768x511.jpg', 1, 1, 'G??? s???i ?????c t??? nhi??n nh???p kh???u t??? M???', '', 'D1800 - R450 - C450 mm', NULL, 'CTGY39', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY39_PRO004', 'T??? tivi Shadow', 17900000, 'tu-tivi-shadow-768x511.jpg', 'tu-tivi-shadow3-768x511.jpg', '', 1, 1, 'Ch??n, tay n???m kim lo???i m??u ?????ng + MDF Veneer s???i', '', 'D1600- R450- C550', NULL, 'CTGY39', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY39_PRO005', 'T??? Tivi Miami 210004', 16900000, 'tu-tivi-miami-01-768x511.jpg', 'tu-tivi-miami-768x511.jpg', '', 1, 1, 'G??? s???i t??? nhi??n + MDF ch???ng ???m', '', 'D1700-R450-C500', NULL, 'CTGY39', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY39_PRO006', 'T??? tivi Cabo PMA712042-2', 21000000, 'TU-TIVI-CABO-PMA712042-2-768x511.jpg', 'Sofa-Cabo-3-cho-vai-MB2041-9-PMA170078-3-768x495.jpg', '', 1, 1, 'G??? - MDF veneer walnut, ch??n kim lo???i, c???a m??u xanh Olive h???a ti???t Brasilia', '', 'D1800 - R400 - C565 mm', NULL, 'CTGY39', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY39_PRO007', 'T??? tivi Tonic', 13650000, 'tu-ti-vi-tonic-768x510.jpg', 'sofa-1133-768x511.jpg', '', 1, 1, 'MFC ch???ng ???m', '', 'D2000 - R450 - C420', NULL, 'CTGY39', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY39_PRO008', 'T??? tivi Glamour tr???ng', 16898000, '1000-tu-tv-glamour-3-768x511.jpg', 'tu-tivi-glamour-trang-3-768x511.jpg', '', 1, 1, 'G??? x?? c??? (Mahogany), g??? ??p ch???ng ???m s??n tr???ng', 'T??? tivi g??? cao c???p Glamour l??m b???ng g??? x?? c??? ???????c s??n m???t l???p s??n tr???ng ho???c ??en ch???ng ???m gi??p b???n an t??m trong qu?? tr??nh s??? d???ng v?? b???o qu???n.', 'D2000 - R420 - C630', NULL, 'CTGY39', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY4_PRO01', 'B??n Console Elite', 44090000, 'ban-console-elite-768x461.jpg', 'ban-console-elite-1-1-768x511.jpg', 'ban-console-elite-2-768x511.jpg', 1, 1, 'Khung kim lo???i, k??nh', 'B??n Console Elite l?? m???t gi???i ph??p trang tr?? n???i th???t h???p d???n cho ph??ng l??m vi???c, ph??ng kh??ch ho???c th???m ch?? l?? h??nh lang. Nh??ng m?? h??nh Elite c?? nh???ng tham v???ng kh?? kh??c bi???t. V???i trang ph???c m??u tr???ng v?? v??ng lung linh, n?? mang ?????n cho m???i c??n ph??ng s??? n??ng c???p sang tr???ng. B??n ??i???u khi???n trang nh?? m??u tr???ng v???i khung v?? ph??? ki???n m??u v??ng h???ng, ba ng??n k??o v???i ch???c n??ng ?????y ????? m???. Ki???u d??ng b??ng: m???t tr?????c v?? m???t tr??n ???????c ???p k??nh m??u tr???ng, t???o cho b??n treo t?????ng m???t s??? tho??ng m??t, nh??? nh??ng. M???t ph???n quan tr???ng cho v??? ngo??i quy???n r?? hi???n ?????i, b???i v?? Elite s??? bi???n b???t k??? c??n h??? n??o th??nh m???t c??n h??? Hollywood. V???i ch???t li???u: Khung: Th??p kh??ng g??? m??? ??i???n, Th??n: G??? d????ng G??? r???n s??n m??i, V??n s???i m???t ????? trung b??nh (MDF) S??n m??i, Tay c???m: Th??p kh??ng g??? m??? ??i???n, T???m: K??nh tr??ng g????ng', 'D1340 - R400 - C820 mm', NULL, 'CTGY4', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY4_PRO02', 'Console Table Gloria Gold 82379K', 35400000, 'CONSOLE-TABLE-GLORIA-GOLD-82379K-2-768x511.jpg', 'CONSOLE-TABLE-GLORIA-GOLD-82379K-1-1-1-768x511.jpg', 'CONSOLE-TABLE-GLORIA-GOLD-82379K-3-768x511.jpg', 1, 1, 'Th??p m??? k???m m??u gold -k??nh c?????ng l???c tr???ng trong', '', 'D1400 - R450 - C820 mm', NULL, 'CTGY4', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY4_PRO03', 'B??n Console Maxine', 28970000, 'console-maxine-768x461.jpg', '1000-san-pham-nha-xinh-10-1-768x511.jpg', 'hinh-tet-nha-tet-xinh-5-768x511.jpg', 1, 1, 'Khung g??? Okumi+ MDF veneer recon Walnut + Ch??n inox m??? PVD m??u gold', 'L?? s???n ph???m gi??p t??ng ti???n ??ch c??ng n??ng nh??ng c??ng l?? n??i ????? b???n th???a s???c trang tr?? v???i c??c khu v???c s??t t?????ng hay nh???ng g??c nh???. B??n console Maxine k???t h???p gi???a khung b???ng kim lo???i ?????ng sang tr???ng v?? khung g??? beech ho??n thi???n mdf veneer. C??c ng??n k??o nh??? gi??p c???t tr??? ????? ?????c v?? t???o ??i???m nh???n t???i c??c tay n???m. Maxine ??? N??t n??u tr???m sang tr???ng Maxine, mang thi???t k??? v?????t th???i gian, g???i g???m v?? g??i g???n l???i nh???ng n??t ?????p c???a thi??n nhi??n v?? con ng?????i nh??ng v???n ?????y t??nh ???ng d???ng cao trong su???t h??nh tr??nh phi??u l??u c???a nh?? thi???t k??? ng?????i Ph??p Dominique Moal. B??? s??u t???p n???i b???t v???i m??u s???c n??u tr???m sang tr???ng, l?? s??? k???t h???p gi???a g???, da b?? v?? kim lo???i v??ng b??ng. ?????c bi???t tr??n m???i s???n ph???m, nh???ng n??t bo vi??n, chi ti???t k???t n???i ???????c s??? d???ng k??o l??o t???o ra ??i???m nh???t r???t ri??ng cho b??? s??u t???p. Maxine th??? hi???n n??t tr???m t??, th?? gi??n ????? t???n h?????ng kh??ng gian s???ng trong nh???p s???ng hi???n ?????i. S???n ph???m thu???c BST Maxine ???????c s???n xu???t t???i Vi???t Nam.', 'D1500 - R350 - C800 mm', NULL, 'CTGY4', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY4_PRO04', 'B??n console Laser Gold', 22390000, 'console-3-101610-768x511.jpg', 'ban-console-gold-101610-768x511.jpg', 'ban-console-gold-101610-1-768x511.jpg', 1, 1, 'Ch??n kim lo???i m??u gold - m???t k??nh', 'B??n console k???t h???p t??? khung kim lo???i m??? v?? m???t k??nh v???i ??i???m nh???n l?? ph???n khung v???i thi???t k??? u???n cong ?????y t??nh ngh??? thu???t. S???n ph???m ph?? h???p cho kh??ng gian kh??ng kh??ch, l???i ??i ho???c ph??ng ng??? v???i phong c??ch sang tr???ng, hi???n ?????i.', 'D1200 - R400 - C780 mm', NULL, 'CTGY4', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY4_PRO05', 'B??n console Osaka', 21600000, 'console-osaka-3-101901-768x511.jpg', '', '', 1, 1, 'G??? Oak - MDF veneer Oak - Inox 304 m??u gold', '', 'D1400 - R400 - C960 mm', NULL, 'CTGY4', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY4_PRO06', 'B??n Console Addict', 20620000, '1000-87387-console-add-gautier-768x511.jpg', '', '', 1, 1, 'G??? Melamine', '', 'D950 - R400 - C750 mm', NULL, 'CTGY4', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY4_PRO07', 'B??n Console Bolero', 19540000, '3_91082_1-768x512.jpg', '3_91082_2-768x512.jpg', 'phong-khach-bolero-768x511.jpg', 1, 1, 'Khung g??? b???c gi??? da c?? ??u???i (faux shagreen)', 'B??n Console hay c??n g???i l?? b??n trang tr??, s???n ph???m c?? th??? ????? nh???ng ????? v???t nh?? khung ???nh gia ????nh, c??c s???n ph???m trang tr?? S??? gi??p cho nh???ng m???ng t?????ng tr???ng c???a nh?? b???n tr??? n??n sinh ?????ng h??n.', 'D1300 - R350 - C750 mm', NULL, 'CTGY4', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY4_PRO08', 'B??n console South Beach', 19630000, '104649-ban-console-south-beach-1-768x511.jpg', '104649-ban-console-south-beach-4-768x511.jpg', '104649-ban-console-south-beach-6-768x511.jpg', 1, 1, 'Ch??n kim lo???i, m???t k??nh', '', 'D1200 - R450 - C750 mm', NULL, 'CTGY4', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY4_PRO09', 'B??n console Vert Iron 77568j', 11440000, 'ban_console_vert_iron-77568j-768x511.jpg', '', '', 1, 1, 'G??? - MDF Veneer', '', 'D1230 - R470 - C770 mm', NULL, 'CTGY4', NULL, NULL, NULL, '', '', '');
 

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY4_PRO10', 'B??n Console Pop', 7900000, 'console-pop-768x511.jpg', '1000-san-pham-nha-xinh_26-4-768x511.jpg', 'ban-console-pop1-768x511.jpg', 1, 1, 'G??? - MDF Veneer Walnut', '', 'D970 - R350 - C770 mm', NULL, 'CTGY4', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY40_PRO001', 'Qu??? ?????a c???u Bel Jar th???y tinh l???n 20137J', 1360000, 'DO-TT-BEL-JAR-LD-FL-GL-WD-W-N-L-20137J-768x495.jpg', 'DO-TT-BEL-JAR-LD-FL-GL-WD-W-N-L-20137J-2-768x495.jpg', 'DO-TT-BEL-JAR-LD-FL-GL-WD-W-N-L-20137J-5-768x495.jpg', 1, 1, 'Th???y tinh', '', 'D150 - R150 - C160 mm', NULL, 'CTGY40', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY40_PRO002', 'T?????ng Con C?? Fish Gold Large 61913K', 25400000, 'TUONG-CON-CA-FISH-GOLD-LARGE-61913K-1-1-768x511.jpg', 'TUONG-CON-CA-FISH-GOLD-LARGE-61913K-3-768x511.jpg', '', 1, 1, 'Nh???a', '', 'D634-R337-C573 mm', NULL, 'CTGY40', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY40_PRO003', 'T?????ng con c?? Betta base 47cm 53556k', 11300000, 'TUONG-CON-CA-BETTA-BASE-47CM-53556K-768x495.jpg', 'TUONG-CON-CA-BETTA-BASE-47CM-53556K-1-768x495.jpg', 'TUONG-CON-CA-BETTA-BASE-47CM-53556K-5-768x495.jpg', 1, 1, 'Nh???a t???ng h???p', '', 'D350 - R280 - C470 mm', NULL, 'CTGY40', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY40_PRO004', 'T?????ng con tu???n l???c Poly l???n 16947J', 1960000, 'CON-TUAN-LOC-GOLD-WHITE-L40X16X37-16947J-768x495.jpg', 'CON-TUAN-LOC-GOLD-WHITE-L40X16X37-16947J-1-768x495.jpg', '', 1, 1, 'Nh???a t???ng h???p', '', 'D400 - R160 - C370 mm', NULL, 'CTGY40', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY40_PRO005', 'Qu??? c???u ???? c???m th???ch tr???ng / kim lo???i v??ng v???a 97961J', 2390000, 'QUA-CAU-GLOBE-ON-FOOT-MARB-WHITE-97961J-768x495.jpg', 'QUA-CAU-GLOBE-ON-FOOT-MARB-WHITE-97961J-1-768x495.jpg', '', 1, 1, 'kim lo???i, ????', '', 'D240 - R230 - C360 mm', NULL, 'CTGY40', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY40_PRO006', 'T?????ng thi??n th???n Nude Angel', 5290000, 'Tuong-thien-than-Nude-Angel-394441-768x511.jpg', '', '', 1, 1, 'S???t', '', 'D180 - R110 - C260 mm', NULL, 'CTGY40', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY40_PRO007', 'T?????ng g?? m??i Hens Reines', 540000, '104236-tuong-ga-mai-reines-1-768x511.jpg', '104236-tuong-ga-mai-reines-768x511.jpg', '', 1, 1, 'G???m s???', '', '??130 mm', NULL, 'CTGY40', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY40_PRO008', 'T?????ng b??o ?????m', 22000000, '104281-bao-chetah-768x511.jpg', '', '', 1, 1, 'Kim lo???i', '', 'D410 - R200 - C220 mm', NULL, 'CTGY40', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY41_PRO01', 'Th???m Harmony 2mx2m9 Desert 610039Z', 29700000, 'THAM-HARMONY-2mx2m9-DESERT-610039Z-1.jpg', 'THAM-HARMONY-2mx2m9-DESERT-610039Z-1.jpg', 'THAM-HARMONY-2mx2m9-DESERT-610039Z-1.jpg', 1, 1, '100% s???i d???t b???ng m??y -m??u Beige/Yellow', '', 'D2900-R2000-C10 mm', NULL, 'CTGY41', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY41_PRO02', 'Th???m Solar 1m6x2m3 Grey Terra 610045Z', 16800000, 'THAM-SOLAR-1m6-x-2m3-GREY-TERRA-610045Z-1-768x511.jpg', 'THAM-SOLAR-1m6-x-2m3-GREY-TERRA-610045Z-1-768x511.jpg', 'THAM-SOLAR-1m6-x-2m3-GREY-TERRA-610045Z-1-768x511.jpg', 1, 1, 'Decolan -m??u Grey/Brown', '', 'D2300-R1600-C10 mm', NULL, 'CTGY41', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY41_PRO03', 'Th???m Yenga Breeze 170X240 600081K', 17700000, 'THAM-YENGA-BREEZE-170X240-600081Z-1-768x511.jpg', 'THAM-YENGA-BREEZE-170X240-600081Z-1-768x511.jpg', 'THAM-YENGA-BREEZE-170X240-600081Z-1-768x511.jpg', 1, 1, 'V???i s???i', '', 'D2400-R1700-C0 mm', NULL, 'CTGY41', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY41_PRO04', 'T???m l??ng c???u PD4 D', 3600000, 'TAM-LONG-CUU-SHEEP-FUR-SKIN-PD4-D-2-768x495.jpg', 'TAM-LONG-CUU-SHEEP-FUR-SKIN-PD4-D-2-768x495.jpg', 'TAM-LONG-CUU-SHEEP-FUR-SKIN-PD4-D-2-768x495.jpg', 1, 1, 'Th???y tinh, Kim lo???i', '', 'D500 - R500 mm', NULL, 'CTGY41', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY41_PRO05', 'Th???m da b?? ??en tr???ng BN D', 13290000, 'THAM-DA-BO-COW-SKIN-BLACK-WHIRE-BN-D-768x495.jpg', 'THAM-DA-BO-COW-SKIN-BLACK-WHIRE-BN-D-768x495.jpg', 'THAM-DA-BO-COW-SKIN-BLACK-WHIRE-BN-D-768x495.jpg', 1, 1, 'Da b?? ???? thu???c', '', 'D2500 - R2000 mm', NULL, 'CTGY41', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY41_PRO06', 'Th???m da b?? n??u TN D 2.5??1.8M', 15290000, 'THAM-DA-BO-COW-SKIN-BROWN-TN-D-2.5x1.8M-768x495.jpg', 'THAM-DA-BO-COW-SKIN-BROWN-TN-D-2.5x1.8M-768x495.jpg', 'THAM-DA-BO-COW-SKIN-BROWN-TN-D-2.5x1.8M-768x495.jpg', 1, 1, 'Da b?? ???? thu???c', '', 'D2500 - R1800 mm', NULL, 'CTGY41', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY41_PRO07', 'Th???m Magic 160??230 xanh d????ng', 18560000, '104679-tham-magic-ocean-1-768x511.jpg', '104679-tham-magic-ocean-1-768x511.jpg', '104679-tham-magic-ocean-1-768x511.jpg', 1, 1, 'S???i d???t nh??n t???o', '', '1600 x 2300 mm', NULL, 'CTGY41', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY41_PRO08', 'Th???m Hilton 2mx2m9 Grey Yellow 610004Z', 24900000, 'THAM-HILTON-2m-x-2m9-GREY-YELLOW-610004Z-1-768x511.jpg', 'THAM-HILTON-2m-x-2m9-GREY-YELLOW-610004Z-1-768x511.jpg', 'THAM-HILTON-2m-x-2m9-GREY-YELLOW-610004Z-1-768x511.jpg', 1, 1, 'Decolan -m??u Grey/Yellow', '', 'D2900-R2000-C10 mm', NULL, 'CTGY41', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY42_PRO01', '????a h??nh chim c??ng', 360000, '104307-dia-hinh-con-cong-1-768x511.jpg', '104307-dia-hinh-con-cong-1-768x511.jpg', '104307-dia-hinh-con-cong-1-768x511.jpg', 1, 1, 'G???m s???', '', '??380 - C150 mm', NULL, 'CTGY42', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY42_PRO02', 'D??a nh???n tr??n Aluminium v??ng 36-30cm S2 18431', 2370000, 'DIA-ROUND-RINGS-ALU-GD-36-30CM-S2-18431-768x495.jpg', 'DIA-ROUND-RINGS-ALU-GD-36-30CM-S2-18431-768x495.jpg', 'DIA-ROUND-RINGS-ALU-GD-36-30CM-S2-18431-768x495.jpg', 1, 1, 'Kim lo???i', '', 'D300 - R300 - C40 mm', NULL, 'CTGY42', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY42_PRO03', 'D??a th???y tinh v???a Olho Bleu DHU002/BL', 3590000, 'DIA-DISH-OLHO-BLEU-MEDIUMGLASS-DHU002-BL-768x495.jpg', 'DIA-DISH-OLHO-BLEU-MEDIUMGLASS-DHU002-BL-768x495.jpg', 'DIA-DISH-OLHO-BLEU-MEDIUMGLASS-DHU002-BL-768x495.jpg', 1, 1, 'Th???y tinh', '', 'D410 - R300 - C60 mm', NULL, 'CTGY42', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY42_PRO04', 'Khay Deco Dish Ginkgo Rim', 940000, '395437-768x511.jpg', '395437-768x511.jpg', '395437-768x511.jpg', 1, 1, 'S???', '', 'D280 - R280 - C50 mm', NULL, 'CTGY42', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY42_PRO05', 'Khay deco Parrot 52914K', 1030000, 'Khay-Deco-Parrot-52914K-3105581-768x454.jpg', 'Khay-Deco-Parrot-52914K-3105581-768x454.jpg', 'Khay-Deco-Parrot-52914K-3105581-768x454.jpg', 1, 1, 'S??n th??? c??ng m??u gold - xanh', '', 'D205 - R100 - C140 mm', NULL, 'CTGY42', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY42_PRO06', 'Ly s??? Filter Imany', 580000, '104234-ly-su-filter-imany-768x511.jpg', '104234-ly-su-filter-imany-768x511.jpg', '104234-ly-su-filter-imany-768x511.jpg', 1, 1, 'G???m s???', '', '??130 - C100 mm', NULL, 'CTGY42', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY42_PRO07', '???m tr?? Infuseur Imany', 1300000, '104235-am-tra-infuseur-imany-768x511.jpg', '104235-am-tra-infuseur-imany-768x511.jpg', '104235-am-tra-infuseur-imany-768x511.jpg', 1, 1, 'G???m s???', '', 'D147 - R120 - C130 mm', NULL, 'CTGY42', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY42_PRO08', '???m tr?? s???c xanh tr???ng QV31913', 790000, 'am-tra-soc-xanh-trang-768x511.jpg', 'am-tra-soc-xanh-trang-768x511.jpg', 'am-tra-soc-xanh-trang-768x511.jpg', 1, 1, 'G???m s??? cao c???p', '', 'D190-R155-C155 mm', NULL, 'CTGY42', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY43_PRO01', 'Tranh ABS k??nh tr???ng / ??en m???u 2 18610J', 4190000, 'TRANH-ABS-FAC-MDF-GL-WH-BL-ASS2-18610J-768x495.jpg', 'TRANH-ABS-FAC-MDF-GL-WH-BL-ASS2-18610J-768x495.jpg', 'TRANH-ABS-FAC-MDF-GL-WH-BL-ASS2-18610J-768x495.jpg', 1, 1, 'G???', '', 'D600 - R40 - C900 mm', NULL, 'CTGY43', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY43_PRO02', 'Tranh bi???n xanh thuy???n tr???ng 100??100 350734I', 7200000, 'TRANH-100X100-SEA-350734I-3-768x495.jpg', 'TRANH-100X100-SEA-350734I-3-768x495.jpg', 'TRANH-100X100-SEA-350734I-3-768x495.jpg', 1, 1, 'G??? c??ng nghi???p', '', 'D1000 - R37 - C1000 mm', NULL, 'CTGY43', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY43_PRO03', 'Tranh b??nh hoa 102??102 102964I', 8190000, 'TRANH-102X102-FLOWER-102964I-4-768x495.jpg', 'TRANH-102X102-FLOWER-102964I-4-768x495.jpg', 'TRANH-102X102-FLOWER-102964I-4-768x495.jpg', 1, 1, 'G??? v???i canvas', '', 'D1025 - C1025 mm', NULL, 'CTGY43', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY43_PRO04', 'Tranh con ch?? 80??120 852224I', 9200000, 'KHUNG-HINH-80X120-DOG-852224I-768x495.jpg', 'KHUNG-HINH-80X120-DOG-852224I-768x495.jpg', 'KHUNG-HINH-80X120-DOG-852224I-768x495.jpg', 1, 1, 'G??? v???i canvas', '', 'D800 - R18 - C1200 mm', NULL, 'CTGY43', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY43_PRO05', 'Tranh con c??ng 80??120 853364I', 9200000, 'KHUNG-HINH-80X120-PEACOCK-853364I-768x495.jpg', 'KHUNG-HINH-80X120-PEACOCK-853364I-768x495.jpg', 'KHUNG-HINH-80X120-PEACOCK-853364I-768x495.jpg', 1, 1, 'G??? v???i canvas', '', 'D800 - R18 - C1200 mm', NULL, 'CTGY43', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY43_PRO06', 'Tranh con m??o 80??120 852324I', 9200000, 'KHUNG-HINH-80X120-CAT-852324I-768x495.jpg', 'KHUNG-HINH-80X120-CAT-852324I-768x495.jpg', 'KHUNG-HINH-80X120-CAT-852324I-768x495.jpg', 1, 1, 'G??? v???i canvas', '', 'D800 - R18 - C1200 mm', NULL, 'CTGY43', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY43_PRO07', 'Tranh Flow 60??90 753142I', 4650000, 'KHUNG-HINH-60X90-FLOW-753142I-768x495.jpg', 'KHUNG-HINH-60X90-FLOW-753142I-768x495.jpg', 'KHUNG-HINH-60X90-FLOW-753142I-768x495.jpg', 1, 1, 'G??? v???i canvas', '', 'D600 - R11 - C900 mm', NULL, 'CTGY43', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY43_PRO08', 'Tranh hai con v???t 100??100 203814I', 5580000, 'KHUNG-HINH-100X100-PARROT-203814I-768x495.jpg', 'KHUNG-HINH-100X100-PARROT-203814I-768x495.jpg', 'KHUNG-HINH-100X100-PARROT-203814I-768x495.jpg', 1, 1, 'G??? v???i canvas', '', 'D1000 - R37 - C1000 mm', NULL, 'CTGY43', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY44_PRO01', 'Xe ?????y ????? ??n m??u v??ng ?????ng W3 8MM 53028', 17500000, 'Xe-day-do-an-Ba-Finish-W3-8MM-53028-2-768x495.jpg', 'Xe-day-do-an-Ba-Finish-W3-8MM-53028-2-768x495.jpg', 'Xe-day-do-an-Ba-Finish-W3-8MM-53028-2-768x495.jpg', 1, 1, 'Kim lo???i Th???y tinh', 'Xe ?????y ????? ??n Ba Finish W3 8MM 53028 ???????c l??m b???ng ch???t li???u t??? kim lo???i k???t h???p v???i th???y tinh m??u gold th???i th?????ng ph???c v??? nh???ng m??n ??n, ????? u???ng th??m ngon h???p d???n mang ?????n phong c??ch sang tr???ng trang ho??ng cho ph??ng ??n c???a b???n th??m hi???n ?????i v?? ?????ng c???p h??n.', 'D860-R450-C900 mm', NULL, 'CTGY44', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY44_PRO02', 'Xe ?????y th??p/pu/mdf m??u c?? ph?? 58257', 8340000, 'Xe-day-steel-pu-mdf-Polish-coffee-58257-768x495.jpg', 'Xe-day-steel-pu-mdf-Polish-coffee-58257-768x495.jpg', 'Xe-day-steel-pu-mdf-Polish-coffee-58257-768x495.jpg', 1, 1, 'Kim lo???i, Da t???ng h???p', '', 'D470-R365-C760 mm', NULL, 'CTGY44', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY44_PRO03', 'Xe ?????y ????? ??n Love', 2577000, 'xe-day-do-an-love-768x511.jpg', 'xe-day-do-an-love-768x511.jpg', 'xe-day-do-an-love-768x511.jpg', 1, 1, 'Kim lo???i s??n ??en , m???t k??nh c?????ng l???c m??u tr??', '', 'D800- R510- C810 mm', NULL, 'CTGY44', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY44_PRO04', 'Xe ?????y ????? ??n Giro', 37430000, 'xe-day-do-an-768x511.jpg', 'xe-day-do-an-768x511.jpg', 'xe-day-do-an-768x511.jpg', 1, 1, 'Kim lo???i s??n ??en- M???t g??? s??n , khay tr??n da t???ng h???p m??u Cognac', '', 'D940- R480- C820 mm', NULL, 'CTGY44', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY44_PRO05', 'Xe ?????y ????? ??n Tray West Coast', 13650000, 'ban-tray-west-coast-4-768x511.jpg', 'ban-tray-west-coast-4-768x511.jpg', 'ban-tray-west-coast-4-768x511.jpg', 1, 1, 'Khung kim lo???i m???t k??nh', '', 'D600- R370- C680 mm', NULL, 'CTGY44', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY44_PRO06', 'Xe ?????y ????? Wheel Metal', 18170000, 'xe-day-do-wheel-metal-768x511.jpg', 'xe-day-do-wheel-metal-768x511.jpg', 'xe-day-do-wheel-metal-768x511.jpg', 1, 1, 'Kim lo???i s??n ??en - h???ng t??m', '', 'D920 -R520-C780 mm', NULL, 'CTGY44', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY44_PRO07', 'Xe ?????y ????? ??n W/Wheels', 16600000, 'xe_day_do_an-768x511.jpg', 'xe_day_do_an-768x511.jpg', 'xe_day_do_an-768x511.jpg', 1, 1, 'Kim lo???i m??u gold - K??nh tr???ng', '', 'D620-R410-C810 mm', NULL, 'CTGY44', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY44_PRO08', 'Xe ?????y ????? ??n Trolly', 7700000, 'xe_day_do_an_trolly-768x511.jpg', 'xe_day_do_an_trolly-768x511.jpg', 'xe_day_do_an_trolly-768x511.jpg', 1, 1, 'Kim lo???i m??? chrome - K??nh tr???ng trong', '', 'D620-R410-C810 mm', NULL, 'CTGY44', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY5_PRO01', 'B??n ?????u gi?????ng Skagen b??n tr??i', 4420000, 'ban-dau-giuong-skagen-768x511.png', '1000-san-pham-nha-xinh74-1.jpg', '1000-san-pham-nha-xinh74-3.jpg', 1, 1, 'G??? + MDF Veneer Walnut', '', 'D400 - R320 - C507 mm', NULL, 'CTGY5', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY5_PRO02', 'B??n ?????u gi?????ng Skagen b??n ph???i', 4420000, 'ban-dau-giuong-skagen-768x511.png', '1000-san-pham-nha-xinh74-1.jpg', '1000-san-pham-nha-xinh74-3.jpg', 1, 1, 'G??? + MDF Veneer Walnut', '', 'D400 - R320 - C507 mm', NULL, 'CTGY5', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY5_PRO03', 'B??n ?????u gi?????ng Shadow
', 9900000, 'ban-dau-giuong-shadow-768x511.jpg', 'phong-ngu-shadow-768x511.jpg', '', 1, 1, 'Ch??n, tay n???m kim lo???i m??u ?????ng + MDF Veneer s???i', '', 'D610 - R400 - C520', NULL, 'CTGY5', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY5_PRO04', 'B??n ?????u gi?????ng Cabo PMA532058 F1', 8900000, 'BAN-DAU-GIUONG-CABO-PMA532058-F1-768x511.jpg', 'BAN-DAU-GIUONG-CABO-PMA532058-F1-1-768x511.jpg', '', 1, 1, 'MDF m??u walnut, ch??n kim lo???i s??n ??en, m???t ngo??i h???c k??o m??u xanh Olive', 'B??n ?????u gi?????ng Cabo ???????c thi???t k??? h??nh h???p ch??? nh???t v???i ch???t li???u ???????c l??m t??? MDF m??u walnut, ch??n b??n b???ng kim lo???i s??n ??en. B??n ?????u gi?????ng g???m 1 h???c k??o v?? 1 ng??n ?????ng. H???c k??o c?? m??u xanh olive c??ng v???i v???i hoa v??n ?????c ????o. B??n ?????u gi?????ng l?? s???n ph???m l?? t?????ng trong thi???t k??? kh??ng gian ph??ng ng??? v?? c?? thi???t k??? sang tr???ng, hi???n ?????i.', 'D500 - R400 - C550 mm', NULL, 'CTGY5', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY5_PRO05', 'B??n ?????u gi?????ng Pop', 7760000, '1000-san-pham-nha-xinh_22-768x511.jpg', '1000-san-pham-nha-xinh_22-1-1-768x511.jpg', '1000-san-pham-nha-xinh_22-3-768x511.jpg', 1, 1, 'G??? Beech - MDF Veneer Walnut', '', 'D430 - R410 - C580 mm', NULL, 'CTGY5', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY5_PRO06', 'B??n ?????u gi?????ng Osaka', 7200000, 'ban-dau-giuong-osaka-3-101893-2-768x511.jpg', 'ban-dau-giuong-osaka-3-101893-768x511.jpg', 'ban-dau-giuong-osaka-3-101893.jpg', 1, 1, 'G??? Oak - MDF veneer Oak - Inox 304 m??u gold', '', 'D550 - R480 - C510 mm', NULL, 'CTGY5', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY5_PRO07', 'B??n ?????u gi?????ng Miami', 7200000, 'line_bed-beside-table.jpg', 'phong-ngu-miami-768x511.jpg', '', 1, 1, 'G??? s???i t??? nhi??n + MDF ch???ng ???m', '', 'D600 - R420 - C500 mm', NULL, 'CTGY5', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY5_PRO08', 'B??n ?????u gi?????ng Victoria', 7170000, 'ban-dau-giuong-victoria-1-768x511.png', '1000-san-pham-nha-xinh87-4-768x511.jpg', '', 1, 1, 'G??? s???i (oak) - MDF s??n tr???ng', 'V???i c??c ???????ng n??t ch???m kh???c, ph???n u???n cong l??? m???t theo phong c??ch c??? ??i???n ch??u ??u, b??n ?????u gi?????ng Victoria l?? ph???n kh??ng th??? thi???u khi k???t h???p v???i gi?????ng ng??? Victoria. B??n ???????c l??m b???ng g??? X?? C??? x??? l?? tinh t???, ph???n tay n???m h???a ti???t s??? l?? ??i???m nh???n cho ph??ng ng??? nh?? b???n', 'D550 - R450 - C670 mm', NULL, 'CTGY5', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY5_PRO09', 'B??n ?????u gi?????ng Melody', 6780000, 'ban-dau-giuong-melody-1000-768x511.jpg', 'ban-dau-giuong-melody-1-500.jpg', '', 1, 1, 'G??? - MDF', '', 'D450 - R350- C700 mm', NULL, 'CTGY5', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY5_PRO10', 'B??n ?????u gi?????ng Harmony', 3150000, 'ban-dau-giuong-harmony-1_3_66049_1-768x461.jpg', 'ban_dau_giuong_kevin_b_l.jpg', '960-pc-bac-au-phong-ngu-harmony-768x480.jpg', 1, 1, 'G??? s???i+ tr??m, MDF s??n tr???ng', 'T??? ?????u gi?????ng Harmony l?? s??? ph???i h???p tinh t??? gi???a m??u tr???ng nh??? nh??ng v?? m??u t??? nhi??n c???a g??? l??m cho chi???c t??? th??m ph???n tinh t???. T??? ???????c l??m b???ng g??? tr??m, v??n l???ng s???i ho??n thi???n vecni m??u t??? nhi??n v?? s??n tr???ng m???n. T??? ?????u gi?????ng c?? th??? k???t h???p v???i gi?????ng ng??? Harmony s??? mang l???i c???m gi??c m???i m??? cho n???i th???t ph??ng ng???.', 'D500 - R460 - C600 mm', NULL, 'CTGY5', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY6_PRO01', 'B??n l??m vi???c Maxine', 51940000, '86828_1000-768x511.jpg', '1000-san-pham-nha-xinh_11-1-768x511.jpg', '1000-san-pham-nha-xinh_11-3-768x511.jpg', 1, 1, 'Khung g??? Okumi, MDF veneer recon Walnut, ch??n inox m??? PVD m??u gold, m???t b??n b???c da', 'M???t thi???t k??? b??n l??m vi???c ?????ng c???p cho kh??ng gian l??m vi???c c???a b???n, Maxine s??? d???ng ch???t li???u da tr??n b??? m???t, khung g??? ho??n thi???n mdf veneer n??u tr???m sang tr???ng t???o c???m gi??c th?? th??i, nh??? nh??ng. C??ng n??ng c???a chi???c b??n ???????c s???p t???i ??u v???i c??c h???c k??o r???ng. Maxine ??? N??t n??u tr???m sang tr???ng Maxine, mang thi???t k??? v?????t th???i gian, g???i g???m v?? g??i g???n l???i nh???ng n??t ?????p c???a thi??n nhi??n v?? con ng?????i nh??ng v???n ?????y t??nh ???ng d???ng cao trong su???t h??nh tr??nh phi??u l??u c???a nh?? thi???t k??? ng?????i Ph??p Dominique Moal. B??? s??u t???p n???i b???t v???i m??u s???c n??u tr???m sang tr???ng, l?? s??? k???t h???p gi???a g???, da b?? v?? kim lo???i v??ng b??ng. ?????c bi???t tr??n m???i s???n ph???m, nh???ng n??t bo vi??n, chi ti???t k???t n???i ???????c s??? d???ng k??o l??o t???o ra ??i???m nh???t r???t ri??ng cho b??? s??u t???p. Maxine th??? hi???n n??t tr???m t??, th?? gi??n ????? t???n h?????ng kh??ng gian s???ng trong nh???p s???ng hi???n ?????i. S???n ph???m thu???c BST Maxine ???????c s???n xu???t t???i Vi???t Nam.', 'D1800 - R1180 - C750 mm', NULL, 'CTGY6', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY6_PRO02', 'B??n l??m vi???c Osaka KA', 4890000, '104692-ban-lam-viec-osaka-1-768x511.jpg', '104692-ban-lam-viec-osaka-4-768x511.jpg', '104692-ban-lam-viec-osaka-5-768x511.jpg', 1, 1, 'Ch??n kim lo???i, m???t g??? c??ng nghi???p s??n', '', 'D1380 - R600 - C810 mm', NULL, 'CTGY6', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY6_PRO03', 'B??n l??m vi???c Osaka', 22900000, 'Ban-lam-viec-Osaka-3101891-1-768x511.jpg', 'Ban-lam-viec-Osaka-3101891-768x511.jpg', '', 1, 1, 'G??? Oak - MDF veneer Oak - Inox 304 m??u gold', '', 'D1380 - R600 - C760 mm', NULL, 'CTGY6', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY6_PRO04', 'B??n l??m vi???c Osaka', 22900000, 'Ban-lam-viec-Osaka-3101891-1-768x511.jpg', 'Ban-lam-viec-Osaka-3101891-768x511.jpg', '', 1, 1, 'G??? Oak - MDF veneer Oak - Inox 304 m??u gold', '', 'D1380 - R600 - C760 mm', NULL, 'CTGY6', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY6_PRO05', 'B??n l??m vi???c Kate', 13260000, '56504-500-nha-xinh-phong-lam-viec-ban-lam-viec.jpg', '56504-500-nha-xinh-phong-lam-viec-ban-lam-viec.jpg', '56504-500-nha-xinh-phong-lam-viec-ban-lam-viec', 1, 1, 'G??? s???i s??n tr???ng l???y ghim', 'B??n l??m vi???c Kate mang phong c??ch b??n c??? ??i???n v???i m??u tr???ng nh??? nh??ng nh?? t?? ??i???m cho kh??ng gian th??m s??ng. B??n Kate ???????c l??m b???ng g??? s???i s??n l???y ghim gi??p ng?????i s??? d???ng v???n c???m nh???n ???????c t???ng th??? g???', 'D1500 - R500 - C750 mm', NULL, 'CTGY6', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY6_PRO06', 'B??n l??m vi???c Layers', 44182000, 'ban_lv_layer-768x511.jpg', 'ban_lv_layer-768x511.jpg', 'ban_lv_layer-768x511.jpg', 1, 1, 'Ch??n kim lo???i - MDF Veneer', 'B??n l??m vi???c Layer l?? m???t s???n ph???m t??? th????ng hi???u ?? Calligaris, v???i thi???t k??? ????ng nh?? t??n g???i, Layer cho nhi???u l???p m???t b??n gi??p m??? r???ng kh??ng gian l??m vi???c. V???i thi???t k??? sang tr???ng v?? hi???n ?????i, chi???c b??n n??y s??? l??m kh??ng gian l??m vi???c c???u b???n tr??? n??n n??ng ?????ng v?? tuy???t v???i h??n.', 'D1620-R720-C880mm', NULL, 'CTGY6', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY6_PRO07', 'B??n l??m vi???c Biblio', 56900000, 'ban-lam-viec-biblio_2-768x511.jpg', 'ban-lam-viec-biblio_2-768x511.jpg', 'ban-lam-viec-biblio_2-768x511.jpg', 1, 1, 'Ch??n kim lo???i, MDF, Da', 'B??n l??m vi???c Biblio v???i thi???t k??? ?????c bi???t th??? da v?? ph???n ch??n kim lo???i ph?? h???p v???i ng?????i ??a th??ch s??? ri??ng t??. Nh??? ph???n da bao b???c xung quanh, b???n s??? kh??ng s??? l??m r??i m???t th??? g?? tr??n b??n.', 'D1040- R530- C1020 mm', NULL, 'CTGY6', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY6_PRO08', 'B??n l??m vi???c B???i', 7760000, 'ban_lam_viec_bui3-4-768x511.jpg', 'ban_lam_viec_bui3-4-768x511.jpg', 'ban_lam_viec_bui3-4-768x511.jpg', 1, 1, 'G??? Th??ng + MDF Veneer Th??ng + Kim lo???i s??n tinh ??i???n', 'Chi???c b??n v???i thi???t k??? tuy???t v???i v?? c??ng n??ng t??? g??? th??ng s??ng m??u v?? ch??n kim lo???i ch???c ch???n. M???t b??n c?? c??c c???nh cao gi??p gi??? ????? kh??ng b??? r??i, ch??nh gi???a l?? ph???n kh???p r???i c?? th??? d??? d??ng n??ng cao ho???c h??? xu???ng h??? tr??? cho vi???c v???, ????? m??y t??nh v?? ?????c s??ch. Chi???c b??n n??ng ?????ng r?? r???t ph?? h???p cho c??c b???n mu???n mu???n t??m m???t kh??ng gian ho??n h???o d??? s??ng t??c', 'D1200- R580- C720 mm', NULL, 'CTGY6', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY7_PRO01', 'B??n n?????c Pio', 7500000, 'line-pio_dining-table_023.jpg', 'line-pio_dining-table_023.jpg', 'line-pio_dining-table_023.jpg', 1, 1, 'G??? Beech + M???t Melamine marble', 'B??n n?????c PIO thu h??t ??nh nh??n v???i m???t b??n b???ng ch???t li???u hi???n ?????i melamine marble. Thi???t k??? v???i ki???u d??ng oval gi??p, b??n n?????c Pio t???o ??i???m nh???n kh??c bi???t cho kh??ng gian ph??ng kh??ch c???a b???n. Vi???c b??? sung ng??n b??n d?????i l?? khu ch???a ????? c??ng nh?? tr??ng b??y c??c v???t d???ng trang tr??. PIO ??? V??? ?????p y??n b??nh gi???a l???i s???ng ???? th??? Pha tr???n gi???a phong c??ch scandinavian v?? s??? m???i l??? trong ch???n l???a m??u s???c, b??? s??u t???p PIO to??t l??n v??? ?????p nh??? nh??ng, thanh l???ch v?? c??ng r???t g???n g??i v???i thi??n nhi??n. PIO th??? hi???n l???i s???ng c???a nh???ng ng?????i tr???, bi???t chi??m nghi???m v?? th?????ng ngo???n s??? tr??? v??? b??nh y??n gi???a nh???p s???ng hi???n ?????i. Thi???t k??? b???i nh???ng ???????ng cong, ??i???m xuy???n c??c chi ti???t nh???n nh?? b??n c???nh s??? d???ng c??c v???t li???u nh?? g??? beech, melamine marble.. gi??p PIO tr??? n??n c?? t??nh v?? thu h??t trong kh??ng gian hi???n ?????i. S???n ph???m ???????c thi???t k??? b???i ?????i ng?? Nh?? Xinh v?? s???n xu???t t???i Vi???t Nam.', 'D1100-R700-C400 mm', NULL, 'CTGY7', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY7_PRO02', 'B??n n?????c bar 200??75 75167K
', 69500000, 'BAN-NUOC-BAR-120X75-75167K-768x495.jpg', 'BAN-NUOC-BAR-120X75-75167K-768x495.jpg', 'BAN-NUOC-BAR-120X75-75167K-768x495.jpg', 1, 1, 'g??? c??ng nghi???p', '', 'D2000 - R750 - C370 mm', NULL, 'CTGY7', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY7_PRO03', 'B??n n?????c M??y ??? 2 Modul', 10710000, 'bo_ban_nuoc_may_mat_kinh_khung_go_100671-768x511.jpg', 'bo_ban_nuoc_may_mat_kinh_khung_go_100671-768x511.jpg', 'bo_ban_nuoc_may_mat_kinh_khung_go_100671-768x511.jpg', 1, 1, 'G??? Acacia (Tr??m)- M???t tr??n Laminate, m??y t??? nhi??n, k??nh tr???ng - Ch??n b???c inox m??? gold', 'M???t chi???c b??n n?????c k???t h???p nh???p nh??ng b???i 2 kh???i h??nh kh??c nhau v??? ????? cao. B??n n?????c M??y gi??p cho kh??ng gian ph??ng kh??ch tr??? n??n c?? t??nh h??n. S???n ph???m s??? d???ng ch???t li???u ???? marble cho ph???n m???t b??n, ???????c bao quanh b???i k???t c???u khung g??? v?? nh???n nh?? v???i ph???n ch??n kim lo???i ?????ng hi???n ?????i. M??y ??? H???n Vi???t trong h??i th??? hi???n ?????i B??? s??u t???p M??y g???i l???i nh???ng h???i ???c thanh b??nh v?? g???n g??i c???a h???n qu?? Vi???t cho l???i s???ng ch???m ????? th?????ng ngo???n gi???a nh???p s???ng hi???n ?????i. Nh?? t??n g???i c???a n??, b??? s??u t???p l???y c???m h???ng v???i ch???t li???u m??y l??m ??i???m nh???n k???t h???p v???i c??c ch???t li???u hi???n ?????i nh?? da, g??? t???n b??, ???? marble v?? ?????ng thau. S??? kh??o l??o trong vi???c s??? d???ng ch???t li???u v?? nh???ng ???????ng n??t thi???t k??? ???? gi??p cho c??c s???n ph???m c???a M??y tr??? n??n hi???n ?????i, ?????y t??nh th???m m??? v?? c??ng gi??u c??ng n??ng. B??? s??u t???p M??y ???????c thi???t k??? b???i ?????i ng?? Nh?? Xinh v?? s???n xu???t t???i Vi???t Nam.', 'D800-R500-C420 / D1000-R400-C350 mm', NULL, 'CTGY7', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY7_PRO04', 'B??n n?????c Chamcha m???t k??nh', 17190000, '86669-ban-nuoc-cham-cham-mat-kinh-768x511.jpg', '86669-ban-nuoc-cham-cham-mat-kinh-768x511.jpg', '86669-ban-nuoc-cham-cham-mat-kinh-768x511.jpg', 1, 1, 'G??? tr??m, Heydua veneer , M???t k??nh', 'Khung b??n ???????c l??m t??? g??? tr??m cho ????? ch???u l???c t???t, m???t b??n v???i hoa v??n ??an th??? c??ng v?? k??nh c?????ng l???c ch???c ch???n. C??c g??c b??n bo tr??n th??n thi???n, s???n ph???m ph?? h???p v???i kh??ng gian truy???n th???ng l???n hi???n ?????i nh??? ki???u d??ng v?? m??u s???c trung t??nh', 'D1300-R650-C400 mm', NULL, 'CTGY7', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY7_PRO05', 'B??n n?????c Rumba', 4420000, 'ban-nuoc-rumba-768x461.jpg', 'ban-nuoc-rumba-768x461.jpg', 'ban-nuoc-rumba-768x461.jpg', 1, 1, 'G??? t???n b?? (Ash)- MDF s??n tr???ng', 'B??n n?????c Rumba v???i s??? k???t h???p c???a ch??n g??? t???n b?? chu???t thon cao v?? b??? m???t s??n tr???ng ???????c x??? l?? kh??o l??o tinh t??? s??? l?? t??m ??i???m nh???n n???i b???t cho ph??ng kh??ch, ph?? h???p v???i c??c ki???u sofa hi???n ?????i, b??n n?????c s??? ho??n h???o h??n khi k???t h???p v???i b??? s??u t???p Roma.', 'D1000 - R600 - C400 mm', NULL, 'CTGY7', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY7_PRO06', 'B??n n?????c Shadow', 9900000, 'ban-nuoc-shadow.jpg', 'ban-nuoc-shadow.jpg', 'ban-nuoc-shadow.jpg', 1, 1, 'Ch??n kim lo???i m??u ?????ng + MDF Veneer s???i', '', 'D1200- R650- C400 mm', NULL, 'CTGY7', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY7_PRO07', 'B??n n?????c Bridge m???t Marble', 3750000, 'ban-nuoc-bridge-82524-768x511.jpg', 'ban-nuoc-bridge-82524-768x511.jpg', 'ban-nuoc-bridge-82524-768x511.jpg', 1, 1, 'Ch??n k??nh c?????ng l???c , m???t b??n Ceramic d??n tr??n k??nh', 'V???i thi???t k??? t???i gi???n, nh???ng ???????ng n??t h??nh h???c, b??n n?????c Bridge c?? hai b??n ch??n ???????c d??ng k??nh gi???m nhi???t v?? m???t ???? ceramic ???????c nh???n nh?? v???i thi???t k??? h??nh ch??? nh???t. Bridge l?? s??? l???a ch???n ho??n h???o cho ph??ng kh??ch.', 'D1200 - R700 - C350 mm', NULL, 'CTGY7', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY7_PRO08', 'B??n n?????c Filo', 1226800, '92845-1000-768x511.jpg', '92845-1000-768x511.jpg', '92845-1000-768x511.jpg', 1, 1, 'Ch??n kim lo???i s??n tr???ng - M???t MDF', '', 'D820-R430-C440 mm', NULL, 'CTGY7', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY8_PRO01', 'B??n HCN Bistro 0239 Taupe', 8640000, 'ban-ngoai-troi-3-101964-768x511.jpg', 'ban-ngoai-troi-3-101964-768x511.jpg', 'ban-ngoai-troi-3-101964-768x511.jpg', 1, 1, 'Th??p s??n t??nh ??i???n c??ng ngh??? cao', '', '??800-C760 mm', NULL, 'CTGY8', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY8_PRO02', 'B??n Ngo??i Tr???i Albert Garden 210094K', 21700000, 'BAN-NGOAI-TROI-ALBERT-GARDEN-210094Z-1-1-768x511.jpg', 'BAN-NGOAI-TROI-ALBERT-GARDEN-210094Z-1-1-768x511.jpg', 'BAN-NGOAI-TROI-ALBERT-GARDEN-210094Z-1-1-768x511.jpg', 1, 1, 'Ch??n -khung Aluminium m???t b??n k??nh tr???ng trong', 'Chi???c b??n nh??? th???m m??? c???a b??? s??u t???p 1900 mang t??nh bi???u t?????ng, thi???t k??? g???n nh??? c???a n?? gi??p vi???c di chuy???n d??? d??ng h??n trong s??n v?????n v?? ban c??ng nh?? b???n. Chi???c b??n c?? th??? l???p b??nh xe ??? phi??n b???n kh??c ????? h??? tr??? vi???c di chuy???n nhanh h??n n???a. Tr???ng l?????ng: 4.4 kg Khung: Thanh th??p | M???t b??n: Th??p t???m ?????c l??? 24 m??u t??y ch???n', '??400 - C610', NULL, 'CTGY8', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY8_PRO03', 'B??n b??n 2 t???ng Fermob Guinguette ??? Willow green', 5400000, '103791-ban-ngoi-troi-2-tang-guingette-fermob-willowgreen-768x511.jpg', '103791-ban-ngoi-troi-2-tang-guingette-fermob-willowgreen-768x511.jpg', '103791-ban-ngoi-troi-2-tang-guingette-fermob-willowgreen-768x511.jpg', 1, 1, 'Kim lo???i s??n t??nh ??i???n', '', '??400 - C610', NULL, 'CTGY8', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY8_PRO04', 'B??n tr??n Lorette D110 Red Ochre 576120', 28900000, 'BAN-TRON-LORETTE-D110-RED-OCHRE-576120-768x511.jpg', 'BAN-TRON-LORETTE-D110-RED-OCHRE-576120-768x511.jpg', 'BAN-TRON-LORETTE-D110-RED-OCHRE-576120-768x511.jpg', 1, 1, 'Th??p s??n t??nh ??i???n c??ng ngh??? cao', 'B??n tr??n Lorette D110 Red Ochre 576120 ???????c c???u t???o t??? th??p s??n t??nh ??i???n c??ng ngh??? cao k???t h???p v???i nh???ng chi???c gh??? mang s???c ????? s??nh ??i???u ??i???m nh???n cho kh??ng gian ngo??i tr???i c???a b???n th??m s???ng ?????ng.', '??1100 - C740 mm', NULL, 'CTGY8', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY8_PRO05', 'B??n ngo??i tr???i Fermob Bistro ??? Storm Grey', 5800000, 'Ban-ngoai-troi-Fermob-Bistro-Storm-Grey-1-768x495.jpg', 'Ban-ngoai-troi-Fermob-Bistro-Storm-Grey-1-768x495.jpg', 'Ban-ngoai-troi-Fermob-Bistro-Storm-Grey-1-768x495.jpg', 1, 1, 'Th??p s??n t??nh ??i???n c??ng ngh??? cao', 'B??n tr??n Bistro ???????c nh???p kh???u t??? Ph??p. B??n Bistro c?? ki???u d??ng thanh m???nh nh??ng ch???c ch???n v??? c???u tr??c. S???n ph???m chuy??n d??ng ngo??i tr???i v???i nhi???u m??u s???c n???i b???t, ???????c l??m b???ng ch???t li???u th??p s??n lacquer cao c???p. B??? m???t b??n l?? t???m th??p ???????c x??? l?? kh??o l??o, c?? ????? b???n m??u cao cho v??? ?????p ho??n h???o.', '??600 - C740 mm', NULL, 'CTGY8', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY8_PRO06', 'B??n ngo??i tr???i Fermob Sixties', 14090000, 'Ban-ngoai-troi-Fermob-Sixties-768x495.jpg', 'Ban-ngoai-troi-Fermob-Sixties-768x495.jpg', 'Ban-ngoai-troi-Fermob-Sixties-768x495.jpg', 1, 1, 'Th??p s??n t??nh ??i???n c??ng ngh??? cao', 'B??? s??u t???p Sixties nh??? g???n v?? cong th??? hi???n ho??n h???o ?? t?????ng c???a Fermob: ki??n quy???t tr??? trung v?? tho???i m??i.Chi???c b??n th???p n??y b??? sung cho chi???c gh??? b??nh Sixties m???t c??ch ho??n h???o, v?? c??ng nh??? v?? g???n. Khung nh??m d?????i m???t b??n l??m gi???m nguy c?? ??n m??n C??n n???ng: 7 kg Khung: ???ng th??p -m???t b??n th??p t???m 24 m??u t??y ch???n', 'D755 - R555 - C410 mm', NULL, 'CTGY8', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY8_PRO07', 'B??n b??n Stulle P98W', 15600000, 'BAN-BEN-STULLE-P98W-768x511.jpg', 'BAN-BEN-STULLE-P98W-768x511.jpg', 'BAN-BEN-STULLE-P98W-768x511.jpg', 1, 1, 'Ch??n kim lo???i s??n, M???t Melamine', '', '??400 - C400 mm', NULL, 'CTGY8', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY8_PRO08', 'B??n n?????c SIXTIES CACTUS 172182', 14090000, 'Ban-nuoc-SIXTIES-CACTUS-172182-2-768x495.jpg', 'Ban-nuoc-SIXTIES-CACTUS-172182-2-768x495.jpg', 'Ban-nuoc-SIXTIES-CACTUS-172182-2-768x495.jpg', 1, 1, 'Th??p s??n t??nh ??i???n c??ng ngh??? cao', 'B??n n?????c SIXTIES CACTUS 172182 ???????c c???u t???o t??? th??p s??n t??nh ??i???n c??ng ngh??? cao, c?? 2 m??u s???c xanh l?? v?? h???ng t????i t???n h???p th???i trang. B??n n?????c SIXTIES CACTUS 172182 mang ki???u d??ng h??nh ch??? nh???t, nh??? g???n, nh???, th??ch h???p ????? b??y tr?? trong nh?? v?? ngo??i tr???i.  ', 'D760 - R555 - C410 mm', NULL, 'CTGY8', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY8_PRO09', 'B??n ngo??i tr???i YO!', 30339000, '103430-ban-nuoc-yo-p9l-p99w-4-768x511.jpg', '103430-ban-nuoc-yo-p9l-p99w-4-768x511.jpg', '103430-ban-nuoc-yo-p9l-p99w-4-768x511.jpg', 1, 1, 'Ch??n Aluminium s??n m??u Lemon yellow m???t b??n HPL Laminate m??u cement graphite -Th????ng hi???u Calligaris Italy', 'B??n YO! c?? ch??n ????? b???ng nh??m ???? ???????c x??? l?? v?? s??n ph??? k???t h???p m???t laminate ????? s??? d???ng ngo??i tr???i. Ch??ng r???t d??? l??m s???ch v?? kh??ng c???n b???o tr?? trong th???i gian d??i. B??? m???t laminate ???? ???????c thi???t k??? ?????c bi???t ????? ng??n ng???a n???m m???c v?? n???m m???c ph??t tri???n. Yo! c??ng c?? m???t linh h???n xanh - n?? c?? s???n m???t l???p ???? Sinh th??i ???????c l??m t??? v???t li???u composite t??i ch???, c?? th??? ???????c t??i ch??? l???i khi h???t tu???i th???.', '??900 - C750 mm', NULL, 'CTGY8', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY8_PRO10', 'B??n ngo??i tr???i Fermob Opera Poppy
', 7760000, 'Ban-ngoai-troi-Fermob-Opera-Poppy-768x495.jpg', 'Ban-ngoai-troi-Fermob-Opera-Poppy-768x495.jpg', 'Ban-ngoai-troi-Fermob-Opera-Poppy-768x495.jpg', 1, 1, 'Th??p s??n t??nh ??i???n c??ng ngh??? cao', 'B??n Opera l?? s???n ph???m thu???c th????ng hi???u n???i ti???ng v??? h??ng ngo??i tr???i Fermob. S???n ph???m c?? 24 m??u s???c n???i b???t ????? l???a ch???n v???i ki???u d??ng thanh tao. B??n Opera ???????c s??n t??nh ??i???n cao c???p, b??? m???t s??n ph?? h???p ????? s??? d???ng ngo??i tr???i v???i c???u tr??c khung b??n ch???n ch???n.', '??670 - C740 mm', NULL, 'CTGY8', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY9_PRO01', 'B??n ph???n Madame m??u Ebony P87W', 64500000, 'Ban-phan-Madame-mau-Ebony-P87W-768x511.jpg', 'Ban-phan-Madame-mau-Ebony-P87W-768x511.jpg', 'Ban-phan-Madame-mau-Ebony-P87W-768x511.jpg', 1, 1, 'Ch??n kim lo???i s??n , mdf veneer Ebony , k??nh th???y', 'B??n ph???n Madame m??u Ebony P87W l?? s??? l???a ch???n cho c??c gia ch??? y??u th??ch phong c??ch ????n ??i???u, hi???n ?????i. B??n ???????c l??m b???ng ch???t li???u kim lo???i s??n, mdf veneer Ebony, k??nh th???y c?? ki???u d??ng d??? d??ng k???t h???p ???????c v???i nhi???u kh??ng gian ph??ng ng??? kh??c nhau ????y l?? m???t s??? l???a ch???n tuy???t v???i v???i nhi???u gia ????nh.', 'D1300-R605-785 mm', NULL, 'CTGY9', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY9_PRO02', 'B??n ph???n Madame Termocotto P67W', 64500000, 'Ban-phan-Madame-Termocotto-P67W-768x511.jpg', 'Ban-phan-Madame-Termocotto-P67W-768x511.jpg', 'Ban-phan-Madame-Termocotto-P67W-768x511.jpg', 1, 1, 'Ch??n kim lo???i s??n , mdf veneer Termocotto, k??nh th???y', 'B??n ph???n Madame Termocotto P67W l?? s??? l???a ch???n cho c??c gia ch??? y??u th??ch phong c??ch ????n ??i???u, hi???n ?????i. B??n ???????c l??m b???ng ch???t li???u kim lo???i s??n, mdf veneer Ebony, k??nh th???y c?? ki???u d??ng d??? d??ng k???t h???p ???????c v???i nhi???u kh??ng gian ph??ng ng??? kh??c nhau ????y l?? m???t s??? l???a ch???n tuy???t v???i v???i nhi???u gia ????nh.', 'D1300-R605-785 mm', NULL, 'CTGY9', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY9_PRO03', 'B??n trang ??i???m M??y ??? M???u 2', 24450000, '100582_1000-768x511.jpg', '100582_1000-768x511.jpg', '100582_1000-768x511.jpg', 1, 1, 'G??? Acacia (Tr??m)- M??y t??? nhi??n- Ch??n b???c inox m??? gold', 'B??n trang ??i???m M??y mang thi???t k??? thanh l???ch, duy??n d??ng v?? c?? ch??t n??? t??nh. Thi???t k??? b??? tr?? c??c ph???n h???c k??o gi??p c???t tr??? ?????y ????? c??c v???t d???ng trang ??i???m t???i ??u. Nh???ng n??t bo tr??n c???a g????ng v?? khung g??? gi??p t???o n??t m???m m???i. ?????c bi???t, ph???n c??nh th??m v???a t???o ??i???m nh???n v???a c?? th??? che l???i g????ng khi kh??ng s??? d???ng. M??y ??? H???n Vi???t trong h??i th??? hi???n ?????i B??? s??u t???p M??y g???i l???i nh???ng h???i ???c thanh b??nh v?? g???n g??i c???a h???n qu?? Vi???t. ???? ???????c ?????i ng?? thi???t k??? c???a Nh?? Xinh d??y c??ng t??m ?????c. Nh?? t??n g???i c???a n??, b??? s??u t???p l???y c???m h???ng v???i ch???t li???u m??y l??m ??i???m nh???n k???t h???p v???i c??c ch???t li???u hi???n ?????i nh?? da, g??? t???n b??, ???? marble v?? ?????ng thau. S??? kh??o l??o trong vi???c s??? d???ng ch???t li???u v?? nh???ng ???????ng n??t thi???t k??? ???? gi??p cho c??c s???n ph???m c???a M??y tr??? n??n hi???n ?????i, ?????y t??nh th???m m??? v?? c??ng gi??u c??ng n??ng.T???t c??? s???n ph???m M??y ???????c s???n xu???t t???i Vi???t Nam.', 'D1200- R400- C750/1330 mm', NULL, 'CTGY9', NULL, NULL, NULL, '', '', '');

INSERT `Products` (`Id`, `Name`, `Price`, `Image1`, `Image2`, `Image3`, `Available`, `Status`, `SubstanceDes`, `Contents`, `Size`, `PromotionId`, `CategoryId`, `CreateDay`, `DeleteDay`, `UpdateDay`, `PersonCreate`, `PersonDelete`, `PersonUpdate`) VALUES ('CTGY9_PRO04', 'B??n trang ??i???m Skagen', 12670000, 'ban-trang-diem-dep-tinh-te-co-hoc-3-768x511.jpg', 'ban-trang-diem-dep-tinh-te-co-hoc-3-768x511.jpg', 'ban-trang-diem-dep-tinh-te-co-hoc-3-768x511.jpg', 1, 1, 'Ch??n g??? mahogany, m???t mdf s??n m??u tr???ng +noughat, g????ng k??nh th???y 5mm -b??n ph???n c?? th??? g???p khung g????ng xu???ng th??nh b??n l??m vi???c', '', 'D1200 - R500 - C750/1200 mm', NULL, 'CTGY9', NULL, NULL, NULL, '', '', '');
 

INSERT `Roles` (`Id`, `Name`) VALUES ('ADMIN', 'Qu???n tr???');

INSERT `Roles` (`Id`, `Name`) VALUES ('USER', 'Ng?????i d??ng');
 
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
 

INSERT `SubstanceDetail` (`Id`, `Name`) VALUES ('Stcdlt1', 'G???');

INSERT `SubstanceDetail` (`Id`, `Name`) VALUES ('Stcdlt10', 'Xi m??ng');

INSERT `SubstanceDetail` (`Id`, `Name`) VALUES ('Stcdlt11', 'Th???ch cao');

INSERT `SubstanceDetail` (`Id`, `Name`) VALUES ('Stcdlt12', 'L?? xo t??i');

INSERT `SubstanceDetail` (`Id`, `Name`) VALUES ('Stcdlt13', 'L??ng v?? CN');

INSERT `SubstanceDetail` (`Id`, `Name`) VALUES ('Stcdlt14', 'Inox');

INSERT `SubstanceDetail` (`Id`, `Name`) VALUES ('Stcdlt15', 'MDF');

INSERT `SubstanceDetail` (`Id`, `Name`) VALUES ('Stcdlt16', 'S??p');

INSERT `SubstanceDetail` (`Id`, `Name`) VALUES ('Stcdlt17', '?????m');

INSERT `SubstanceDetail` (`Id`, `Name`) VALUES ('Stcdlt18', 'Th??p');

INSERT `SubstanceDetail` (`Id`, `Name`) VALUES ('Stcdlt19', 'Cao su');

INSERT `SubstanceDetail` (`Id`, `Name`) VALUES ('Stcdlt2', 'V???i');

INSERT `SubstanceDetail` (`Id`, `Name`) VALUES ('Stcdlt20', 'Decolan');

INSERT `SubstanceDetail` (`Id`, `Name`) VALUES ('Stcdlt21', 'K??nh');

INSERT `SubstanceDetail` (`Id`, `Name`) VALUES ('Stcdlt3', 'Da');

INSERT `SubstanceDetail` (`Id`, `Name`) VALUES ('Stcdlt4', 'Kim lo???i');

INSERT `SubstanceDetail` (`Id`, `Name`) VALUES ('Stcdlt5', '????');

INSERT `SubstanceDetail` (`Id`, `Name`) VALUES ('Stcdlt6', 'Nh???a');

INSERT `SubstanceDetail` (`Id`, `Name`) VALUES ('Stcdlt7', 'V???t li???u t??? h???p');

INSERT `SubstanceDetail` (`Id`, `Name`) VALUES ('Stcdlt8', 'G???m s???');

INSERT `SubstanceDetail` (`Id`, `Name`) VALUES ('Stcdlt9', 'Th???y tinh');
 
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
 
