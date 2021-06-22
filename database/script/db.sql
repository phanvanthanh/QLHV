-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.17-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for qlhv
CREATE DATABASE IF NOT EXISTS `qlhv` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `qlhv`;

-- Dumping structure for table qlhv.admin_resource
CREATE TABLE IF NOT EXISTS `admin_resource` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ten_hien_thi` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resource` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `uri` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `show_menu` int(11) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `icon` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_resource_parent_foreign` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1261 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table qlhv.admin_resource: ~50 rows (approximately)
/*!40000 ALTER TABLE `admin_resource` DISABLE KEYS */;
INSERT INTO `admin_resource` (`id`, `ten_hien_thi`, `resource`, `method`, `action`, `parameter`, `parameter_value`, `parent_id`, `created_at`, `updated_at`, `uri`, `status`, `show_menu`, `order`, `icon`) VALUES
	(1, '#', '#', '#', '#', '#', '#', NULL, '2021-06-22 08:32:31', '2021-06-22 08:32:31', '#', 1, 1, 0, NULL),
	(1201, 'login', 'GET | App\\Http\\Controllers\\Auth\\LoginController@showLoginForm', 'GET', 'App\\Http\\Controllers\\Auth\\LoginController@showLoginForm', '', '', 1, '2021-06-22 08:32:31', '2021-06-22 08:32:31', 'login', 1, 3, 1000, NULL),
	(1202, 'login', 'POST | App\\Http\\Controllers\\Auth\\LoginController@login', 'POST', 'App\\Http\\Controllers\\Auth\\LoginController@login', '', '', 1, '2021-06-22 08:32:31', '2021-06-22 08:32:31', 'login', 1, 2, 1000, NULL),
	(1203, 'logout', 'POST | App\\Http\\Controllers\\Auth\\LoginController@logout', 'POST', 'App\\Http\\Controllers\\Auth\\LoginController@logout', '', '', 1, '2021-06-22 08:32:31', '2021-06-22 08:32:31', 'logout', 1, 2, 1000, NULL),
	(1204, 'register', 'GET | App\\Http\\Controllers\\Auth\\RegisterController@showRegistrationForm', 'GET', 'App\\Http\\Controllers\\Auth\\RegisterController@showRegistrationForm', '', '', 1, '2021-06-22 08:32:31', '2021-06-22 08:32:31', 'register', 1, 3, 1000, NULL),
	(1205, 'register', 'POST | App\\Http\\Controllers\\Auth\\RegisterController@register', 'POST', 'App\\Http\\Controllers\\Auth\\RegisterController@register', '', '', 1, '2021-06-22 08:32:31', '2021-06-22 08:32:31', 'register', 1, 2, 1000, NULL),
	(1206, 'password/reset', 'GET | App\\Http\\Controllers\\Auth\\ForgotPasswordController@showLinkRequestForm', 'GET', 'App\\Http\\Controllers\\Auth\\ForgotPasswordController@showLinkRequestForm', '', '', 1, '2021-06-22 08:32:31', '2021-06-22 08:32:31', 'password/reset', 1, 3, 1000, NULL),
	(1207, 'password/email', 'POST | App\\Http\\Controllers\\Auth\\ForgotPasswordController@sendResetLinkEmail', 'POST', 'App\\Http\\Controllers\\Auth\\ForgotPasswordController@sendResetLinkEmail', '', '', 1, '2021-06-22 08:32:31', '2021-06-22 08:32:31', 'password/email', 1, 2, 1000, NULL),
	(1208, 'password/reset/{token}', 'GET | App\\Http\\Controllers\\Auth\\ResetPasswordController@showResetForm', 'GET', 'App\\Http\\Controllers\\Auth\\ResetPasswordController@showResetForm', '', '', 1, '2021-06-22 08:32:31', '2021-06-22 08:32:31', 'password/reset/{token}', 1, 3, 1000, NULL),
	(1209, 'password/reset', 'POST | App\\Http\\Controllers\\Auth\\ResetPasswordController@reset', 'POST', 'App\\Http\\Controllers\\Auth\\ResetPasswordController@reset', '', '', 1, '2021-06-22 08:32:31', '2021-06-22 08:32:31', 'password/reset', 1, 2, 1000, NULL),
	(1210, 'password/confirm', 'GET | App\\Http\\Controllers\\Auth\\ConfirmPasswordController@showConfirmForm', 'GET', 'App\\Http\\Controllers\\Auth\\ConfirmPasswordController@showConfirmForm', '', '', 1, '2021-06-22 08:32:31', '2021-06-22 08:32:31', 'password/confirm', 1, 3, 1000, NULL),
	(1211, 'password/confirm', 'POST | App\\Http\\Controllers\\Auth\\ConfirmPasswordController@confirm', 'POST', 'App\\Http\\Controllers\\Auth\\ConfirmPasswordController@confirm', '', '', 1, '2021-06-22 08:32:31', '2021-06-22 08:32:31', 'password/confirm', 1, 2, 1000, NULL),
	(1212, 'Danh mục tham số hệ thống', 'GET | App\\Modules\\DmThamSoHeThong\\Controllers\\DmThamSoHeThongController@dmThamSoHeThong', 'GET', 'App\\Modules\\DmThamSoHeThong\\Controllers\\DmThamSoHeThongController@dmThamSoHeThong', '', '', 1, '2021-06-22 08:32:31', '2021-06-22 08:32:31', 'dm-tham-so-he-thong', 1, 1, 1000, '<i class="menu-icon icon-list"></i>'),
	(1213, 'danh-sach-dm-tham-so-he-thong', 'POST | App\\Modules\\DmThamSoHeThong\\Controllers\\DmThamSoHeThongController@danhSachDmThamSoHeThong', 'POST', 'App\\Modules\\DmThamSoHeThong\\Controllers\\DmThamSoHeThongController@danhSachDmThamSoHeThong', '', '', 1, '2021-06-22 08:32:31', '2021-06-22 08:32:31', 'danh-sach-dm-tham-so-he-thong', 1, 2, 1000, NULL),
	(1214, 'them-dm-tham-so-he-thong', 'POST | App\\Modules\\DmThamSoHeThong\\Controllers\\DmThamSoHeThongController@themDmThamSoHeThong', 'POST', 'App\\Modules\\DmThamSoHeThong\\Controllers\\DmThamSoHeThongController@themDmThamSoHeThong', '', '', 1, '2021-06-22 08:32:31', '2021-06-22 08:32:31', 'them-dm-tham-so-he-thong', 1, 2, 1000, NULL),
	(1215, 'dm-tham-so-he-thong-single', 'POST | App\\Modules\\DmThamSoHeThong\\Controllers\\DmThamSoHeThongController@dmThamSoHeThongSingle', 'POST', 'App\\Modules\\DmThamSoHeThong\\Controllers\\DmThamSoHeThongController@dmThamSoHeThongSingle', '', '', 1, '2021-06-22 08:32:31', '2021-06-22 08:32:31', 'dm-tham-so-he-thong-single', 1, 2, 1000, NULL),
	(1216, 'cap-nhat-dm-tham-so-he-thong', 'POST | App\\Modules\\DmThamSoHeThong\\Controllers\\DmThamSoHeThongController@capNhatDmThamSoHeThong', 'POST', 'App\\Modules\\DmThamSoHeThong\\Controllers\\DmThamSoHeThongController@capNhatDmThamSoHeThong', '', '', 1, '2021-06-22 08:32:31', '2021-06-22 08:32:31', 'cap-nhat-dm-tham-so-he-thong', 1, 2, 1000, NULL),
	(1217, 'xoa-dm-tham-so-he-thong', 'POST | App\\Modules\\DmThamSoHeThong\\Controllers\\DmThamSoHeThongController@xoaDmThamSoHeThong', 'POST', 'App\\Modules\\DmThamSoHeThong\\Controllers\\DmThamSoHeThongController@xoaDmThamSoHeThong', '', '', 1, '2021-06-22 08:32:31', '2021-06-22 08:32:31', 'xoa-dm-tham-so-he-thong', 1, 2, 1000, NULL),
	(1218, 'Phân quyền', 'GET | App\\Modules\\PhanQuyen\\Controllers\\PhanQuyenController@phanQuyen', 'GET', 'App\\Modules\\PhanQuyen\\Controllers\\PhanQuyenController@phanQuyen', '', '', 1, '2021-06-22 08:32:31', '2021-06-22 08:32:31', 'phan-quyen', 1, 1, 1000, '<i class="fa fa-cogs menu-icon"></i>'),
	(1219, 'phan-quyen-post', 'POST | App\\Modules\\PhanQuyen\\Controllers\\PhanQuyenController@phanQuyenPost', 'POST', 'App\\Modules\\PhanQuyen\\Controllers\\PhanQuyenController@phanQuyenPost', '', '', 1, '2021-06-22 08:32:31', '2021-06-22 08:32:31', 'phan-quyen-post', 1, 2, 1000, NULL),
	(1220, 'phan-quyen/danh-sach-nhom-quyen', 'POST | App\\Modules\\PhanQuyen\\Controllers\\PhanQuyenController@phanQuyenDanhSachNhomQuyen', 'POST', 'App\\Modules\\PhanQuyen\\Controllers\\PhanQuyenController@phanQuyenDanhSachNhomQuyen', '', '', 1, '2021-06-22 08:32:31', '2021-06-22 08:32:31', 'phan-quyen/danh-sach-nhom-quyen', 1, 2, 1000, NULL),
	(1221, 'phan-quyen/danh-sach-quyen-theo-nhom-quyen-id', 'POST | App\\Modules\\PhanQuyen\\Controllers\\PhanQuyenController@phanQuyenDanhSachQuyenTheoNhomQuyenId', 'POST', 'App\\Modules\\PhanQuyen\\Controllers\\PhanQuyenController@phanQuyenDanhSachQuyenTheoNhomQuyenId', '', '', 1, '2021-06-22 08:32:31', '2021-06-22 08:32:31', 'phan-quyen/danh-sach-quyen-theo-nhom-quyen-id', 1, 2, 1000, NULL),
	(1222, 'Tài nguyên', 'GET | App\\Modules\\TaiNguyen\\Controllers\\TaiNguyenController@taiNguyen', 'GET', 'App\\Modules\\TaiNguyen\\Controllers\\TaiNguyenController@taiNguyen', '', '', 1, '2021-06-22 08:32:31', '2021-06-22 08:32:31', 'tai-nguyen', 1, 1, 1000, '<i class="menu-icon icon-list"></i>'),
	(1223, 'danh-sach-tai-nguyen', 'POST | App\\Modules\\TaiNguyen\\Controllers\\TaiNguyenController@danhSachTaiNguyen', 'POST', 'App\\Modules\\TaiNguyen\\Controllers\\TaiNguyenController@danhSachTaiNguyen', '', '', 1, '2021-06-22 08:32:31', '2021-06-22 08:32:31', 'danh-sach-tai-nguyen', 1, 2, 1000, NULL),
	(1224, 'quet-tai-nguyen', 'POST | App\\Modules\\TaiNguyen\\Controllers\\TaiNguyenController@quetTaiNguyen', 'POST', 'App\\Modules\\TaiNguyen\\Controllers\\TaiNguyenController@quetTaiNguyen', '', '', 1, '2021-06-22 08:32:31', '2021-06-22 08:32:31', 'quet-tai-nguyen', 1, 2, 1000, NULL),
	(1225, 'them-tai-nguyen', 'POST | App\\Modules\\TaiNguyen\\Controllers\\TaiNguyenController@themTaiNguyen', 'POST', 'App\\Modules\\TaiNguyen\\Controllers\\TaiNguyenController@themTaiNguyen', '', '', 1, '2021-06-22 08:32:31', '2021-06-22 08:32:31', 'them-tai-nguyen', 1, 2, 1000, NULL),
	(1226, 'tai-nguyen-single', 'POST | App\\Modules\\TaiNguyen\\Controllers\\TaiNguyenController@taiNguyenSingle', 'POST', 'App\\Modules\\TaiNguyen\\Controllers\\TaiNguyenController@taiNguyenSingle', '', '', 1, '2021-06-22 08:32:31', '2021-06-22 08:32:31', 'tai-nguyen-single', 1, 2, 1000, NULL),
	(1227, 'cap-nhat-tai-nguyen', 'POST | App\\Modules\\TaiNguyen\\Controllers\\TaiNguyenController@capNhatTaiNguyen', 'POST', 'App\\Modules\\TaiNguyen\\Controllers\\TaiNguyenController@capNhatTaiNguyen', '', '', 1, '2021-06-22 08:32:31', '2021-06-22 08:32:31', 'cap-nhat-tai-nguyen', 1, 2, 1000, NULL),
	(1228, 'xoa-tai-nguyen', 'POST | App\\Modules\\TaiNguyen\\Controllers\\TaiNguyenController@xoaTaiNguyen', 'POST', 'App\\Modules\\TaiNguyen\\Controllers\\TaiNguyenController@xoaTaiNguyen', '', '', 1, '2021-06-22 08:32:31', '2021-06-22 08:32:31', 'xoa-tai-nguyen', 1, 2, 1000, NULL),
	(1229, 'To do list', 'GET | App\\Modules\\ToDo\\Controllers\\ToDoController@toDo', 'GET', 'App\\Modules\\ToDo\\Controllers\\ToDoController@toDo', '', '', 1, '2021-06-22 08:32:31', '2021-06-22 08:32:31', 'to-do', 1, 1, 1000, '<i class="fa fa-clock-o menu-icon"></i>'),
	(1230, 'danh-sach-to-do', 'POST | App\\Modules\\ToDo\\Controllers\\ToDoController@danhSachToDo', 'POST', 'App\\Modules\\ToDo\\Controllers\\ToDoController@danhSachToDo', '', '', 1, '2021-06-22 08:32:31', '2021-06-22 08:32:31', 'danh-sach-to-do', 1, 2, 1000, NULL),
	(1231, 'them-to-do', 'POST | App\\Modules\\ToDo\\Controllers\\ToDoController@themToDo', 'POST', 'App\\Modules\\ToDo\\Controllers\\ToDoController@themToDo', '', '', 1, '2021-06-22 08:32:31', '2021-06-22 08:32:31', 'them-to-do', 1, 2, 1000, NULL),
	(1232, 'to-do-single', 'POST | App\\Modules\\ToDo\\Controllers\\ToDoController@toDoSingle', 'POST', 'App\\Modules\\ToDo\\Controllers\\ToDoController@toDoSingle', '', '', 1, '2021-06-22 08:32:31', '2021-06-22 08:32:31', 'to-do-single', 1, 2, 1000, NULL),
	(1233, 'cap-nhat-to-do', 'POST | App\\Modules\\ToDo\\Controllers\\ToDoController@capNhatToDo', 'POST', 'App\\Modules\\ToDo\\Controllers\\ToDoController@capNhatToDo', '', '', 1, '2021-06-22 08:32:31', '2021-06-22 08:32:31', 'cap-nhat-to-do', 1, 2, 1000, NULL),
	(1234, 'xoa-to-do', 'POST | App\\Modules\\ToDo\\Controllers\\ToDoController@xoaToDo', 'POST', 'App\\Modules\\ToDo\\Controllers\\ToDoController@xoaToDo', '', '', 1, '2021-06-22 08:32:31', '2021-06-22 08:32:31', 'xoa-to-do', 1, 2, 1000, NULL),
	(1235, 'check-to-do', 'POST | App\\Modules\\ToDo\\Controllers\\ToDoController@checkToDo', 'POST', 'App\\Modules\\ToDo\\Controllers\\ToDoController@checkToDo', '', '', 1, '2021-06-22 08:32:31', '2021-06-22 08:32:31', 'check-to-do', 1, 2, 1000, NULL),
	(1236, 'uncheck-to-do', 'POST | App\\Modules\\ToDo\\Controllers\\ToDoController@uncheckToDo', 'POST', 'App\\Modules\\ToDo\\Controllers\\ToDoController@uncheckToDo', '', '', 1, '2021-06-22 08:32:31', '2021-06-22 08:32:31', 'uncheck-to-do', 1, 2, 1000, NULL),
	(1237, 'sort-to-do', 'POST | App\\Modules\\ToDo\\Controllers\\ToDoController@sortToDo', 'POST', 'App\\Modules\\ToDo\\Controllers\\ToDoController@sortToDo', '', '', 1, '2021-06-22 08:32:31', '2021-06-22 08:32:31', 'sort-to-do', 1, 2, 1000, NULL),
	(1238, 'Trang chủ', 'GET | App\\Modules\\TrangChu\\Controllers\\TrangChuController@home', 'GET', 'App\\Modules\\TrangChu\\Controllers\\TrangChuController@home', '', '', 1, '2021-06-22 08:32:31', '2021-06-22 08:32:31', '/', 1, 3, 1000, NULL),
	(1239, 'Tài khoản', 'GET | App\\Modules\\User\\Controllers\\UserController@user', 'GET', 'App\\Modules\\User\\Controllers\\UserController@user', '', '', 1, '2021-06-22 08:32:31', '2021-06-22 08:32:31', 'tai-khoan', 1, 1, 1000, '<i class="fa fa-address-book menu-icon"></i>'),
	(1240, 'danh-sach-user', 'POST | App\\Modules\\User\\Controllers\\UserController@danhSachUser', 'POST', 'App\\Modules\\User\\Controllers\\UserController@danhSachUser', '', '', 1, '2021-06-22 08:32:31', '2021-06-22 08:32:31', 'danh-sach-user', 1, 2, 1000, NULL),
	(1241, 'them-user', 'POST | App\\Modules\\User\\Controllers\\UserController@themUser', 'POST', 'App\\Modules\\User\\Controllers\\UserController@themUser', '', '', 1, '2021-06-22 08:32:31', '2021-06-22 08:32:31', 'them-user', 1, 2, 1000, NULL),
	(1242, 'user-single', 'POST | App\\Modules\\User\\Controllers\\UserController@userSingle', 'POST', 'App\\Modules\\User\\Controllers\\UserController@userSingle', '', '', 1, '2021-06-22 08:32:31', '2021-06-22 08:32:31', 'user-single', 1, 2, 1000, NULL),
	(1243, 'cap-nhat-user', 'POST | App\\Modules\\User\\Controllers\\UserController@capNhatUser', 'POST', 'App\\Modules\\User\\Controllers\\UserController@capNhatUser', '', '', 1, '2021-06-22 08:32:31', '2021-06-22 08:32:31', 'cap-nhat-user', 1, 2, 1000, NULL),
	(1244, 'xoa-user', 'POST | App\\Modules\\User\\Controllers\\UserController@xoaUser', 'POST', 'App\\Modules\\User\\Controllers\\UserController@xoaUser', '', '', 1, '2021-06-22 08:32:31', '2021-06-22 08:32:31', 'xoa-user', 1, 2, 1000, NULL),
	(1245, 'user-don-vi-single', 'POST | App\\Modules\\User\\Controllers\\UserController@userDonViSingle', 'POST', 'App\\Modules\\User\\Controllers\\UserController@userDonViSingle', '', '', 1, '2021-06-22 08:32:31', '2021-06-22 08:32:31', 'user-don-vi-single', 1, 2, 1000, NULL),
	(1246, 'user-role-single', 'POST | App\\Modules\\User\\Controllers\\UserController@userRoleSingle', 'POST', 'App\\Modules\\User\\Controllers\\UserController@userRoleSingle', '', '', 1, '2021-06-22 08:32:31', '2021-06-22 08:32:31', 'user-role-single', 1, 2, 1000, NULL),
	(1247, 'phan-quyen-user-role', 'POST | App\\Modules\\User\\Controllers\\UserController@phanQuyenUserRole', 'POST', 'App\\Modules\\User\\Controllers\\UserController@phanQuyenUserRole', '', '', 1, '2021-06-22 08:32:31', '2021-06-22 08:32:31', 'phan-quyen-user-role', 1, 2, 1000, NULL),
	(1259, 'Thông tin cá nhân', 'GET | App\\Modules\\User\\Controllers\\UserController@thongTinCaNhan', 'GET', 'App\\Modules\\User\\Controllers\\UserController@thongTinCaNhan', '', '', 1, '2021-06-22 08:33:49', '2021-06-22 08:33:49', 'thong-tin-ca-nhan', 1, 3, 1000, NULL),
	(1260, 'cap-nhat-thong-tin-ca-nhan', 'POST | App\\Modules\\User\\Controllers\\UserController@capNhatThongTinCaNhan', 'POST', 'App\\Modules\\User\\Controllers\\UserController@capNhatThongTinCaNhan', '', '', 1, '2021-06-22 08:33:49', '2021-06-22 08:33:49', 'cap-nhat-thong-tin-ca-nhan', 1, 2, 1000, NULL);
/*!40000 ALTER TABLE `admin_resource` ENABLE KEYS */;

-- Dumping structure for table qlhv.admin_role
CREATE TABLE IF NOT EXISTS `admin_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` int(10) unsigned NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table qlhv.admin_role: ~1 rows (approximately)
/*!40000 ALTER TABLE `admin_role` DISABLE KEYS */;
INSERT INTO `admin_role` (`id`, `role_name`, `state`, `created_at`, `updated_at`) VALUES
	(1, 'Quản trị', 1, '2021-06-22 01:39:01', '2021-06-22 01:39:01');
/*!40000 ALTER TABLE `admin_role` ENABLE KEYS */;

-- Dumping structure for table qlhv.admin_rule
CREATE TABLE IF NOT EXISTS `admin_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL,
  `resource_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `admin_rule_role_id_foreign` (`role_id`),
  KEY `admin_rule_resource_id_foreign` (`resource_id`),
  CONSTRAINT `admin_rule_resource_id_foreign` FOREIGN KEY (`resource_id`) REFERENCES `admin_resource` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `admin_rule_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `admin_role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1349 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table qlhv.admin_rule: ~6 rows (approximately)
/*!40000 ALTER TABLE `admin_rule` DISABLE KEYS */;
INSERT INTO `admin_rule` (`id`, `role_id`, `resource_id`, `created_at`, `updated_at`) VALUES
	(1343, 1, 1212, '2021-06-22 01:40:08', '2021-06-22 01:40:08'),
	(1344, 1, 1218, '2021-06-22 01:40:09', '2021-06-22 01:40:09'),
	(1345, 1, 1222, '2021-06-22 01:40:10', '2021-06-22 01:40:10'),
	(1346, 1, 1229, '2021-06-22 01:40:11', '2021-06-22 01:40:11'),
	(1347, 1, 1238, '2021-06-22 01:40:11', '2021-06-22 01:40:11'),
	(1348, 1, 1239, '2021-06-22 01:40:12', '2021-06-22 01:40:12');
/*!40000 ALTER TABLE `admin_rule` ENABLE KEYS */;

-- Dumping structure for table qlhv.bang_diem
CREATE TABLE IF NOT EXISTS `bang_diem` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID_HOC_VIEN` int(11) NOT NULL,
  `ID_MON_HOC` int(11) NOT NULL,
  `LAN_THI` int(11) NOT NULL,
  `KET_QUA` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `XEP_LOAI` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `UPDATED_AT` timestamp NOT NULL DEFAULT current_timestamp(),
  `CREATED_AT` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ID`),
  KEY `FK_HOC_VIEN` (`ID_HOC_VIEN`),
  KEY `FK_MON_HOC` (`ID_MON_HOC`),
  CONSTRAINT `FK_HOC_VIEN` FOREIGN KEY (`ID_HOC_VIEN`) REFERENCES `hoc_vien` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_MON_HOC` FOREIGN KEY (`ID_MON_HOC`) REFERENCES `mon_hoc` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table qlhv.bang_diem: ~0 rows (approximately)
