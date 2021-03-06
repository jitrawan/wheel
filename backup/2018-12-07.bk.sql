# Dump of brand 
# Dump DATE : 07-Dec-2018

DROP TABLE IF EXISTS brand;
CREATE TABLE brand (
  BrandID varchar(5) NOT NULL,
  BrandName varchar(30) NOT NULL,
  TypeID varchar(5) NOT NULL,
  BrandStatus char(1) NOT NULL,
  PRIMARY KEY (BrandID)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



INSERT INTO brand VALUES("B0001","ยี่ห้อสินค้าtest","T0001","1");
INSERT INTO brand VALUES("B0002","Michelin2","T0002","1");
INSERT INTO brand VALUES("B0003","ยี่ห้อสินค้าtest","T0001","1");
INSERT INTO brand VALUES("B0004","Bridgestone","T0002","1");
INSERT INTO brand VALUES("B0005","ยี่ห้อสินค้าtest","T0001","1");
INSERT INTO brand VALUES("B0006","Max02","T0004","1");
INSERT INTO brand VALUES("B0007","ยี่ห้อสินค้าtest","T0001","1");
INSERT INTO brand VALUES("B0008","Dunlop","T0002","1");
INSERT INTO brand VALUES("B0009","max01","T0003","1");
INSERT INTO brand VALUES("B0010","ยี่ห้อสินค้าtest","T0001","1");



# Dump of dealer 
# Dump DATE : 07-Dec-2018

DROP TABLE IF EXISTS dealer;
CREATE TABLE dealer (
  dealer_id int(10) NOT NULL AUTO_INCREMENT,
  dealer_code varchar(5) NOT NULL,
  dealer_name varchar(255) NOT NULL,
  mobile varchar(10) NOT NULL,
  address text NOT NULL,
  idline varchar(20) NOT NULL,
  email varchar(100) NOT NULL,
  status int(1) NOT NULL,
  PRIMARY KEY (dealer_id)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;



INSERT INTO dealer VALUES(1,"D0001","intel thailand","026546000","87 อาคารเอ็มไทยทาวเวอร์ ชั้น 9 ออลซีซันส์เพลส, ถนนวิทยุ","","applee@gmail.com",1);
INSERT INTO dealer VALUES(2,"D0002","บริษัท เอเอ็มดี ฟาร์อีส","024655234","467","noina56","noina56@gmail.com",1);
INSERT INTO dealer VALUES(3,"D0003","Samsung"," 026959000","3 Empire Tower 1 South Sathorn rd.","aotaotrm33","aotaot33@gmail.com",1);
INSERT INTO dealer VALUES(4,"D0004","บริษัท ซิลิคอนดาต้า จำกัด","022192010","18/1-2 พระราม6 ตัดใหม่ ซอย 4","nickyyo","nickyyo@gmail.com",1);
INSERT INTO dealer VALUES(5,"D0005","GIGABYTE Technology Co.,Ltd.","029708485","505/8 ซอย พหลโยธิน 48,","nonniiaa","teweesak@gmail.com",1);
INSERT INTO dealer VALUES(6,"D0006","Scanner Co.,Ltd. (Service)","022506072","555 เดอะพาลาเดียมเวิลด์ ชั้น 5 ห้อง IT25
ถนนราชปรารถ","jamemee654","jamemee@gmail.com",1);
INSERT INTO dealer VALUES(32,"D0007","Gosoft","0941319671","สาทรซอย 5","filmmmm","jitrawan.ch@gmail.com",1);
INSERT INTO dealer VALUES(33,"D0007","Gosoft","0941319671","สาทรซอย 5","filmmmm","jitrawan.ch@gmail.com",0);



# Dump of list 
# Dump DATE : 07-Dec-2018

DROP TABLE IF EXISTS list;
CREATE TABLE list (
  cases varchar(64) NOT NULL,
  menu varchar(64) NOT NULL,
  pages varchar(128) NOT NULL,
  case_status tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (cases)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



INSERT INTO list VALUES("setting","setting","settings/setting.php",1);
INSERT INTO list VALUES("member","member","members/member.php",1);
INSERT INTO list VALUES("cashier","cashier","cashier/cashier.php",1);
INSERT INTO list VALUES("report","report","report/report.php",1);
INSERT INTO list VALUES("report_export","report","report/report_export.php",1);
INSERT INTO list VALUES("report_movement","report","report/report_movement.php",1);
INSERT INTO list VALUES("report_income","report","report/report_income.php",1);
INSERT INTO list VALUES("report_income_detail","report","report/report_income_detail.php",1);
INSERT INTO list VALUES("report_booking","report","report/report_booking.php",1);
INSERT INTO list VALUES("report_logs","report","report/report_logs.php",1);
INSERT INTO list VALUES("report_delivery","report","report/report_delivery.php",1);
INSERT INTO list VALUES("report_delivery_detail","report","report/report_delivery_detail.php",1);
INSERT INTO list VALUES("setting_users","setting","settings/setting_users.php",1);
INSERT INTO list VALUES("setting_backup","setting","settings/setting_backup.php",1);
INSERT INTO list VALUES("setting_unit","setting","settings/setting_unit.php",0);
INSERT INTO list VALUES("setting_categories","setting","settings/setting_categories.php",1);
INSERT INTO list VALUES("setting_member_group","setting","settings/setting_member_group.php",1);
INSERT INTO list VALUES("setting_promotions","setting","settings/setting_promotions.php",1);
INSERT INTO list VALUES("report_debt","report","report/report_debt.php",1);
INSERT INTO list VALUES("report_creditor","report","report/report_creditor.php",1);
INSERT INTO list VALUES("setting_info","setting","settings/setting_info.php",1);
INSERT INTO list VALUES("setting_system","setting","settings/setting_system.php",1);
INSERT INTO list VALUES("setting_user_access","setting","settings/setting_user_access.php",1);
INSERT INTO list VALUES("administrator_access_list","setting","administrator/administrator_access_list.php",1);
INSERT INTO list VALUES("administrator_cases","setting","administrator/administrator_cases.php",1);
INSERT INTO list VALUES("administrator_menus","setting","administrator/administrator_menus.php",1);
INSERT INTO list VALUES("administrator_modules","setting","administrator/administrator_modules.php",1);
INSERT INTO list VALUES("administrator_helper","seting","administrator/administrator_helper.php",1);
INSERT INTO list VALUES("cashier_member","cashier","cashier/cashier_member.php",1);
INSERT INTO list VALUES("cashier_booking","cashier","cashier/cashier_booking.php",1);
INSERT INTO list VALUES("product_detail","product","products/product_detail.php",1);
INSERT INTO list VALUES("member_detail","member","members/member_detail.php",1);
INSERT INTO list VALUES("new_member","member","members/new_member.php",1);
INSERT INTO list VALUES("member_history","member","members/member_history.php",1);
INSERT INTO list VALUES("setting_promotion_member","setting","settings/setting_promotion_member.php",1);
INSERT INTO list VALUES("report_cancel","report","report/report_cancel.php",1);
INSERT INTO list VALUES("card_all_status","card","card/card_all_status.php",1);
INSERT INTO list VALUES("search","","main/search.php",1);
INSERT INTO list VALUES("card","card","card/card.php",1);
INSERT INTO list VALUES("setting_card_status","setting","settings/setting_card_status.php",1);
INSERT INTO list VALUES("card_create_detail","card_create","card/card_create_detail.php",1);
INSERT INTO list VALUES("search_code","","main/search.php",1);
INSERT INTO list VALUES("card_create","card_create","card/main.php",1);
INSERT INTO list VALUES("setting_products","setting","settings/setting_products_N.php",1);
INSERT INTO list VALUES("setting_type","setting","settings/setting_type.php",1);
INSERT INTO list VALUES("setting_brand","setting","settings/setting_brand.php",1);
INSERT INTO list VALUES("setting_model","setting","settings/setting_model.php",1);
INSERT INTO list VALUES("setting_shelf","setting","settings/setting_shelf.php",1);
INSERT INTO list VALUES("productInshelf","card","card/productInshelf_N.php",1);
INSERT INTO list VALUES("claim_info","card","card/claim_info.php",1);



# Dump of logs 
# Dump DATE : 07-Dec-2018

DROP TABLE IF EXISTS logs;
CREATE TABLE logs (
  log_key varchar(16) NOT NULL,
  log_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  log_ipaddress varchar(32) NOT NULL,
  log_text varchar(256) NOT NULL,
  log_user varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



INSERT INTO logs VALUES("a436695f8397759e","2018-11-19 16:48:55","::1","jitrawan.ch@gmail.com เข้าสู่ระบบ.","1");
INSERT INTO logs VALUES("a725b5fecd99e202","2018-11-19 16:52:57","::1","jitrawan.ch@gmail.com เข้าสู่ระบบ.","1");
INSERT INTO logs VALUES("114ee9d3d9d31437","2018-11-19 16:54:16","::1","jitrawan.ch@gmail.com ออกจากระบบ.","1");
INSERT INTO logs VALUES("159b263da3f1eb5b","2018-11-19 16:54:19","::1","jitrawan.ch@gmail.com เข้าสู่ระบบ.","1");
INSERT INTO logs VALUES("d9b349b6b5e20712","2018-11-19 17:09:49","::1","jitrawan.ch@gmail.com เข้าสู่ระบบ.","1");
INSERT INTO logs VALUES("e03891189208e5d9","2018-11-19 19:16:26","::1","jitrawan.ch@gmail.com เข้าสู่ระบบ.","1");
INSERT INTO logs VALUES("eb70d193f1d85fc1","2018-11-19 19:56:12","::1","jitrawan.ch@gmail.com เข้าสู่ระบบ.","1");
INSERT INTO logs VALUES("afc7a9f638e7faa7","2018-11-19 23:04:55","::1","jitrawan.ch@gmail.com เข้าสู่ระบบ.","1");
INSERT INTO logs VALUES("cbf407d1aaae0bb7","2018-11-19 23:37:06","::1","jitrawan.ch@gmail.com เข้าสู่ระบบ.","1");
INSERT INTO logs VALUES("204f07308630111d","2018-11-19 23:38:57","::1","jitrawan.ch@gmail.com เข้าสู่ระบบ.","1");
INSERT INTO logs VALUES("cab748d63879ad77","2018-11-20 19:53:09","::1","jitrawan.ch@gmail.com เข้าสู่ระบบ.","1");
INSERT INTO logs VALUES("83d858ec089fa212","2018-11-20 22:58:49","::1","jitrawan.ch@gmail.com เข้าสู่ระบบ.","1");
INSERT INTO logs VALUES("f172f80add5dc5dc","2018-11-20 23:20:16","::1","jitrawan.ch@gmail.com ออกจากระบบ.","1");
INSERT INTO logs VALUES("fc45f86e2d1df46f","2018-11-20 23:20:18","::1","pat เข้าสู่ระบบ.","d97530f6437e7ffa3a74afe46a953a15");
INSERT INTO logs VALUES("d925ce8da0969583","2018-11-20 23:23:33","::1","jitrawan.ch@gmail.com เข้าสู่ระบบ.","1");
INSERT INTO logs VALUES("1abf8493a0d248dc","2018-11-20 23:23:40","::1","jitrawan.ch@gmail.com ออกจากระบบ.","1");
INSERT INTO logs VALUES("24b2d17826cbe1d8","2018-11-20 23:23:44","::1","pat เข้าสู่ระบบ.","d97530f6437e7ffa3a74afe46a953a15");
INSERT INTO logs VALUES("3c2c0ff76f873c1d","2018-11-20 23:28:05","::1","pat ออกจากระบบ.","d97530f6437e7ffa3a74afe46a953a15");
INSERT INTO logs VALUES("eb0d6a15bcc97c19","2018-11-20 23:28:06","::1","pat เข้าสู่ระบบ.","d97530f6437e7ffa3a74afe46a953a15");
INSERT INTO logs VALUES("3cb66c99df17fa2a","2018-11-21 23:15:42","::1","jitrawan.ch@gmail.com เข้าสู่ระบบ.","1");
INSERT INTO logs VALUES("2a10a29c40efff37","2018-11-22 16:01:37","::1","jitrawan.ch@gmail.com เข้าสู่ระบบ.","1");
INSERT INTO logs VALUES("3b8d61b323acae5d","2018-11-22 16:22:56","::1","jitrawan.ch@gmail.com เข้าสู่ระบบ.","1");
INSERT INTO logs VALUES("6e4c8cc4d7430109","2018-11-23 14:33:30","::1","jitrawan.ch@gmail.com เข้าสู่ระบบ.","1");
INSERT INTO logs VALUES("2616559d7d0dadde","2018-11-24 15:21:16","::1","jitrawan.ch@gmail.com ออกจากระบบ.","1");
INSERT INTO logs VALUES("32e675b29ef95743","2018-11-24 15:21:28","::1","pat เข้าสู่ระบบ.","d97530f6437e7ffa3a74afe46a953a15");
INSERT INTO logs VALUES("ce110a8cdcce7f6b","2018-11-25 12:51:43","::1","pat ออกจากระบบ.","d97530f6437e7ffa3a74afe46a953a15");
INSERT INTO logs VALUES("9cbc4249d847f936","2018-11-25 12:51:57","::1","jitrawan.ch@gmail.com เข้าสู่ระบบ.","1");
INSERT INTO logs VALUES("68a633db8a0d39df","2018-11-25 12:52:08","::1","jitrawan.ch@gmail.com ออกจากระบบ.","1");
INSERT INTO logs VALUES("1d8137f1b2b12451","2018-11-25 12:52:29","::1","pat เข้าสู่ระบบ.","d97530f6437e7ffa3a74afe46a953a15");
INSERT INTO logs VALUES("cf541ef915cc9726","2018-11-25 12:53:19","::1","pat ออกจากระบบ.","d97530f6437e7ffa3a74afe46a953a15");
INSERT INTO logs VALUES("3f3e8024120d9ed2","2018-11-25 12:53:25","::1","jitrawan.ch@gmail.com เข้าสู่ระบบ.","1");
INSERT INTO logs VALUES("ff001fb2bc40736b","2018-11-25 13:12:05","::1","jitrawan.ch@gmail.com ออกจากระบบ.","1");
INSERT INTO logs VALUES("7d2afeb0565ec69a","2018-11-25 13:12:09","::1","pat เข้าสู่ระบบ.","d97530f6437e7ffa3a74afe46a953a15");
INSERT INTO logs VALUES("e6adafb20ce0da37","2018-11-26 21:16:23","::1","pat เข้าสู่ระบบ.","d97530f6437e7ffa3a74afe46a953a15");
INSERT INTO logs VALUES("9ebaa6f6df160e51","2018-11-27 17:19:35","::1","pat เข้าสู่ระบบ.","d97530f6437e7ffa3a74afe46a953a15");
INSERT INTO logs VALUES("342e98fca292e7dd","2018-11-28 10:55:47","::1","pat เข้าสู่ระบบ.","d97530f6437e7ffa3a74afe46a953a15");
INSERT INTO logs VALUES("8b2360b61da2b828","2018-11-28 17:23:00","::1","pat เข้าสู่ระบบ.","d97530f6437e7ffa3a74afe46a953a15");
INSERT INTO logs VALUES("b88631a0f1360037","2018-11-29 21:04:51","::1","pat เข้าสู่ระบบ.","d97530f6437e7ffa3a74afe46a953a15");
INSERT INTO logs VALUES("82eb53007887d0f1","2018-11-30 15:51:51","::1","pat เข้าสู่ระบบ.","d97530f6437e7ffa3a74afe46a953a15");
INSERT INTO logs VALUES("ac6820437757fe98","2018-11-30 19:12:14","::1","pat เข้าสู่ระบบ.","d97530f6437e7ffa3a74afe46a953a15");
INSERT INTO logs VALUES("ae1c6a7f19fc9c6b","2018-12-01 00:46:25","::1","pat เข้าสู่ระบบ.","d97530f6437e7ffa3a74afe46a953a15");
INSERT INTO logs VALUES("c306238e8eac3d67","2018-12-01 10:34:12","::1","pat เข้าสู่ระบบ.","d97530f6437e7ffa3a74afe46a953a15");
INSERT INTO logs VALUES("ee568ccf2a89d1e4","2018-12-01 23:10:39","::1","pat เข้าสู่ระบบ.","d97530f6437e7ffa3a74afe46a953a15");
INSERT INTO logs VALUES("50344d27e04db018","2018-12-02 00:16:38","::1","pat เข้าสู่ระบบ.","d97530f6437e7ffa3a74afe46a953a15");
INSERT INTO logs VALUES("0734a1af6385324c","2018-12-02 01:11:41","::1","pat เข้าสู่ระบบ.","d97530f6437e7ffa3a74afe46a953a15");
INSERT INTO logs VALUES("a84666238fd5719d","2018-12-03 15:29:51","::1","pat เข้าสู่ระบบ.","d97530f6437e7ffa3a74afe46a953a15");
INSERT INTO logs VALUES("bcb6128456d241c6","2018-12-04 09:00:08","::1","pat เข้าสู่ระบบ.","d97530f6437e7ffa3a74afe46a953a15");
INSERT INTO logs VALUES("234d13c0d1088f7f","2018-12-06 10:06:05","::1","pat เข้าสู่ระบบ.","d97530f6437e7ffa3a74afe46a953a15");
INSERT INTO logs VALUES("7cf700a5faa7bce6","2018-12-06 11:23:59","::1","pat เข้าสู่ระบบ.","d97530f6437e7ffa3a74afe46a953a15");



# Dump of menus 
# Dump DATE : 07-Dec-2018

DROP TABLE IF EXISTS menus;
CREATE TABLE menus (
  menu_key char(32) NOT NULL,
  menu_upkey char(32) NOT NULL,
  menu_icon varchar(256) NOT NULL,
  menu_name varchar(128) NOT NULL,
  menu_case varchar(128) NOT NULL,
  menu_link varchar(256) NOT NULL,
  menu_status tinyint(1) NOT NULL,
  menu_sorting int(11) NOT NULL,
  PRIMARY KEY (menu_key)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO menus VALUES("0a3c8aabc6cdbce67a157ba1701b3fa9","0a3c8aabc6cdbce67a157ba1701b3fa9","<i class=\"fa fa-pie-chart fa-fw\"></i>","LA_MN_REPORT","report","?p=report",0,8);
INSERT INTO menus VALUES("2309e0cdb2c541bf7cb8ef0dee7b7eba","2309e0cdb2c541bf7cb8ef0dee7b7eba","<i class=\"fa fa-gear  fa-fw\"></i>","LA_MN_SETTING","setting","?p=setting",1,9);
INSERT INTO menus VALUES("26f7e62109e2566eaec8b01fe8e3598d","26f7e62109e2566eaec8b01fe8e3598d","<i class=\"fa fa-edit fa-fw\"></i>","ส่งซ่อมสินค้า/เคลม","card_create","?p=card_create",0,3);
INSERT INTO menus VALUES("295744c466c17b46170f88b5c1b9104d","295744c466c17b46170f88b5c1b9104d","<i class=\"fa fa-list fa-fw\"></i>","รายการส่งซ่อม/เคลม<span class=\"pull-right\"><span class=\"badge\" id=\"card_count\"></span></span>","card","?p=card",0,3);
INSERT INTO menus VALUES("439c4113b058975e22f776669bb36bf0","ff7d5a554f4300b09f2de2e06d523be9","<i class=\"fa flaticon-stack4 fa-fw\"></i>","LA_MN_PRODUCTS_DATA","product","?p=product",1,31);
INSERT INTO menus VALUES("8a5a77cae7237efcb89683f2ffc4d07b","8a5a77cae7237efcb89683f2ffc4d07b","<i class=\"fa fa-search fa-fw\"></i>","ค้นหาสินค้า","productInshelf","?p=productInshelf",1,2);
INSERT INTO menus VALUES("a16043256ea5ca0ea86995e2b69ec238","a16043256ea5ca0ea86995e2b69ec238","<i class=\"fa fa-home fa-fw\"></i>","LA_MN_HOME","","index.php",1,1);
INSERT INTO menus VALUES("c6c8729b45d1fec563f8453c16ff03b8","c6c8729b45d1fec563f8453c16ff03b8","<i class=\"fa fa-lock fa-fw\"></i>","LA_MN_LOGOUT","logout","../core/logout.core.php",1,10);
INSERT INTO menus VALUES("e8b47864ee985a54d7be6b4907ff7e57","e8b47864ee985a54d7be6b4907ff7e57","<i class=\"fa fa-desktop fa-fw\"></i>","การเคลม","claim_info","?p=claim_info",1,3);
INSERT INTO menus VALUES("f1344bc0fb9c5594fa0e3d3f37a56957","f1344bc0fb9c5594fa0e3d3f37a56957","<i class=\"fa fa-users fa-fw\"></i>","LA_MN_MEMBERS","member","?p=member",0,4);



# Dump of model 
# Dump DATE : 07-Dec-2018

DROP TABLE IF EXISTS model;
CREATE TABLE model (
  ModelID varchar(6) NOT NULL,
  BrandID varchar(5) NOT NULL,
  ModelName varchar(30) NOT NULL,
  ModelStatus char(1) NOT NULL,
  PRIMARY KEY (ModelID)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



INSERT INTO model VALUES("M0001","B0001","Michelin City Girb111","1");
INSERT INTO model VALUES("M0002","B0002","dunlop XX2","1");
INSERT INTO model VALUES("M0003","B0009","test","1");
INSERT INTO model VALUES("M0004","B0002","รุ่นtest","1");



# Dump of product 
# Dump DATE : 07-Dec-2018

DROP TABLE IF EXISTS product;
CREATE TABLE product (
  ProductID varchar(5) NOT NULL,
  ProductName varchar(50) NOT NULL,
  shelf_id int(11) NOT NULL,
  BrandID varchar(5) NOT NULL,
  ModelID varchar(6) NOT NULL,
  dealer_code varchar(5) NOT NULL,
  ProductDetail varchar(4000) NOT NULL,
  Quantity int(11) NOT NULL,
  PriceSale double NOT NULL,
  PriceBuy double NOT NULL,
  IsNew char(1) NOT NULL,
  IsRecommend char(1) NOT NULL,
  TypeID varchar(5) NOT NULL,
  ProductStatus char(1) NOT NULL,
  Warranty varchar(200) NOT NULL,
  PRIMARY KEY (ProductID),
  KEY clothes_ibfk_1 (BrandID),
  KEY clothes_ibfk_2 (TypeID)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



INSERT INTO product VALUES("P0001","ยาง Michelin City Girb",2,"B0001","M0001","D0001","ขนาว XXX",85,"3000","2500","1","1","T0001","0","1");
INSERT INTO product VALUES("P0002","ยาง Bridgestone XXXX",1,"B0005","M0005","D0001","ยางขนาดดด XXX",5,"2200","2000","1","0","T0001","1","-");
INSERT INTO product VALUES("P0003","แม็ก1",2,"B0004","<br />","D0003","test insert product",20,"7000","5000","","","T0002","1","1");
INSERT INTO product VALUES("P0004","ยาง18\"",2,"B0001","M0001","D0002","test",50,"6500","6000","","","T0001","1","1");
INSERT INTO product VALUES("P0005","test",3,"B0001","M0001","D0001","test",5,"4000","600","","","T0001","1","1");
INSERT INTO product VALUES("P0006","test2",4,"B0001","M0001","","test2",5,"4000","6000","","","T0001","1","1");
INSERT INTO product VALUES("P0007","แม็ก1",2,"B0003","","","test",60,"9000","5000","","","T0001","1","1");
INSERT INTO product VALUES("P0008","แม็ก1",0,"B0003","","","test",90,"1000","500","","","T0001","1","1");
INSERT INTO product VALUES("P0009","test",2,"B0004","","","test",30,"750","700","","","T0002","1","1");
INSERT INTO product VALUES("P0010","แม็ก1",3,"B0008","","","test",50,"6000","4600","","","T0002","1","1");
INSERT INTO product VALUES("P0011","test",3,"B0006","","","test",50,"9000","4000","","","T0004","1","1");



# Dump of productDetailRubber 
# Dump DATE : 07-Dec-2018

DROP TABLE IF EXISTS productDetailRubber;
CREATE TABLE productDetailRubber (
  id int(11) NOT NULL AUTO_INCREMENT,
  ProductID varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  width int(11) NOT NULL,
  series int(11) NOT NULL,
  diameter int(11) NOT NULL,
  brand int(11) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



INSERT INTO productDetailRubber VALUES(4,"P0002",185,45,19,4);
INSERT INTO productDetailRubber VALUES(28,"P0003",215,40,15,5);



# Dump of productDetailWheel 
# Dump DATE : 07-Dec-2018

DROP TABLE IF EXISTS productDetailWheel;
CREATE TABLE productDetailWheel (
  id int(11) NOT NULL AUTO_INCREMENT,
  ProductID varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  diameter int(11) NOT NULL,
  rim varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  holeSize int(11) NOT NULL,
  typeFormat varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



INSERT INTO productDetailWheel VALUES(6,"P0001",15,"7.5",5,"ก้านใหญ่");



# Dump of product_N 
# Dump DATE : 07-Dec-2018

DROP TABLE IF EXISTS product_N;
CREATE TABLE product_N (
  ProductID varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  shelf_id int(11) NOT NULL,
  dealer_code varchar(5) NOT NULL,
  Quantity int(11) NOT NULL,
  PriceSale double NOT NULL,
  PriceBuy double NOT NULL,
  ProductStatus char(1) NOT NULL,
  Warranty varchar(200) NOT NULL,
  hand int(11) NOT NULL,
  TypeID int(11) NOT NULL,
  PRIMARY KEY (ProductID)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



INSERT INTO product_N VALUES("P0001",1,"D0007",20,"35000","20000","1","30",2,1);
INSERT INTO product_N VALUES("P0002",1,"D0001",40,"12000","10000","1","30",2,2);
INSERT INTO product_N VALUES("P0003",2,"D0001",150,"10000","10000","1","30",2,2);



# Dump of reserve 
# Dump DATE : 07-Dec-2018

DROP TABLE IF EXISTS reserve;
CREATE TABLE reserve (
  reserveId int(11) NOT NULL,
  ProductID varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  reserveDate date NOT NULL,
  PRIMARY KEY (reserveId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



INSERT INTO reserve VALUES(1,"P0001","2018-11-24");



# Dump of shelf 
# Dump DATE : 07-Dec-2018

DROP TABLE IF EXISTS shelf;
CREATE TABLE shelf (
  shelf_id int(11) NOT NULL AUTO_INCREMENT,
  shelf_detail varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  shelf_color varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  shelf_status varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (shelf_id)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



INSERT INTO shelf VALUES(1,"shelf A ชั้น 2","#ebb2e8","1");
INSERT INTO shelf VALUES(2,"shelf A ชั้น 1","#fc9f49","1");



# Dump of type 
# Dump DATE : 07-Dec-2018

DROP TABLE IF EXISTS type;
CREATE TABLE type (
  TypeID varchar(5) NOT NULL,
  TypeName varchar(30) NOT NULL,
  TypeStatus char(1) NOT NULL,
  PRIMARY KEY (TypeID)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



INSERT INTO type VALUES("T0001","ยางมือ1","1");
INSERT INTO type VALUES("T0002","ยางมือ2","1");
INSERT INTO type VALUES("T0003","ล้อแม็กมือ1","1");
INSERT INTO type VALUES("T0004","ล้อแม็กมือ2","1");
INSERT INTO type VALUES("T0005","ล้อเปลี่ยนtest","1");
INSERT INTO type VALUES("T0006","ล้อแม็กเปลี่ยน","1");
INSERT INTO type VALUES("T0007","ประเภทสินค้า","1");



# Dump of user 
# Dump DATE : 07-Dec-2018

DROP TABLE IF EXISTS user;
CREATE TABLE user (
  user_key char(32) NOT NULL,
  name varchar(64) NOT NULL,
  lastname varchar(64) NOT NULL,
  username varchar(64) NOT NULL,
  password varchar(32) NOT NULL,
  user_photo varchar(128) NOT NULL DEFAULT 'noimg.jpg',
  user_class tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=user,2=admin,3=super admin',
  bed_view varchar(64) NOT NULL DEFAULT 'box_view',
  user_language varchar(8) NOT NULL DEFAULT 'th',
  system_font_size varchar(32) NOT NULL DEFAULT 'dd7e28065e654467be0f9c16f3bd987d',
  email varchar(128) NOT NULL,
  user_status tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



INSERT INTO user VALUES("1","jitrawan","chumpai","jitrawan.ch@gmail.com","81dc9bdb52d04dc20036dbd8313ed055","",2,"box_view","th","dd7e28065e654467be0f9c16f3bd987d","jitrawan.ch@gmail.com",1);
INSERT INTO user VALUES("d97530f6437e7ffa3a74afe46a953a15","พัชรวี","สีดอก","pat","8e3a8d3e644e608d25ec40162988a137","noimg.jpg",3,"box_view","th","74af75636b4e933684d63b617c97f398","applee@gmail.com",1);