/*!40000 ALTER TABLE `bang_diem` DISABLE KEYS */;
/*!40000 ALTER TABLE `bang_diem` ENABLE KEYS */;

-- Dumping structure for table qlhv.dm_dan_toc
CREATE TABLE IF NOT EXISTS `dm_dan_toc` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MA_DAN_TOC` int(20) NOT NULL,
  `TEN_DAN_TOC` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `UPDATED_AT` timestamp NOT NULL DEFAULT current_timestamp(),
  `CREATED_AT` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table qlhv.dm_dan_toc: ~0 rows (approximately)
/*!40000 ALTER TABLE `dm_dan_toc` DISABLE KEYS */;
/*!40000 ALTER TABLE `dm_dan_toc` ENABLE KEYS */;

-- Dumping structure for table qlhv.dm_dia_chi
CREATE TABLE IF NOT EXISTS `dm_dia_chi` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MA_DIA_CHI` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `DIA_CHI` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `PARENT_ID` int(11) NOT NULL,
  `UPDATED_AT` timestamp NOT NULL DEFAULT current_timestamp(),
  `CREATED_AT` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table qlhv.dm_dia_chi: ~0 rows (approximately)
/*!40000 ALTER TABLE `dm_dia_chi` DISABLE KEYS */;
/*!40000 ALTER TABLE `dm_dia_chi` ENABLE KEYS */;

-- Dumping structure for table qlhv.dm_don_vi
CREATE TABLE IF NOT EXISTS `dm_don_vi` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MA_DON_VI` int(20) NOT NULL,
  `TEN_DON_VI` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `PARENT_ID` int(11) NOT NULL,
  `UPDATED_AT` timestamp NOT NULL DEFAULT current_timestamp(),
  `CREATED_AT` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table qlhv.dm_don_vi: ~0 rows (approximately)
/*!40000 ALTER TABLE `dm_don_vi` DISABLE KEYS */;
/*!40000 ALTER TABLE `dm_don_vi` ENABLE KEYS */;

-- Dumping structure for table qlhv.dm_tham_so_he_thong
CREATE TABLE IF NOT EXISTS `dm_tham_so_he_thong` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ma_tham_so` varchar(250) DEFAULT NULL,
  `ten_tham_so` varchar(250) DEFAULT NULL,
  `loai_tham_so` varchar(250) DEFAULT NULL,
  `gia_tri_tham_so` varchar(250) DEFAULT NULL,
  `mo_ta_tham_so` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- Dumping data for table qlhv.dm_tham_so_he_thong: ~0 rows (approximately)
/*!40000 ALTER TABLE `dm_tham_so_he_thong` DISABLE KEYS */;
/*!40000 ALTER TABLE `dm_tham_so_he_thong` ENABLE KEYS */;

-- Dumping structure for table qlhv.hoc_vien
CREATE TABLE IF NOT EXISTS `hoc_vien` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MA_HOC_VIEN` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `HO_TEN` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `GIOI_TINH` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `NAM_SINH` int(11) NOT NULL,
  `CHUC_VU_DANG` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `CHUC_VU_CHINH_QUYEN` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `LA_HOC_VIEN_CHINH_THUC` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ID_DAN_TOC` int(11) NOT NULL,
  `ID_DON_VI` int(11) NOT NULL,
  `ID_LOP_HOC` int(11) NOT NULL,
  `ID_NOI_SINH` int(11) NOT NULL,
  `UPDATED_AT` timestamp NOT NULL DEFAULT current_timestamp(),
  `CREATED_AT` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ID`),
  KEY `FK_DAN_TOC` (`ID_DAN_TOC`),
  KEY `FK_DON_VI` (`ID_DON_VI`),
  KEY `FK_LOP_HOC` (`ID_LOP_HOC`),
  KEY `FK_DIA_CHI` (`ID_NOI_SINH`),
  CONSTRAINT `FK_DAN_TOC` FOREIGN KEY (`ID_DAN_TOC`) REFERENCES `dm_dan_toc` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_DIA_CHI` FOREIGN KEY (`ID_NOI_SINH`) REFERENCES `dm_dia_chi` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_DON_VI` FOREIGN KEY (`ID_DON_VI`) REFERENCES `dm_don_vi` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_LOP_HOC` FOREIGN KEY (`ID_LOP_HOC`) REFERENCES `lop_hoc` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table qlhv.hoc_vien: ~0 rows (approximately)
/*!40000 ALTER TABLE `hoc_vien` DISABLE KEYS */;
/*!40000 ALTER TABLE `hoc_vien` ENABLE KEYS */;

-- Dumping structure for table qlhv.khoa_hoc
CREATE TABLE IF NOT EXISTS `khoa_hoc` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MA_KHOA_HOC` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `TEN_KHOA_HOC` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `TU_NAM` int(11) NOT NULL,
  `DEN_NAM` int(11) NOT NULL,
  `UPDATED_AT` timestamp NOT NULL DEFAULT current_timestamp(),
  `CREATED_AT` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table qlhv.khoa_hoc: ~0 rows (approximately)
/*!40000 ALTER TABLE `khoa_hoc` DISABLE KEYS */;
/*!40000 ALTER TABLE `khoa_hoc` ENABLE KEYS */;

-- Dumping structure for table qlhv.lop_hoc
CREATE TABLE IF NOT EXISTS `lop_hoc` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MA_LOP_HOC` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `TEN_LOP_HOC` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `NAM_KHAI_GIANG` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `SO_LUONG_HV` int(11) NOT NULL,
  `ID_KHOA_HOC` int(11) NOT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT current_timestamp(),
  `UPDATED_AT` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ID`),
  KEY `FK_KHOA_HOC` (`ID_KHOA_HOC`),
  CONSTRAINT `FK_KHOA_HOC` FOREIGN KEY (`ID_KHOA_HOC`) REFERENCES `khoa_hoc` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table qlhv.lop_hoc: ~0 rows (approximately)
/*!40000 ALTER TABLE `lop_hoc` DISABLE KEYS */;
/*!40000 ALTER TABLE `lop_hoc` ENABLE KEYS */;

-- Dumping structure for table qlhv.mon_hoc
CREATE TABLE IF NOT EXISTS `mon_hoc` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MA_HOC_PHAN` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `HOC_PHAN` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `LOAI_HOC_PHAN` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `TEN_MON_HOC` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `LOAI_MON_HOC` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `UPDATED_AT` timestamp NOT NULL DEFAULT current_timestamp(),
  `CREATED_AT` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table qlhv.mon_hoc: ~0 rows (approximately)
/*!40000 ALTER TABLE `mon_hoc` DISABLE KEYS */;
/*!40000 ALTER TABLE `mon_hoc` ENABLE KEYS */;

-- Dumping structure for table qlhv.to_do
CREATE TABLE IF NOT EXISTS `to_do` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_user` int(10) unsigned NOT NULL,
  `noi_dung` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `file` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngay_tao` datetime DEFAULT current_timestamp(),
  `ngay_giao` datetime DEFAULT current_timestamp(),
  `han_xu_ly` datetime DEFAULT NULL,
  `ngay_hoan_thanh` datetime DEFAULT NULL,
  `sap_xep` int(11) NOT NULL DEFAULT 0,
  `trang_thai` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `FK_to_do_users` (`id_user`),
  CONSTRAINT `FK_to_do_users` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table qlhv.to_do: ~1 rows (approximately)
/*!40000 ALTER TABLE `to_do` DISABLE KEYS */;
INSERT INTO `to_do` (`id`, `id_user`, `noi_dung`, `file`, `ngay_tao`, `ngay_giao`, `han_xu_ly`, `ngay_hoan_thanh`, `sap_xep`, `trang_thai`) VALUES
	(44, 59, 'Test', NULL, '2021-06-22 08:49:53', '2021-06-22 08:49:53', NULL, '2021-06-22 08:50:08', 0, 1);
/*!40000 ALTER TABLE `to_do` ENABLE KEYS */;

-- Dumping structure for table qlhv.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinh_anh` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'logo.png',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `di_dong` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loai_tai_khoan` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT 'KHACH_HANG' COMMENT 'KHACH_HANG; CAN_BO',
  `state` int(11) DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table qlhv.users: ~4 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `password`, `hinh_anh`, `remember_token`, `created_at`, `updated_at`, `di_dong`, `loai_tai_khoan`, `state`) VALUES
	(59, 'admin', 'admin@vnpt.vn', '$2y$10$OcK0kyfMtKmByQ2ZmToC/uf.8ekeOk.Snc4LqXXDrnZrHO8oencTC', 'logo.png', NULL, '2021-06-22 01:20:02', '2021-06-22 01:20:02', NULL, 'CAN_BO', 1),
	(60, 'Phan Văn Thanh', 'thanhpv.tvh@vnpt.vn', '$2y$10$sCO/fuMTxLytV/G15xEtV.Mk/C0lGtpH9E8xxCAzkyFRhzRFixuVq', 'logo.png', NULL, '2021-06-22 01:26:10', '2021-06-22 01:26:10', '0941138484', 'CAN_BO', 1),
	(61, 'Phạm Kim Tín', 'tinpk.tvh@vnpt.vn', '$2y$10$JcH9OeAiM00.8Z9l02c1Ou4EfmYprQTME5kh6E021YQIUS7tOw4Z.', 'logo.png', NULL, '2021-06-22 01:41:13', '2021-06-22 01:41:13', NULL, 'CAN_BO', 1),
	(62, 'Nguyễn Chí Thanh', 'thanhnc.tvh@vnpt.vn', '$2y$10$e7mZi.T2T6jKxVB71bwDXONn9CAafXd0rzAP5iwP.nrbjKimBxPDm', 'logo.png', NULL, '2021-06-22 01:41:36', '2021-06-22 01:41:36', '0913658639', 'CAN_BO', 1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table qlhv.users_role
CREATE TABLE IF NOT EXISTS `users_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id_role_id` (`user_id`,`role_id`),
  KEY `FK_users_role_admin_role` (`role_id`),
  CONSTRAINT `FK_users_role_admin_role` FOREIGN KEY (`role_id`) REFERENCES `admin_role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_users_role_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;

-- Dumping data for table qlhv.users_role: ~4 rows (approximately)
/*!40000 ALTER TABLE `users_role` DISABLE KEYS */;
INSERT INTO `users_role` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
	(64, 59, 1, '2021-06-22 08:40:39', '2021-06-22 08:40:39'),
	(65, 60, 1, '2021-06-22 08:40:47', '2021-06-22 08:40:47'),
	(66, 61, 1, '2021-06-22 08:41:45', '2021-06-22 08:41:45'),
	(67, 62, 1, '2021-06-22 08:41:50', '2021-06-22 08:41:50');
/*!40000 ALTER TABLE `users_role` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
