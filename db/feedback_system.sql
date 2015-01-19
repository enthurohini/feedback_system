-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 19, 2015 at 10:06 AM
-- Server version: 5.5.40-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `feedback_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_0e939a4f` (`group_id`),
  KEY `auth_group_permissions_8373b171` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_417f1b1c` (`content_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=46 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add feedback_student_info', 7, 'add_feedback_student_info'),
(20, 'Can change feedback_student_info', 7, 'change_feedback_student_info'),
(21, 'Can delete feedback_student_info', 7, 'delete_feedback_student_info'),
(22, 'Can add infrastructure_support_info', 8, 'add_infrastructure_support_info'),
(23, 'Can change infrastructure_support_info', 8, 'change_infrastructure_support_info'),
(24, 'Can delete infrastructure_support_info', 8, 'delete_infrastructure_support_info'),
(25, 'Can add academic_assessment_info', 9, 'add_academic_assessment_info'),
(26, 'Can change academic_assessment_info', 9, 'change_academic_assessment_info'),
(27, 'Can delete academic_assessment_info', 9, 'delete_academic_assessment_info'),
(28, 'Can add course', 10, 'add_course'),
(29, 'Can change course', 10, 'change_course'),
(30, 'Can delete course', 10, 'delete_course'),
(31, 'Can add batch', 11, 'add_batch'),
(32, 'Can change batch', 11, 'change_batch'),
(33, 'Can delete batch', 11, 'delete_batch'),
(34, 'Can add section_info', 12, 'add_section_info'),
(35, 'Can change section_info', 12, 'change_section_info'),
(36, 'Can delete section_info', 12, 'delete_section_info'),
(37, 'Can add faculty_table', 13, 'add_faculty_table'),
(38, 'Can change faculty_table', 13, 'change_faculty_table'),
(39, 'Can delete faculty_table', 13, 'delete_faculty_table'),
(40, 'Can add subject', 14, 'add_subject'),
(41, 'Can change subject', 14, 'change_subject'),
(42, 'Can delete subject', 14, 'delete_subject'),
(43, 'Can add time_table', 15, 'add_time_table'),
(44, 'Can change time_table', 15, 'change_time_table'),
(45, 'Can delete time_table', 15, 'delete_time_table');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$12000$RbrJHc8b63Xt$vQtfl+klWrYpxmB04htRVt8CS3XGI0QKPhdsIl599Xg=', '2015-01-14 15:52:31', 1, 'rohini', '', '', 'chaudhary.rohini241@gmail.com', 1, 1, '2015-01-06 06:55:15'),
(2, 'pbkdf2_sha256$12000$ZuND5p24rFr4$6/O8lvfL55/t2ep66TEL2mQOCR99avd7sY2Mz2SAfN0=', '2015-01-19 04:12:48', 1, 'swati', '', '', 'mahajanswati108@gmail.com', 1, 1, '2015-01-08 06:39:19');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_e8701ad4` (`user_id`),
  KEY `auth_user_groups_0e939a4f` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_e8701ad4` (`user_id`),
  KEY `auth_user_user_permissions_8373b171` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_417f1b1c` (`content_type_id`),
  KEY `django_admin_log_e8701ad4` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=129 ;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(4, '2015-01-08 08:31:47', '1', 'feedback_student_info object', 1, '', 7, 1),
(5, '2015-01-08 08:33:43', '1', 'feedback_student_info object', 3, '', 7, 1),
(6, '2015-01-08 08:41:03', '4', 'feedback_student_info object', 1, '', 7, 1),
(7, '2015-01-08 08:43:52', '4', 'feedback_student_info object', 3, '', 7, 1),
(8, '2015-01-08 08:44:29', '5', 'feedback_student_info object', 1, '', 7, 1),
(9, '2015-01-08 08:54:43', '6', '', 1, '', 7, 1),
(10, '2015-01-12 08:01:29', 'IC', 'IC', 1, '', 10, 1),
(11, '2015-01-12 08:03:04', 'IT', 'IT', 2, 'Changed course_name.', 10, 1),
(12, '2015-01-12 08:08:23', 'IC-2K-9', 'IC-2K-9', 1, '', 11, 1),
(13, '2015-01-12 08:08:46', '1', 'IC-2K-9', 1, '', 12, 1),
(14, '2015-01-12 08:08:55', '2', 'IC-2K-9', 1, '', 12, 1),
(15, '2015-01-14 11:52:54', 'IC-2K-10', 'IC-2K-10', 1, '', 11, 1),
(16, '2015-01-14 11:53:10', 'IC-2K-11', 'IC-2K-11', 1, '', 11, 1),
(17, '2015-01-14 11:53:25', 'IC-2K-12', 'IC-2K-12', 1, '', 11, 1),
(18, '2015-01-14 11:53:44', 'IC-2K-13', 'IC-2K-13', 1, '', 11, 1),
(19, '2015-01-14 11:54:02', 'IC-2K-14', 'IC-2K-14', 1, '', 11, 1),
(20, '2015-01-14 11:55:08', 'IT-2K-10', 'IT-2K-10', 1, '', 11, 1),
(21, '2015-01-14 11:55:23', 'IT-2K-11', 'IT-2K-11', 1, '', 11, 1),
(22, '2015-01-14 11:55:37', 'IT-2K-12', 'IT-2K-12', 1, '', 11, 1),
(23, '2015-01-14 11:55:57', 'IT-2K-13', 'IT-2K-13', 1, '', 11, 1),
(24, '2015-01-14 11:56:12', 'IT-2K-14', 'IT-2K-14', 1, '', 11, 1),
(25, '2015-01-14 11:57:47', '3', 'IC-2K-11', 1, '', 12, 1),
(26, '2015-01-14 11:57:56', '4', 'IC-2K-11', 1, '', 12, 1),
(27, '2015-01-14 11:58:12', '5', 'IC-2K-12', 1, '', 12, 1),
(28, '2015-01-14 11:58:19', '6', 'IC-2K-12', 1, '', 12, 1),
(29, '2015-01-14 11:58:27', '7', 'IC-2K-13', 1, '', 12, 1),
(30, '2015-01-14 11:58:36', '8', 'IC-2K-13', 1, '', 12, 1),
(31, '2015-01-14 11:58:44', '9', 'IC-2K-14', 1, '', 12, 1),
(32, '2015-01-14 11:58:52', '10', 'IC-2K-14', 1, '', 12, 1),
(33, '2015-01-14 12:50:12', '1', 'Mrs Shraddha Soni', 1, '', 13, 1),
(34, '2015-01-14 12:57:18', '7', '7', 1, '', 7, 1),
(35, '2015-01-14 13:01:32', '8', '8', 1, '', 7, 1),
(36, '2015-01-14 13:03:11', '9', '9', 1, '', 7, 1),
(37, '2015-01-14 13:10:14', '10', '10', 1, '', 7, 1),
(38, '2015-01-14 13:10:39', '11', '11', 1, '', 7, 1),
(39, '2015-01-14 13:22:56', '12', '12', 1, '', 7, 1),
(40, '2015-01-14 13:26:41', '12', '12', 2, 'Added infrastructure_support_info "12". Added academic_assessment_info "12".', 7, 1),
(41, '2015-01-14 14:59:36', '2', 'Mr. Rahul Shanghai', 1, '', 13, 1),
(42, '2015-01-14 15:07:52', 'IC-801', 'Algorithem Analysis And Design', 1, '', 14, 1),
(43, '2015-01-14 15:16:02', '1', '1', 1, '', 15, 1),
(44, '2015-01-16 08:23:02', '2', 'Mr. Rahul Shanghai', 3, '', 13, 2),
(45, '2015-01-16 08:23:32', 'IC-801', 'Algorithem Analysis And Design', 3, '', 14, 2),
(46, '2015-01-16 08:26:42', 'IC-101A', 'Mathematics-I', 1, '', 14, 2),
(47, '2015-01-16 08:27:31', 'IC-103A', 'Physics-I', 1, '', 14, 2),
(48, '2015-01-16 08:28:29', 'IC-104B', 'Fundamental of Programming using C', 1, '', 14, 2),
(49, '2015-01-16 08:29:02', 'IC-105A', 'Computer Fundamentals', 1, '', 14, 2),
(50, '2015-01-16 08:29:43', 'IC-106C', 'English & Communicative Skills', 1, '', 14, 2),
(51, '2015-01-16 08:30:22', 'IC-107D', 'C-Programming Lab', 1, '', 14, 2),
(52, '2015-01-16 08:31:08', 'IC-108', 'Comprehensive Viva', 1, '', 14, 2),
(53, '2015-01-16 08:31:59', 'IC-1104', 'Comprehensive Viva', 1, '', 14, 2),
(54, '2015-01-16 08:32:52', 'IC-1105', 'VLSI  Design', 1, '', 14, 2),
(55, '2015-01-16 08:33:27', 'IC-1107A', 'Research in Computing', 1, '', 14, 2),
(56, '2015-01-16 08:34:06', 'IC-1108', 'Mobile & Wireless Computing', 1, '', 14, 2),
(57, '2015-01-16 08:34:41', 'IC-1109A', 'Data Mining & warehousing', 1, '', 14, 2),
(58, '2015-01-16 08:35:45', 'IC-110A', 'PC Software', 1, '', 14, 2),
(59, '2015-01-16 08:36:24', 'IC-301', 'Mathematics-III', 1, '', 14, 2),
(60, '2015-01-16 08:36:58', 'IC-302', 'Chemistry & Environmental Science', 1, '', 14, 2),
(61, '2015-01-16 08:37:35', 'IC-304A', 'Digital Electronics', 1, '', 14, 2),
(62, '2015-01-16 08:38:17', 'IC-305', 'Data Structure & Algorithms', 1, '', 14, 2),
(63, '2015-01-16 08:38:49', 'IC-306', 'Digital Computer Organization', 1, '', 14, 2),
(64, '2015-01-16 08:39:34', 'IC-307', 'DS & Algorithm Lab3', 1, '', 14, 2),
(65, '2015-01-16 08:40:10', 'IC-309', 'Comprehensive Viva', 1, '', 14, 2),
(66, '2015-01-16 08:40:47', 'IC-310C', 'Digital Elex Lab', 1, '', 14, 2),
(67, '2015-01-16 08:41:43', 'IC-501A', 'Accounting & Financial Management - II', 1, '', 14, 2),
(68, '2015-01-16 08:42:25', 'IC-502A', 'Microprocessor & Assembly Language', 1, '', 14, 2),
(69, '2015-01-16 08:42:55', 'IC-503', 'Computer Graphics', 1, '', 14, 2),
(70, '2015-01-16 08:44:28', 'IC-504A', 'System Programming', 1, '', 14, 2),
(71, '2015-01-16 08:45:10', 'IC-507D', 'Computer Lab', 1, '', 14, 2),
(72, '2015-01-16 08:45:50', 'IC-508B', 'Elex Lab', 1, '', 14, 2),
(73, '2015-01-16 08:46:28', 'IC-509', 'Comprehensive Viva', 1, '', 14, 2),
(74, '2015-01-16 08:47:17', 'IC-512A', 'Numerical Analysis & Design', 1, '', 14, 2),
(75, '2015-01-16 08:47:59', 'IC-701', 'Computer Architecture', 1, '', 14, 2),
(76, '2015-01-16 08:49:07', 'IC-702', 'Linear Systems', 1, '', 14, 2),
(77, '2015-01-16 08:49:37', 'IC-703', 'Discrete Structure', 1, '', 14, 2),
(78, '2015-01-16 08:50:17', 'IC-705A', 'Operating System', 1, '', 14, 2),
(79, '2015-01-16 08:50:50', 'IC-707', 'Comprehensive Viva', 1, '', 14, 2),
(80, '2015-01-16 08:51:45', 'IC-708', 'Bio-Informatics', 1, '', 14, 2),
(81, '2015-01-16 08:52:23', 'IC-901', 'Theory of Computation', 1, '', 14, 2),
(82, '2015-01-16 08:52:56', 'IC-905A', 'Object Oriented Analysis & Design', 1, '', 14, 2),
(83, '2015-01-16 08:53:34', 'IC-906', 'Comprehensive Viva', 1, '', 14, 2),
(84, '2015-01-16 08:54:10', 'IC-907A-B1', 'Project', 1, '', 14, 2),
(85, '2015-01-16 08:54:37', 'IC-907A-B2', 'Project', 1, '', 14, 2),
(86, '2015-01-16 08:55:10', 'IC-910', 'Managerial Economics', 1, '', 14, 2),
(87, '2015-01-16 08:55:41', 'IC-911', 'Software Testing & Quality Assurance', 1, '', 14, 2),
(88, '2015-01-16 08:56:43', 'IT-101', 'Mathematics-1', 1, '', 14, 2),
(89, '2015-01-16 08:57:20', 'IT-102', 'Statistical Methods-1', 1, '', 14, 2),
(90, '2015-01-16 08:58:00', 'IT-103', 'Physics', 1, '', 14, 2),
(91, '2015-01-16 08:58:36', 'IT-104', 'C-Programming', 1, '', 14, 2),
(92, '2015-01-16 08:59:19', 'IT-105', 'PC-Software', 1, '', 14, 2),
(93, '2015-01-16 08:59:48', 'IT-106', 'Communicative English', 1, '', 14, 2),
(94, '2015-01-16 09:00:26', 'IT-107', 'C- Programming Lab', 1, '', 14, 2),
(95, '2015-01-16 09:01:06', 'IT-108', 'Comprehensive Viva', 1, '', 14, 2),
(96, '2015-01-16 09:01:54', 'IT-109', 'PC s/w Lab', 1, '', 14, 2),
(97, '2015-01-16 09:02:30', 'IT-301', 'Linear Algebra', 1, '', 14, 2),
(98, '2015-01-16 09:03:31', 'IT-302', 'Internet Tools', 1, '', 14, 2),
(99, '2015-01-16 09:04:13', 'IT-303', 'Digital Electronics', 1, '', 14, 2),
(100, '2015-01-16 09:04:52', 'IT-304', 'Data Structures with C++''', 1, '', 14, 2),
(101, '2015-01-16 09:05:23', 'IT-305', 'Engineering Drawing', 1, '', 14, 2),
(102, '2015-01-16 09:05:55', 'IT-306', 'Comp Lab', 1, '', 14, 2),
(103, '2015-01-16 09:06:32', 'IT-307', 'Elex Lab', 1, '', 14, 2),
(104, '2015-01-16 09:07:10', 'IT-308', 'Comprehensive Viva', 1, '', 14, 2),
(105, '2015-01-16 09:07:56', 'IT-501A', 'Accounting & Financial Management - II', 1, '', 14, 2),
(106, '2015-01-16 09:08:29', 'IT-503A', 'Computer Graphics & Multimedia', 1, '', 14, 2),
(107, '2015-01-16 09:09:00', 'IT-504', 'System Programming', 1, '', 14, 2),
(108, '2015-01-16 09:09:27', 'IT-506', 'Numerical Analysis & Design', 1, '', 14, 2),
(109, '2015-01-16 09:10:12', 'IT-508C', 'Computer Lab', 1, '', 14, 2),
(110, '2015-01-16 09:10:41', 'IT-508D', 'Elex Lab', 1, '', 14, 2),
(111, '2015-01-16 09:11:21', 'IT-509', 'Comprehensive Viva', 1, '', 14, 2),
(112, '2015-01-16 09:12:11', 'IT-510', 'Microprocessor and Assembly language', 1, '', 14, 2),
(113, '2015-01-16 09:12:48', 'IT-701', 'Computer Architecture', 1, '', 14, 2),
(114, '2015-01-16 09:13:15', 'IT-702', 'Linear System', 1, '', 14, 2),
(115, '2015-01-16 09:13:44', 'IT-703', 'Discrete Structures', 1, '', 14, 2),
(116, '2015-01-16 09:14:16', 'IT-705A', 'Operating System', 1, '', 14, 2),
(117, '2015-01-16 09:14:52', 'IT-708', 'Bio Informatics', 1, '', 14, 2),
(118, '2015-01-16 09:15:30', 'IT-901A', 'Principles of Optimization', 1, '', 14, 2),
(119, '2015-01-16 09:15:59', 'IT-902A', 'Component Technology', 1, '', 14, 2),
(120, '2015-01-16 09:16:29', 'IT-907', 'Artificial Intelligence', 1, '', 14, 2),
(121, '2015-01-16 09:17:00', 'IT-908A', 'Object Oriented Analysis & Design', 1, '', 14, 2),
(122, '2015-01-16 09:17:27', 'IT-911', 'Project', 1, '', 14, 2),
(123, '2015-01-16 09:18:01', 'IT-906', 'Comprehensive Viva', 1, '', 14, 2),
(124, '2015-01-17 04:51:12', '105462', 'Nilesh Thakur', 3, '', 13, 2),
(125, '2015-01-17 04:51:12', '105461', 'Sachin Pradhan', 3, '', 13, 2),
(126, '2015-01-17 04:51:12', '105460', 'Yogesh Shukla', 3, '', 13, 2),
(127, '2015-01-17 04:51:12', '105459', 'Bhupendra Verma', 3, '', 13, 2),
(128, '2015-01-17 04:51:12', '105458', 'S. Das', 3, '', 13, 2);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_45f3b1d93ec8c61c_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `name`, `app_label`, `model`) VALUES
(1, 'log entry', 'admin', 'logentry'),
(2, 'permission', 'auth', 'permission'),
(3, 'group', 'auth', 'group'),
(4, 'user', 'auth', 'user'),
(5, 'content type', 'contenttypes', 'contenttype'),
(6, 'session', 'sessions', 'session'),
(7, 'feedback_student_info', 'feedback_form', 'feedback_student_info'),
(8, 'infrastructure_support_info', 'feedback_form', 'infrastructure_support_info'),
(9, 'academic_assessment_info', 'feedback_form', 'academic_assessment_info'),
(10, 'course', 'feedback_form', 'course'),
(11, 'batch', 'feedback_form', 'batch'),
(12, 'section_info', 'feedback_form', 'section_info'),
(13, 'faculty_table', 'feedback_form', 'faculty_table'),
(14, 'subject', 'feedback_form', 'subject'),
(15, 'time_table', 'feedback_form', 'time_table');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(7, 'contenttypes', '0001_initial', '2015-01-08 08:29:30'),
(8, 'auth', '0001_initial', '2015-01-08 08:29:30'),
(9, 'admin', '0001_initial', '2015-01-08 08:29:30'),
(10, 'feedback_form', '0001_initial', '2015-01-08 08:29:31'),
(11, 'sessions', '0001_initial', '2015-01-08 08:29:31'),
(12, 'feedback_form', '0002_academic_assessment_info', '2015-01-09 05:55:29'),
(13, 'feedback_form', '0003_course', '2015-01-09 06:52:07'),
(14, 'feedback_form', '0004_batch_section_info', '2015-01-09 07:42:00'),
(15, 'feedback_form', '0005_faculty_table', '2015-01-12 06:19:57'),
(16, 'feedback_form', '0006_subject', '2015-01-12 07:22:09'),
(17, 'feedback_form', '0007_time_table', '2015-01-14 11:45:46'),
(18, 'feedback_form', '0008_auto_20150114_1142', '2015-01-14 11:45:47'),
(19, 'feedback_form', '0009_auto_20150114_1259', '2015-01-14 12:59:45'),
(20, 'feedback_form', '0010_auto_20150114_1302', '2015-01-14 13:02:12'),
(21, 'feedback_form', '0011_auto_20150114_1308', '2015-01-14 13:08:58'),
(22, 'feedback_form', '0012_auto_20150114_1323', '2015-01-14 13:23:47'),
(23, 'feedback_form', '0013_auto_20150114_1330', '2015-01-14 13:30:36'),
(24, 'feedback_form', '0014_auto_20150114_1454', '2015-01-14 14:54:58'),
(25, 'feedback_form', '0015_auto_20150114_1503', '2015-01-14 15:03:42'),
(26, 'feedback_form', '0016_auto_20150114_1507', '2015-01-14 15:07:08'),
(27, 'feedback_form', '0017_auto_20150114_1514', '2015-01-14 15:14:45');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('5ve89vfzkot1wkh1qkoiha53t4bs5lsm', 'NTEyNTc5YmQ0YTc5YTVmODM5MWE2MzU2OTdkMWFhNzRhZGZiYmZkNTp7fQ==', '2015-01-22 06:40:14'),
('6sktotzi6w0zpu7e7nh1frwr3if0p77i', 'MmExMjc5NDZlYmYyMzljNDU0MGFhN2FjYjNjZjc4NTRhYTQzMjUwZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjI4N2FhM2IyM2YzMzY1OWY4NDFlOTFkNGUwY2VhNzFiYjU4ZDBmZWUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9', '2015-02-02 04:12:48'),
('73s8u0fcasys4ibmh6yfa00tfxcozoff', 'NzdjNTZlOTcxNjk1YmFjNTFhZGQwZjM0NTkyMWY1ZGYwYTdkODA3Yjp7Il9hdXRoX3VzZXJfaGFzaCI6IjNiYjVlN2YxNzZlOTBmZjg5ZWU4YjRlOGRjZTg5YjM0MDFjM2E4YmMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2015-01-28 11:51:44'),
('7g28buevcks7o2wyw2ty71h2ikecrx7g', 'NTEyNTc5YmQ0YTc5YTVmODM5MWE2MzU2OTdkMWFhNzRhZGZiYmZkNTp7fQ==', '2015-01-22 06:58:47'),
('9iysjnnyiweu2r4cjaebd0t122bv9p2n', 'NTEyNTc5YmQ0YTc5YTVmODM5MWE2MzU2OTdkMWFhNzRhZGZiYmZkNTp7fQ==', '2015-01-22 06:58:46'),
('agevnei81nlirwqeq21chwwvdvszi6i8', 'NTEyNTc5YmQ0YTc5YTVmODM5MWE2MzU2OTdkMWFhNzRhZGZiYmZkNTp7fQ==', '2015-02-01 06:55:22'),
('eevmor4pb1h9k17fh5gxb6mxfpvh1855', 'NTEyNTc5YmQ0YTc5YTVmODM5MWE2MzU2OTdkMWFhNzRhZGZiYmZkNTp7fQ==', '2015-01-22 06:55:30'),
('fvccgf6x78eq8j0s2rqq76vli2iin9vh', 'NTEyNTc5YmQ0YTc5YTVmODM5MWE2MzU2OTdkMWFhNzRhZGZiYmZkNTp7fQ==', '2015-01-22 06:59:23'),
('ivs2lq32rbowf81qs7rnnwj6gwyu732e', 'NzdjNTZlOTcxNjk1YmFjNTFhZGQwZjM0NTkyMWY1ZGYwYTdkODA3Yjp7Il9hdXRoX3VzZXJfaGFzaCI6IjNiYjVlN2YxNzZlOTBmZjg5ZWU4YjRlOGRjZTg5YjM0MDFjM2E4YmMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2015-01-28 15:52:31'),
('oq5g9hdcycb03hv2j4xldg8939tknd32', 'NTEyNTc5YmQ0YTc5YTVmODM5MWE2MzU2OTdkMWFhNzRhZGZiYmZkNTp7fQ==', '2015-01-22 06:58:48'),
('tfltrxbc4taphlxf8z6av1uj7xhwvda0', 'NzdjNTZlOTcxNjk1YmFjNTFhZGQwZjM0NTkyMWY1ZGYwYTdkODA3Yjp7Il9hdXRoX3VzZXJfaGFzaCI6IjNiYjVlN2YxNzZlOTBmZjg5ZWU4YjRlOGRjZTg5YjM0MDFjM2E4YmMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2015-01-22 07:00:32');

-- --------------------------------------------------------

--
-- Table structure for table `feedback_form_academic_assessment_info`
--

CREATE TABLE IF NOT EXISTS `feedback_form_academic_assessment_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject_id` varchar(20) NOT NULL,
  `faculty_id` varchar(20) NOT NULL,
  `conceptual_clarity` int(11) NOT NULL,
  `subject_knowledge` int(11) NOT NULL,
  `practical_example` int(11) NOT NULL,
  `handling_capability` int(11) NOT NULL,
  `motivation` int(11) NOT NULL,
  `control_ability` int(11) NOT NULL,
  `course_completion` int(11) NOT NULL,
  `communication_skill` int(11) NOT NULL,
  `regularity_punctuality` int(11) NOT NULL,
  `outside_guidance` int(11) NOT NULL,
  `syllabus_industry_relevance` int(11) NOT NULL,
  `sufficiency_of_course` int(11) NOT NULL,
  `suggestion_for_subject` mediumtext NOT NULL,
  `suggestion_for_course` mediumtext NOT NULL,
  `fs_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `feedback_form_academic_assessment_info`
--

INSERT INTO `feedback_form_academic_assessment_info` (`id`, `subject_id`, `faculty_id`, `conceptual_clarity`, `subject_knowledge`, `practical_example`, `handling_capability`, `motivation`, `control_ability`, `course_completion`, `communication_skill`, `regularity_punctuality`, `outside_guidance`, `syllabus_industry_relevance`, `sufficiency_of_course`, `suggestion_for_subject`, `suggestion_for_course`, `fs_id_id`) VALUES
(1, '1', '1', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 'dsgfhsgfyuieyfisekljdnasmdmbajbgjsahdyiaudiouasodnasm,dnm,asbdjsa', 'SFDHSAGDJ.''/.;sdfaghdjad', 12);

-- --------------------------------------------------------

--
-- Table structure for table `feedback_form_batch`
--

CREATE TABLE IF NOT EXISTS `feedback_form_batch` (
  `batch_id` varchar(20) NOT NULL,
  `session` int(11) NOT NULL,
  `course_id_id` varchar(2) NOT NULL,
  PRIMARY KEY (`batch_id`),
  KEY `feedback_form_batch_4c30cc1b` (`course_id_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback_form_batch`
--

INSERT INTO `feedback_form_batch` (`batch_id`, `session`, `course_id_id`) VALUES
('IC-2K-10', 2010, 'IC'),
('IC-2K-11', 2011, 'IC'),
('IC-2K-12', 2012, 'IC'),
('IC-2K-13', 2013, 'IC'),
('IC-2K-14', 2014, 'IC'),
('IC-2K-9', 2009, 'IC'),
('IT-2K-10', 2010, 'IT'),
('IT-2K-11', 2011, 'IT'),
('IT-2K-12', 2012, 'IT'),
('IT-2K-13', 2013, 'IT'),
('IT-2K-14', 2014, 'IT');

-- --------------------------------------------------------

--
-- Table structure for table `feedback_form_course`
--

CREATE TABLE IF NOT EXISTS `feedback_form_course` (
  `course_id` varchar(2) NOT NULL,
  `course_name` varchar(20) NOT NULL,
  `stream` varchar(15) NOT NULL,
  `number_of_sem` int(11) NOT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback_form_course`
--

INSERT INTO `feedback_form_course` (`course_id`, `course_name`, `stream`, `number_of_sem`) VALUES
('IC', 'MCA', 'CS', 12),
('IT', 'MTECH', 'CS', 11);

-- --------------------------------------------------------

--
-- Table structure for table `feedback_form_faculty_table`
--

CREATE TABLE IF NOT EXISTS `feedback_form_faculty_table` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `qualification` varchar(50) NOT NULL,
  `date_of_birth` date NOT NULL,
  `email` varchar(100) NOT NULL,
  `discipline` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `area_of_interest` varchar(50) NOT NULL,
  `contact_number` varchar(20) NOT NULL,
  `type` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `responsibility` varchar(30) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=105532 ;

--
-- Dumping data for table `feedback_form_faculty_table`
--

INSERT INTO `feedback_form_faculty_table` (`user_id`, `name`, `qualification`, `date_of_birth`, `email`, `discipline`, `gender`, `area_of_interest`, `contact_number`, `type`, `status`, `designation`, `responsibility`) VALUES
(105349, 'Dr. Anand K. Sapre', 'BE,MBA,Ph.D', '0000-00-00', 'aksapre@gmail.com', 'Management', 'M', '', '', 2, 1, 'Professor', 'Director'),
(105350, 'Dr.R.K. Vyas', 'B.E, MBA,Ph.D,CAIIB', '1951-07-13', 'ramkrishnavyas@gmail.com', 'Management', 'M', 'Finance & Banking', '', 2, 1, 'Professor', 'Dean Faculty of Management'),
(105351, 'Dr.B.K.Tripathi', 'M.Sc, PhD, MBA, Ph.D', '1965-02-10', 'tripathibrajesh@yahoo.com', 'Management', 'M', 'Chemistry,Human Resource Management', '', 2, 1, 'Professor', 'In-charge, Management Program'),
(105352, 'Dr.Yamini Karmarkar', 'B.Sc, MMS, Ph.D, FDP(IIMA), CPET(ISB)', '1971-10-24', 'ykarmarkar@gmail.com', 'Management', 'F', 'Finance,Strategy Management', '9826022674', 2, 1, 'Reader', 'Program In-Charge, MBA (MS) 2'),
(105353, 'Dr.Kirti Mathur', 'ME(CSE)', '1968-01-03', 'kirti1369@gmail.com', 'Computer', 'F', 'Software Engg.', '', 2, 1, 'Reader', 'In-charge, Computer Programs'),
(105354, 'Dr.Geeta Sharma', 'MBA, Ph.D', '1962-12-09', 'geetasharmaiips@gmail.com', 'Management', 'F', 'Banking', '', 2, 1, 'Reader', 'Program In-Charge, MBA (MS) 5'),
(105355, 'Dr.Geeta Nema', 'B.Sc, M.Sc, MBA, Ph.D''', '1971-03-19', 'geetanema@rediffmail.com''', 'Management', 'F', 'Marketing', '', 2, 1, 'Reader', 'Program In-Charge, MBA (MS) 5'),
(105356, 'Dr.Jyoti Sharma', 'M.A(Psy), PGDCABM,Ph.D', '1971-04-04', 'jyotisharmaindore@gmail.com', 'Management', 'F', 'OB,HRM', '', 2, 1, 'Reader', 'Program In-Charge, MBA (APR)'),
(105357, 'Mr.Ramesh Thakur', 'B.E(CS), ME, Ph.D(Pursuing)', '1974-12-20', 'r_thakur@rediffmail.com', 'Computer', 'M', 'Information Extraction,OOAD', '', 2, 1, 'Reader', 'Program In-Charge, MCA 6 Yrs'),
(105358, 'Mr.Jugendra Dongre', 'B.Tech(CSE), M.Tech(CS)', '1976-07-13', 'jugendra_kumar@rediffmail.com', 'Computer', 'M', 'Artificial Inteligance,Multimedia Computing,Analys', '', 2, 1, 'Reader', 'Program In-Charge, MCA 6 Yrs.'),
(105359, 'Ms.Manju Suchdeo', 'M.Tech(CS), M.Sc(IT)', '1977-10-08', 'manju_suchdeo@yahoo.co.in', 'Computer', 'F', 'Information Extraction,OOAD', '', 2, 1, 'Reader', 'Program In-Charge, M.Tech. '),
(105360, 'Mr.Shaligram Prajapat', 'B.Sc(Electronics),M.Tech(CS), M.Sc(CS),UGC-NET(Com', '1976-06-27', 'shaligram.prajapat@gmail.com', 'Computer', 'M', 'Algorithms', '', 2, 1, 'Reader', 'Incharge Development Center'),
(105361, 'Dr.Manish Sitlani', 'Ph.D, ACS, LLB(H), M.Com', '1972-08-14', 'msitlani1@yahoo.com', 'Management', 'M', 'Finance & Accounting', '', 2, 1, 'Reader', 'Program In-Charge, MBA (T) 2'),
(105362, 'Dr.Preeti Singh', 'MBA, B.ED(DE), B.Com,Ph.D', '0000-00-00', '', 'Management', 'F', 'Information Systems & Management', '', 2, 1, 'Reader', 'Co-ordinator-AntiRagging Commi'),
(105363, 'Dr.Ravindra Yadav', 'B.Sc, DEE, MBA, FDP-IIMA,Ph.D(Management)', '1970-09-01', 'yadav_ravindra@yahoo.co.in', 'Management', 'M', 'HR/OB,Operations', '', 2, 1, 'Senior Lecturer', 'Incharge PMS'),
(105364, 'Dr.Anshu Bhati', 'NULL', '1975-10-04', 'anshubhati@rediffmail.com', 'Management', 'F', 'Marketing & Public Relations', '', 2, 1, 'Lecturer', 'Batch Facilitator'),
(105365, 'Dr.Pooja Jain', 'Ph.D.,MBA(APR), B.Sc.', '1976-09-30', 'poojaiips@gmail.com', 'Management', 'F', 'Marketing, Advertising, Consumer Behaviour', '', 2, 1, 'Lecturer', 'Batch Facilitator'),
(105366, 'Dr.Suresh Patidar', 'M.Com.(Management), LL.B. (Hons.), CS(Inter),UGC-N', '1972-09-18', 'spatidar99@yahoo.co.in', 'Management', 'F', 'Consumer Law,Corporate Governance', '', 2, 1, 'Reader', 'Program In-Charge, B.Com. (Hon'),
(105367, 'Dr.Sujata Parwani', 'M.Phil Eco.,Ph.D', '1972-05-12', 'sujata.saxena.iips@gmail.com', 'Management', 'F', 'Economics Related Areas', '', 2, 1, 'Lecturer', 'Batch Facilitator'),
(105368, 'Mr.Gaurav Purohit', 'MTA', '0000-00-00', ' gaurav.purohit6@gmail.com', 'Management', 'M', '', '', 2, 1, 'Lecturer', 'Batch Facilitator'),
(105369, 'Mr.Anil Goray', 'B.Sc, PGDBA, MBA, LLB(Hons) R Scholar', '1954-09-03', 'gorayanil@gmail.com', 'Management', 'M', 'Marketing Management & Other Related Areas', '', 2, 1, 'Lecturer', 'Batch Facilitator'),
(105370, 'Ms.Muskan Karamchandani', 'B.Com, MBA', '1979-04-26', 'karamchandanimuskan@gmail.com', 'Management', 'F', 'Finance & Economics Related Areas', '', 2, 1, 'Lecturer', 'Batch Facilitator'),
(105371, 'Ms.Shailvi Verma', 'M.SC(IT)', '1981-02-18', '', 'Computer', 'F', 'DBMS Related Areas', '', 2, 1, 'Lecturer', 'Batch Facilitator'),
(105372, 'Mr.Surendra Malviya', 'MBA(e-commerce),PhD(pursuing)', '1978-02-05', 'surendra.malviya@gmail.com', 'Management', 'M', 'e-Commerce ,e-business,Mobile commerce,Internet ma', '09827323823', 2, 1, 'Lecturer', 'Batch Facilitator'),
(105373, 'Ms.Yasmin Shaikh', 'M.Tech.(CS), M.Sc.(CS), UGC-NET (CS)', '1981-04-10', 'yasminshaikh01@yahoo.co.in', 'Computer', 'F', 'Natural Language Processing', '', 2, 1, 'Lecturer', 'Batch Facilitator'),
(105374, 'Dr.Kapil Jain', 'Ph.D,M.Phil,M.Com., B.Com. With Computer Applicati', '1981-11-14', 'kapil_jain1411@yahoo.com', 'Management', 'M', 'Finance & Accounting', '9303221760', 2, 1, 'Lecturer', 'Batch Facilitator'),
(105375, 'Manminder Singh Saluja', 'Ph.D, M.Phil, M.A.(Economics)', '1980-11-12', 'gursikh11@rediffmail.com', 'Management', 'M', 'Economics, Econometrics, Financial Economics', '9303271590', 2, 1, 'Senior Lecturer', 'Batch Facilitator'),
(105376, 'Dr.Nirmala Sawan', 'M.Sc(Statistics), Ph.D(Management)', '1984-09-07', 'nirmalasawan@gmail.com', 'Management', 'F', 'Statistics Related Areas', '', 2, 1, 'Lecturer', 'Batch Facilitator'),
(105377, 'Mr.Rajesh Verma', 'B.Sc(Electronics), PGDCA, MCA', '1975-10-20', 'rajeesh_verma@yahoo.com', 'Computer', 'M', 'DBMS & Real Time Systems', '', 2, 1, 'Lecturer', 'Batch Facilitator'),
(105378, 'Dr.Shilpa Bagdare', 'MBA(Marketing),Ph.D(Management)', '1972-12-21', 'shilpabagdare@gmail.com', 'Management', 'F', 'Services Marketing,Relating Customer Experience', '', 2, 1, 'Lecturer', 'Batch Facilitator'),
(105379, 'Mr.Vivek Shrivastava', 'B. Sc. (CS), DCA, PGDCA, APGDCA, MCA, UGC-NET Qual', '1978-03-22', 'shrivastava.vivex@gmail.com''', 'Computer', 'M', 'SuperComputing, Ubiquitous Computing in Distribute', '09754086330', 2, 1, 'Lecturer', 'Batch Facilitator'),
(105380, 'Mr.Arpit Nema', 'B.Sc.(Computer Maintenance), MCA ,Ph.D. Course Wor', '0000-00-00', 'arpit.iipsf@gmail.com', 'Computer', 'M', 'ProgrammingLanguages(C,C++,JAVA),E-commerce,Softwa', '', 2, 1, 'Lecturer', 'Batch Facilitator'),
(105381, 'Ms.Vibha Gupta', 'MBA(APR),CDAC,D.O.R.,FCLI (Aligarh)', '1971-12-11', 'vibha1211@yahoo.com', 'Management', 'F', 'Service Market,Multimedia Web and HCI', '', 2, 1, 'Lecturer', 'Batch Facilitator'),
(105382, 'Ms.Shikha Chaturvedi', 'MBA(TA)', '1985-06-12', 'shikha_chat@hotmail.com', 'Management', 'F', '', '', 2, 1, 'Lecturer', 'Batch Facilitator'),
(105383, 'Mr.Anil S. Goray', '', '0000-00-00', 'gorayanil@gmail.com', 'Management', 'M', '', '', 2, 1, 'Lecturer', 'Batch Facilitator'),
(105384, 'Ms.Navneet Bhatia', 'MBA', '0000-00-00', 'navneetbhatiya@gmail.com', 'Management', 'F', '', '', 2, 1, 'Lecturer', 'Batch Facilitator'),
(105385, 'Ms.Poonam Mangwani', 'ME', '1973-05-19', 'pmangwani@yahoo.com', 'Computer', 'F', 'XML,Data Base,Object Oriented S/W Engg.', '', 2, 1, 'Lecturer', 'Batch Facilitator'),
(105386, 'Mr.Nitin Nagar', 'BCA,MCA,Ph.D(pursuing)', '0000-00-00', 'nitin28nagar@gmail.com', 'Computer', 'M', 'Cloud computing', '9826856519', 2, 1, 'Lecturer', 'Batch Facilitator'),
(105387, 'Dr.Rahul Singhai', 'B.Sc,MCA,M.phil(CS),PhD(CS)', '0000-00-00', 'singhai_rahul@hotmail.com', 'Computer', 'M', 'Operating System,DBMS,SAD,System Programming', '9827737525', 2, 1, 'Lecturer', 'Batch Facilitator'),
(105388, 'Dr.Prerna Kumar', 'B.E, MBA,Ph.D,CAIIB', '0000-00-00', 'prernakumar74@gmail.com', 'Management', 'F', '', '', 2, 1, 'Lecturer', 'Batch Facilitator'),
(105389, 'Mr.Rupesh Sendre', 'B.Sc,MCA,M.phil(CS),PhD(CS)', '0000-00-00', 'sendre.rupesh@gmail.com', 'Computer', 'M', 'Communication and networks', '9981116176', 2, 1, 'Lecturer', 'Batch Facilitator'),
(105390, 'Mr.Naresh Dembla', 'B.E, MBA, ME(comp. Eng) , Ph.D(Pursuing)''', '0000-00-00', 'nareshdembla@gmail.com', 'Management', 'M', '', '', 2, 1, 'Lecturer', 'Batch Facilitator'),
(105391, 'Ms.Shraddha Soni', 'MCA', '0000-00-00', 'so_shraddha4@yahoo.co.in', 'Computer', 'F', '', '', 2, 1, 'Lecturer', 'Batch Facilitator'),
(105392, 'Ms.Kirti Vijayvargiya', 'MCA,UGC-NET(CS)', '0000-00-00', 'keerti_vijay@rediffmail.com', 'Computer', 'F', '', '', 2, 1, 'Lecturer', 'Batch Facilitator'),
(105393, 'Mr.Pradeep K. Jatav', 'B.Sc(Statistics),  MCA', '0000-00-00', 'p.jatav84@gmail.com', 'Computer', 'M', 'Computer science', '9713038949', 0, 0, 'Lecturer', 'Batch Facilitator'),
(105394, 'Mr.Imroz Khan', 'B.E.(Electronics)', '1977-02-10', 'imroz@iips.edu.in', 'TPO', 'M', 'Software Engineering, e-Governance and Process re-', '91-731-2468507', 2, 1, '', 'Software Engineer'),
(105395, 'Mr.Yogendra Bawal', 'M.Sc.(Electronics. & Communication)', '0000-00-00', 'ybawal@yahoo.com', 'AO', 'M', '', '2461888', 2, 1, 'Network Administrator', 'Administrative Officer'),
(105396, 'Mr.Basant Namdeo', 'MCA', '0000-00-00', 'basant_nd@yahoo.com', 'Computer', 'M', 'Application Development, Database Design, Web Appl', '', 2, 1, 'Lecturer', 'Batch Facilitator'),
(105397, 'Mr.Almas Nabi', 'M.Tech.(CS), M.Sc.(CS)', '0000-00-00', 'almas.nabi@iips.edu.in', 'Computer Lab', 'M', 'Networking, DBMS, AS/400', '2461888', 2, 1, '', 'Programmer'),
(105398, 'Mr.Sanjay Narsinghani', 'MCA', '0000-00-00', 'narsinghanisanjay@rediffmail.', 'Computer Lab', 'M', '', '', 2, 1, 'Programmer', 'Programmer'),
(105399, 'Bhanu Pratap Singh', 'NULL', '0000-00-00', '', '', '', '', '', 2, 1, 'Visiting Faculty', 'Visiting Faculty'),
(105400, 'Shakti Banerjee', 'NULL', '0000-00-00', '', '', 'M', '', '', 2, 1, 'Visiting Faculty', 'Visiting Faculty'),
(105401, 'Siddharth Sharma', 'NULL', '0000-00-00', '', '', 'M', '', '', 2, 1, 'Visiting Faculty', 'Visiting Faculty'),
(105402, 'Lalit Ingle', 'NULL', '0000-00-00', '', '', 'M', '', '', 2, 1, 'Visiting Faculty', 'Visiting Faculty'),
(105403, 'Prabhakar Singh', 'NULL', '0000-00-00', '', '', 'M', '', '', 2, 1, 'Visiting Faculty', 'Visiting Faculty'),
(105404, 'Ramesh Mangal', 'NULL', '0000-00-00', '', '', 'M', '', '', 2, 1, 'Visiting Faculty', 'Visiting Faculty'),
(105405, 'Deepak Shrivastav', 'NULL', '0000-00-00', '', '', 'M', '', '', 2, 1, 'Visiting Faculty', 'Visiting Faculty'),
(105406, 'Vivek Sharma', 'NULL', '0000-00-00', '', '', 'M', '', '', 2, 1, 'Visiting Faculty', 'Visiting Faculty'),
(105407, 'Richa Mandowara', 'NULL', '0000-00-00', '', '', 'F', '', '', 2, 1, 'Visiting Faculty', 'Visiting Faculty'),
(105408, 'Juhi Kothari', 'NULL', '0000-00-00', '', '', 'F', '', '', 2, 1, 'Visiting Faculty', 'Visiting Faculty'),
(105409, 'Anjani Tomar', 'NULL', '0000-00-00', '', '', 'F', '', '', 2, 1, 'Visiting Faculty', 'Visiting Faculty'),
(105410, 'Nilesh Jain', 'NULL', '0000-00-00', '', '', 'M', '', '', 2, 1, 'Visiting Faculty', 'Visiting Faculty'),
(105412, 'Ashok Mishra', 'NULL', '0000-00-00', '', '', 'M', '', '', 2, 1, 'Visiting Faculty', 'Visiting Faculty'),
(105413, 'Manjoo Mundra', 'NULL', '0000-00-00', '', '', 'F', '', '', 2, 1, 'Visiting Faculty', 'Visiting Faculty'),
(105414, 'Chitranjan Sharma', 'NULL', '0000-00-00', '', '', '', '', '', 2, 1, 'Visiting Faculty', 'Visiting Faculty'),
(105415, 'Jalaj Katare', 'NULL', '0000-00-00', '', '', '', '', '', 2, 1, 'Visiting Faculty', 'Visiting Faculty'),
(105416, 'Deepi Jain', 'NULL', '0000-00-00', '', '', '', '', '', 2, 1, 'Visiting Faculty', 'Visiting Faculty'),
(105417, 'Vipul Paramarthi', 'NULL', '0000-00-00', '', '', '', '', '', 2, 1, 'Visiting Faculty', 'Visiting Faculty'),
(105422, 'D. K. Banerjee', 'NULL', '0000-00-00', '', '', '', '', '', 2, 1, 'Visiting Faculty', 'Visiting Faculty'),
(105423, 'Shailendra K Khichi', 'NULL', '0000-00-00', '', '', '', '', '', 2, 1, 'Visiting Faculty', 'Visiting Faculty'),
(105424, 'Sharad Chaudhary', 'NULL', '0000-00-00', '', '', '', '', '', 2, 1, 'Visiting Faculty', 'Visiting Faculty'),
(105428, 'Sanjay Katiyal', 'NULL', '0000-00-00', '', '', '', '', '', 2, 1, 'Visiting Faculty', 'Visiting Faculty'),
(105430, 'Dheeraj Nitnavre', 'NULL', '0000-00-00', '', '', '', '', '', 2, 1, 'Visiting Faculty', 'Visiting Faculty'),
(105431, 'Manas Ranjan', 'NULL', '0000-00-00', '', '', '', '', '', 2, 1, 'Visiting Faculty', 'Visiting Faculty'),
(105432, 'Vaibhav Neema', 'NULL', '0000-00-00', '', '', '', '', '', 2, 1, 'Visiting Faculty', 'Visiting Faculty'),
(105435, 'Ruhi Khan', 'NULL', '0000-00-00', '', '', '', '', '', 2, 1, 'Visiting Faculty', 'Visiting Faculty'),
(105436, 'Naresh Patel', 'NULL', '0000-00-00', '', '', '', '', '', 2, 1, 'Visiting Faculty', 'Visiting Faculty'),
(105437, 'Vijay Karma', 'NULL', '0000-00-00', '', '', '', '', '', 2, 1, 'Visiting Faculty', 'Visiting Faculty'),
(105438, 'Shailesh Kadam', 'NULL', '0000-00-00', '', '', '', '', '', 2, 1, 'Visiting Faculty', 'Visiting Faculty'),
(105439, 'Richa Tiwari', 'NULL', '0000-00-00', '', '', '', '', '', 2, 1, 'Visiting Faculty', 'Visiting Faculty'),
(105440, 'Mahesh Sharma', 'NULL', '0000-00-00', '', '', '', '', '', 2, 1, 'Visiting Faculty', 'Visiting Faculty'),
(105441, 'B. Sarkar', 'NULL', '0000-00-00', '', '', '', '', '', 2, 1, 'Visiting Faculty', 'Visiting Faculty'),
(105443, 'Puneet Shrivastav', 'NULL', '0000-00-00', '', '', '', '', '', 2, 1, 'Visiting Faculty', 'Visiting Faculty'),
(105444, 'Nitisha Jain', 'NULL', '0000-00-00', '', '', '', '', '', 2, 1, 'Visiting Faculty', 'Visiting Faculty'),
(105445, 'Priyanka Jain', 'NULL', '0000-00-00', '', '', '', '', '', 2, 1, 'Visiting Faculty', 'Visiting Faculty'),
(105446, 'Ashish Kumar Jain', 'NULL', '0000-00-00', '', '', '', '', '', 2, 1, 'Visiting Faculty', 'Visiting Faculty'),
(105447, 'Sangeeta Chaudhary', 'NULL', '0000-00-00', '', '', '', '', '', 2, 1, 'Visiting Faculty', 'Visiting Faculty'),
(105448, 'Debahuti Basu', 'NULL', '0000-00-00', '', '', '', '', '', 2, 1, 'Visiting Faculty', 'Visiting Faculty'),
(105449, 'Vikas Jain', 'NULL', '0000-00-00', '', '', '', '', '', 2, 1, 'Visiting Faculty', 'Visiting Faculty'),
(105450, 'Richa Agrawal', 'NULL', '0000-00-00', '', '', '', '', '', 2, 1, 'Visiting Faculty', 'Visiting Faculty'),
(105451, 'S. L. Chaplot', 'NULL', '0000-00-00', '', '', '', '', '', 2, 1, 'Visiting Faculty', 'Visiting Faculty'),
(105452, 'Devendra Verma', 'NULL', '0000-00-00', '', '', '', '', '', 2, 1, 'Visiting Faculty', 'Visiting Faculty'),
(105453, 'R.C. Sharma', 'NULL', '0000-00-00', '', '', '', '', '', 2, 1, 'Visiting Faculty', 'Visiting Faculty'),
(105454, 'Kapil Kapoor', 'NULL', '0000-00-00', '', '', '', '', '', 2, 1, 'Visiting Faculty', 'Visiting Faculty'),
(105455, 'Sachin Anchaliya', 'NULL', '0000-00-00', '', '', '', '', '', 2, 1, 'Visiting Faculty', 'Visiting Faculty'),
(105456, 'N.K.Totla', 'NULL', '0000-00-00', '', '', '', '', '', 2, 1, 'Visiting Faculty', 'Visiting Faculty'),
(105457, 'S.K.Dutta', 'NULL', '0000-00-00', '', '', '', '', '', 2, 1, 'Visiting Faculty', 'Visiting Faculty'),
(105458, 'Nitin Gangrade', 'NULL', '0000-00-00', '', '', '', '', '', 2, 1, 'Visiting Faculty', 'Visiting Faculty'),
(105459, 'Praveen Saxena', 'NULL', '0000-00-00', '', '', '', '', '', 2, 1, 'Visiting Faculty', 'Visiting Faculty'),
(105460, 'Jeet Patidar', 'NULL', '0000-00-00', '', '', '', '', '', 2, 1, 'Visiting Faculty', 'Visiting Faculty'),
(105463, 'Ranbeer Das', 'NULL', '0000-00-00', '', '', '', '', '', 2, 1, 'Visiting Faculty', 'Visiting Faculty'),
(105466, 'Diensh Wadhwa', 'NULL', '0000-00-00', '', '', '', '', '', 2, 1, 'Visiting Faculty', 'Visiting Faculty'),
(105468, 'O.S. Gupta', 'NULL', '0000-00-00', '', '', '', '', '', 2, 1, 'Visiting Faculty', 'Visiting Faculty'),
(105469, 'Kalpna Trehan', 'NULL', '0000-00-00', '', '', '', '', '', 2, 1, 'Visiting Faculty', 'Visiting Faculty'),
(105470, 'Kapil Sharma', 'NULL', '0000-00-00', '', '', '', '', '', 2, 1, 'Visiting Faculty', 'Visiting Faculty'),
(105471, 'Shirish Kutumble', 'NULL', '0000-00-00', '', '', '', '', '', 2, 1, 'Visiting Faculty', 'Visiting Faculty'),
(105472, 'Alok Arzare', 'NULL', '0000-00-00', '', '', '', '', '', 2, 1, 'Visiting Faculty', 'Visiting Faculty'),
(105473, 'Manish Baheti', 'NULL', '0000-00-00', '', '', '', '', '', 2, 1, 'Visiting Faculty', 'Visiting Faculty'),
(105475, 'Bhawna Nigam', 'NULL', '0000-00-00', '', '', '', '', '', 2, 1, 'Visiting Faculty', 'Visiting Faculty'),
(105517, 'Mrs. Monalisa Khatre', '', '0000-00-00', '', '', '', '', '', 2, 1, '', ''),
(105518, 'Ms. Srishti Choudhary', '', '2014-11-01', '', '', '', '', '', 2, 1, '', ''),
(105519, 'Mr. Ravi Bunkar', '', '0000-00-00', '', '', '', '', '', 2, 1, '', ''),
(105520, 'Mr. Chetan Raikwar', '', '0000-00-00', '', '', '', '', '', 2, 1, '', ''),
(105521, 'Mr. Kapil Kushwah', '', '0000-00-00', '', '', '', '', '', 2, 1, 'Visiting Faculty', 'Visiting Faculty'),
(105522, 'Mr. Geetesh Kwatra', '', '0000-00-00', '', '', '', '', '', 2, 1, '', ''),
(105523, 'Mr. Sanjay Jain', '', '0000-00-00', '', '', '', '', '', 2, 1, '', ''),
(105524, 'Ms. Swarna Choudhary', '', '0000-00-00', '', '', '', '', '', 2, 1, '', ''),
(105525, 'Ms. Neha Chouhan', '', '0000-00-00', '', '', '', '', '', 2, 1, '', ''),
(105526, 'Mrs. Varshali Jaiswal', '', '0000-00-00', '', '', '', '', '', 2, 1, '', ''),
(105527, 'Ms. Sonali Mandlik', '', '0000-00-00', '', '', '', '', '', 2, 1, '', ''),
(105528, 'Lalit Verma', '', '0000-00-00', '', '', '', '', '', 2, 1, '', ''),
(105529, 'Dr. Rajesh K. Sharma', '', '0000-00-00', '', '', '', '', '', 2, 1, '', ''),
(105530, 'Ms. Poorva Sharma', '', '0000-00-00', '', '', '', '', '', 2, 1, '', ''),
(105531, 'Mr. Kuber Dutt Gautam', '', '0000-00-00', '', '', '', '', '', 2, 1, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `feedback_form_feedback_student_info`
--

CREATE TABLE IF NOT EXISTS `feedback_form_feedback_student_info` (
  `fs_id` int(11) NOT NULL AUTO_INCREMENT,
  `batch_id` varchar(20) NOT NULL,
  `course` varchar(10) NOT NULL,
  `semester` int(11) NOT NULL,
  `section` varchar(1) NOT NULL,
  `feedback_session` int(11) NOT NULL,
  PRIMARY KEY (`fs_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `feedback_form_feedback_student_info`
--

INSERT INTO `feedback_form_feedback_student_info` (`fs_id`, `batch_id`, `course`, `semester`, `section`, `feedback_session`) VALUES
(5, 'IC', 'MCA', 7, 'B', 2014),
(6, 'IC', 'MCA', 8, 'A', 2014),
(7, 'IC-2K-10', 'IC', 5, 'A', 2014),
(8, 'IC-2K-10', 'IC', 1, ' ', 2014),
(9, 'IC-2K-10', 'IC', 4, ' ', 2014),
(10, 'IC-2K-10', 'IC', 5, '', 2),
(11, 'IC-2K-10', 'IC', 6, '', 2014),
(12, 'IC-2K-10', 'IC', 3, 'A', 2014);

-- --------------------------------------------------------

--
-- Table structure for table `feedback_form_infrastructure_support_info`
--

CREATE TABLE IF NOT EXISTS `feedback_form_infrastructure_support_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `books_availability` int(11) NOT NULL,
  `basic_requirements` int(11) NOT NULL,
  `technological_support` int(11) NOT NULL,
  `study_material` int(11) NOT NULL,
  `resourse_availability` int(11) NOT NULL,
  `cleaniliness_of_class` int(11) NOT NULL,
  `fs_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `feedback_form_infrastructure_support_info_38d333c1` (`fs_id_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `feedback_form_infrastructure_support_info`
--

INSERT INTO `feedback_form_infrastructure_support_info` (`id`, `books_availability`, `basic_requirements`, `technological_support`, `study_material`, `resourse_availability`, `cleaniliness_of_class`, `fs_id_id`) VALUES
(1, 1, 1, 1, 1, 1, 1, 12);

-- --------------------------------------------------------

--
-- Table structure for table `feedback_form_section_info`
--

CREATE TABLE IF NOT EXISTS `feedback_form_section_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `section` varchar(5) NOT NULL,
  `batch_id_id` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `feedback_form_section_info_8b7986dc` (`batch_id_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `feedback_form_section_info`
--

INSERT INTO `feedback_form_section_info` (`id`, `section`, `batch_id_id`) VALUES
(1, 'A', 'IC-2K-9'),
(2, 'B', 'IC-2K-9'),
(3, 'A', 'IC-2K-11'),
(4, 'B', 'IC-2K-11'),
(5, 'A', 'IC-2K-12'),
(6, 'B', 'IC-2K-12'),
(7, 'A', 'IC-2K-13'),
(8, 'B', 'IC-2K-13'),
(9, 'A', 'IC-2K-14'),
(10, 'B', 'IC-2K-14');

-- --------------------------------------------------------

--
-- Table structure for table `feedback_form_subject`
--

CREATE TABLE IF NOT EXISTS `feedback_form_subject` (
  `subject_id` varchar(20) NOT NULL,
  `name_of_subject` varchar(50) NOT NULL,
  `semester` int(11) NOT NULL,
  `credits` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `is_viva_or_lab` int(11) NOT NULL,
  `course_id_id` varchar(2) NOT NULL,
  PRIMARY KEY (`subject_id`),
  KEY `feedback_form_subject_4c30cc1b` (`course_id_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback_form_subject`
--

INSERT INTO `feedback_form_subject` (`subject_id`, `name_of_subject`, `semester`, `credits`, `status`, `is_viva_or_lab`, `course_id_id`) VALUES
('IC-101A', 'Mathematics-I', 1, 0, 0, 0, 'IC'),
('IC-103A', 'Physics-I', 1, 0, 0, 0, 'IC'),
('IC-104B', 'Fundamental of Programming using C', 1, 0, 1, 0, 'IC'),
('IC-105A', 'Computer Fundamentals', 1, 0, 0, 0, 'IC'),
('IC-106C', 'English & Communicative Skills', 1, 0, 0, 0, 'IC'),
('IC-107D', 'C-Programming Lab', 1, 0, 0, 1, 'IC'),
('IC-108', 'Comprehensive Viva', 1, 0, 0, 1, 'IC'),
('IC-1104', 'Comprehensive Viva', 11, 0, 0, 1, 'IC'),
('IC-1105', 'VLSI  Design', 11, 0, 0, 0, 'IC'),
('IC-1107A', 'Research in Computing', 11, 0, 0, 0, 'IC'),
('IC-1108', 'Mobile & Wireless Computing', 11, 0, 0, 0, 'IC'),
('IC-1109A', 'Data Mining & warehousing', 11, 0, 0, 0, 'IC'),
('IC-110A', 'PC Software', 1, 0, 0, 0, 'IC'),
('IC-301', 'Mathematics-III', 3, 0, 0, 0, 'IC'),
('IC-302', 'Chemistry & Environmental Science', 3, 0, 0, 0, 'IC'),
('IC-304A', 'Digital Electronics', 3, 0, 0, 0, 'IC'),
('IC-305', 'Data Structure & Algorithms', 3, 0, 0, 0, 'IC'),
('IC-306', 'Digital Computer Organization', 3, 0, 0, 0, 'IC'),
('IC-307', 'DS & Algorithm Lab3', 3, 0, 0, 1, 'IC'),
('IC-309', 'Comprehensive Viva', 3, 0, 0, 1, 'IC'),
('IC-310C', 'Digital Elex Lab', 3, 0, 0, 1, 'IC'),
('IC-501A', 'Accounting & Financial Management - II', 5, 0, 0, 0, 'IC'),
('IC-502A', 'Microprocessor & Assembly Language', 5, 0, 0, 0, 'IC'),
('IC-503', 'Computer Graphics', 5, 0, 0, 0, 'IC'),
('IC-504A', 'System Programming', 5, 0, 0, 0, 'IC'),
('IC-507D', 'Computer Lab', 5, 0, 0, 1, 'IC'),
('IC-508B', 'Elex Lab', 5, 0, 0, 1, 'IC'),
('IC-509', 'Comprehensive Viva', 5, 0, 0, 1, 'IC'),
('IC-512A', 'Numerical Analysis & Design', 5, 0, 0, 0, 'IC'),
('IC-701', 'Computer Architecture', 7, 0, 0, 0, 'IC'),
('IC-702', 'Linear Systems', 7, 0, 0, 0, 'IC'),
('IC-703', 'Discrete Structure', 7, 0, 0, 0, 'IC'),
('IC-705A', 'Operating System', 7, 0, 0, 0, 'IC'),
('IC-707', 'Comprehensive Viva', 7, 0, 0, 1, 'IC'),
('IC-708', 'Bio-Informatics', 7, 0, 0, 0, 'IC'),
('IC-901', 'Theory of Computation', 9, 0, 0, 0, 'IC'),
('IC-905A', 'Object Oriented Analysis & Design', 9, 0, 0, 0, 'IC'),
('IC-906', 'Comprehensive Viva', 9, 0, 0, 1, 'IC'),
('IC-907A-B1', 'Project', 9, 0, 0, 1, 'IC'),
('IC-907A-B2', 'Project', 9, 0, 0, 1, 'IC'),
('IC-910', 'Managerial Economics', 9, 0, 0, 0, 'IC'),
('IC-911', 'Software Testing & Quality Assurance', 9, 0, 0, 0, 'IC'),
('IT-101', 'Mathematics-1', 1, 5, 0, 0, 'IT'),
('IT-102', 'Statistical Methods-1', 1, 5, 0, 0, 'IT'),
('IT-103', 'Physics', 1, 5, 0, 0, 'IT'),
('IT-104', 'C-Programming', 1, 5, 0, 0, 'IT'),
('IT-105', 'PC-Software', 1, 5, 0, 0, 'IT'),
('IT-106', 'Communicative English', 1, 5, 0, 0, 'IT'),
('IT-107', 'C- Programming Lab', 1, 5, 0, 1, 'IT'),
('IT-108', 'Comprehensive Viva', 1, 5, 0, 1, 'IT'),
('IT-109', 'PC s/w Lab', 1, 5, 0, 1, 'IT'),
('IT-301', 'Linear Algebra', 3, 0, 0, 0, 'IT'),
('IT-302', 'Internet Tools', 3, 0, 0, 0, 'IT'),
('IT-303', 'Digital Electronics', 3, 0, 0, 0, 'IT'),
('IT-304', 'Data Structures with C++''', 3, 0, 0, 0, 'IT'),
('IT-305', 'Engineering Drawing', 3, 0, 0, 0, 'IT'),
('IT-306', 'Comp Lab', 3, 0, 0, 1, 'IT'),
('IT-307', 'Elex Lab', 3, 0, 0, 1, 'IT'),
('IT-308', 'Comprehensive Viva', 3, 0, 0, 1, 'IT'),
('IT-501A', 'Accounting & Financial Management - II', 5, 0, 0, 0, 'IT'),
('IT-503A', 'Computer Graphics & Multimedia', 5, 0, 0, 0, 'IT'),
('IT-504', 'System Programming', 5, 0, 0, 0, 'IT'),
('IT-506', 'Numerical Analysis & Design', 5, 0, 0, 0, 'IT'),
('IT-508C', 'Computer Lab', 5, 0, 0, 1, 'IT'),
('IT-508D', 'Elex Lab', 5, 0, 0, 1, 'IT'),
('IT-509', 'Comprehensive Viva', 5, 0, 0, 1, 'IT'),
('IT-510', 'Microprocessor and Assembly language', 5, 0, 0, 0, 'IT'),
('IT-701', 'Computer Architecture', 7, 0, 0, 0, 'IT'),
('IT-702', 'Linear System', 7, 0, 0, 0, 'IT'),
('IT-703', 'Discrete Structures', 7, 0, 0, 0, 'IT'),
('IT-705A', 'Operating System', 7, 0, 0, 0, 'IT'),
('IT-708', 'Bio Informatics', 7, 0, 0, 0, 'IT'),
('IT-901A', 'Principles of Optimization', 9, 0, 0, 0, 'IT'),
('IT-902A', 'Component Technology', 9, 0, 0, 0, 'IT'),
('IT-906', 'Comprehensive Viva', 9, 0, 0, 1, 'IT'),
('IT-907', 'Artificial Intelligence', 9, 0, 0, 0, 'IT'),
('IT-908A', 'Object Oriented Analysis & Design', 9, 0, 0, 0, 'IT'),
('IT-911', 'Project', 9, 0, 0, 1, 'IT');

-- --------------------------------------------------------

--
-- Table structure for table `feedback_form_time_table`
--

CREATE TABLE IF NOT EXISTS `feedback_form_time_table` (
  `s_no` int(11) NOT NULL AUTO_INCREMENT,
  `year` int(11) NOT NULL,
  `section` varchar(2) NOT NULL,
  `day` varchar(20) NOT NULL,
  `time_from` time NOT NULL,
  `time_to` time NOT NULL,
  `room_number` varchar(10) NOT NULL,
  `batch_id_id` varchar(20) NOT NULL,
  `course_id_id` varchar(2) NOT NULL,
  `faculty_id_id` int(11) NOT NULL,
  `subject_id_id` varchar(20) NOT NULL,
  PRIMARY KEY (`s_no`),
  KEY `feedback_form_time_table_8b7986dc` (`batch_id_id`),
  KEY `feedback_form_time_table_4c30cc1b` (`course_id_id`),
  KEY `feedback_form_time_table_d3f9e98e` (`faculty_id_id`),
  KEY `feedback_form_time_table_4a83a6b6` (`subject_id_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=100 ;

--
-- Dumping data for table `feedback_form_time_table`
--

INSERT INTO `feedback_form_time_table` (`s_no`, `year`, `section`, `day`, `time_from`, `time_to`, `room_number`, `batch_id_id`, `course_id_id`, `faculty_id_id`, `subject_id_id`) VALUES
(1, 2014, 'A', '', '00:00:00', '00:00:00', '207', 'IC-2K-14', 'IC', 105358, 'IC-104B'),
(2, 2014, 'B', '', '00:00:00', '00:00:00', '208', 'IC-2K-14', 'IC', 105518, 'IC-104B'),
(3, 2014, 'A', '', '00:00:00', '00:00:00', '207', 'IC-2K-14', 'IC', 105377, 'IC-105A'),
(4, 2014, 'B', '', '00:00:00', '00:00:00', '208', 'IC-2K-14', 'IC', 105393, 'IC-105A'),
(5, 2014, 'A', '', '00:00:00', '00:00:00', '207', 'IC-2K-14', 'IC', 105517, 'IC-106C'),
(6, 2014, 'B', '', '00:00:00', '00:00:00', '208', 'IC-2K-14', 'IC', 105517, 'IC-106C'),
(7, 2014, 'B', '', '00:00:00', '00:00:00', '208', 'IC-2K-14', 'IC', 105518, 'IC-107D'),
(8, 2014, 'A', '', '00:00:00', '00:00:00', '207', 'IC-2K-14', 'IC', 105391, 'IC-110A'),
(9, 2014, 'B', '', '00:00:00', '00:00:00', '208', 'IC-2K-14', 'IC', 105519, 'IC-110A'),
(10, 2014, 'A', '', '00:00:00', '00:00:00', '209', 'IC-2K-13', 'IC', 105377, 'IC-304A'),
(11, 2014, 'B', '', '00:00:00', '00:00:00', '211', 'IC-2K-13', 'IC', 105377, 'IC-304A'),
(12, 2014, 'A', '', '00:00:00', '00:00:00', '209', 'IC-2K-13', 'IC', 105357, 'IC-305'),
(13, 2014, 'B', '', '00:00:00', '00:00:00', '211', 'IC-2K-13', 'IC', 105392, 'IC-305'),
(14, 2014, 'B', '', '00:00:00', '00:00:00', '211', 'IC-2K-13', 'IC', 105389, 'IC-306'),
(15, 2014, 'A', '', '00:00:00', '00:00:00', '209', 'IC-2K-13', 'IC', 105379, 'IC-307'),
(16, 2014, 'B', '', '00:00:00', '00:00:00', '211', 'IC-2K-13', 'IC', 105392, 'IC-307'),
(17, 2014, 'A', '', '00:00:00', '00:00:00', '209', 'IC-2K-13', 'IC', 105387, 'IC-310C'),
(18, 2014, 'B', '', '00:00:00', '00:00:00', '211', 'IC-2K-13', 'IC', 105377, 'IC-310C'),
(23, 2014, 'A', '', '00:00:00', '00:00:00', '207', 'IC-2K-12', 'IC', 105520, 'IC-501A'),
(25, 2014, 'B', '', '00:00:00', '00:00:00', '', 'IC-2K-12', 'IC', 105520, 'IC-501A'),
(26, 2014, 'A', '', '00:00:00', '00:00:00', '207', 'IC-2K-12', 'IC', 105385, 'IC-502A'),
(27, 2014, 'B', '', '00:00:00', '00:00:00', '208', 'IC-2K-12', 'IC', 105385, 'IC-502A'),
(28, 2014, 'A', '', '00:00:00', '00:00:00', '207', 'IC-2K-12', 'IC', 105396, 'IC-503'),
(29, 2014, 'B', '', '00:00:00', '00:00:00', '208', 'IC-2K-12', 'IC', 105396, 'IC-503'),
(30, 2014, 'A', '', '00:00:00', '00:00:00', '207', 'IC-2K-12', 'IC', 105392, 'IC-504A'),
(31, 2014, 'B', '', '00:00:00', '00:00:00', '208', 'IC-2K-12', 'IC', 105392, 'IC-504A'),
(32, 2014, 'A', '', '00:00:00', '00:00:00', '207', 'IC-2K-12', 'IC', 105389, 'IC-512A'),
(33, 2014, 'B', '', '00:00:00', '00:00:00', '208', 'IC-2K-12', 'IC', 105389, 'IC-512A'),
(34, 2014, 'A', '', '00:00:00', '00:00:00', '207', 'IC-2K-12', 'IC', 105396, 'IC-507D'),
(35, 2014, 'B', '', '00:00:00', '00:00:00', '208', 'IC-2K-12', 'IC', 105380, 'IC-507D'),
(36, 2014, 'A', '', '00:00:00', '00:00:00', '207', 'IC-2K-12', 'IC', 105385, 'IC-508B'),
(37, 2014, 'B', '', '00:00:00', '00:00:00', '208', 'IC-2K-12', 'IC', 105518, 'IC-508B'),
(38, 2014, 'A', '', '00:00:00', '00:00:00', '209', 'IC-2K-11', 'IC', 105379, 'IC-701'),
(39, 2014, 'B', '', '00:00:00', '00:00:00', '211', 'IC-2K-11', 'IC', 105379, 'IC-701'),
(40, 2014, 'A', '', '00:00:00', '00:00:00', '209', 'IC-2K-11', 'IC', 105521, 'IC-702'),
(41, 2014, 'B', '', '00:00:00', '00:00:00', '211', 'IC-2K-11', 'IC', 105521, 'IC-702'),
(42, 2014, 'A', '', '00:00:00', '00:00:00', '209', 'IC-2K-11', 'IC', 105373, 'IC-703'),
(43, 2014, 'B', '', '00:00:00', '00:00:00', '211', 'IC-2K-11', 'IC', 105386, 'IC-703'),
(44, 2014, 'A', '', '00:00:00', '00:00:00', '209', 'IC-2K-11', 'IC', 105391, 'IC-708'),
(45, 2014, 'B', '', '00:00:00', '00:00:00', '211', 'IC-2K-11', 'IC', 105391, 'IC-708'),
(46, 2014, 'A', '', '00:00:00', '00:00:00', '209', 'IC-2K-11', 'IC', 105387, 'IT-705A'),
(47, 2014, 'B', '', '00:00:00', '00:00:00', '211', 'IC-2K-11', 'IC', 105387, 'IC-705A'),
(48, 2014, '', '', '00:00:00', '00:00:00', 'LT-2', 'IC-2K-10', 'IC', 105373, 'IC-901'),
(49, 2014, '', '', '00:00:00', '00:00:00', 'LT-2', 'IC-2K-10', 'IC', 105357, 'IC-905A'),
(50, 2014, '', '', '00:00:00', '00:00:00', 'LT-2', 'IC-2K-10', 'IC', 105386, 'IC-911'),
(51, 2014, '', '', '00:00:00', '00:00:00', 'LT-2', 'IC-2K-10', 'IC', 105517, 'IC-910'),
(52, 2014, '', '', '00:00:00', '00:00:00', 'LT-2', 'IC-2K-10', 'IC', 105360, 'IC-907A-B1'),
(53, 2014, '', '', '00:00:00', '00:00:00', 'LT-2', 'IC-2K-10', 'IC', 105373, 'IC-907A-B2'),
(54, 2014, 'A', '', '00:00:00', '00:00:00', '101', 'IC-2K-9', 'IC', 105360, 'IC-1109A'),
(55, 2014, 'A', '', '00:00:00', '00:00:00', '101', 'IC-2K-9', 'IC', 105359, 'IC-1108'),
(56, 2014, 'A', '', '00:00:00', '00:00:00', '101', 'IC-2K-9', 'IC', 105522, 'IC-1105'),
(57, 2014, 'A', '', '00:00:00', '00:00:00', '101', 'IC-2K-9', 'IC', 105353, 'IC-1107A'),
(58, 2014, '', '', '00:00:00', '00:00:00', '205', 'IT-2K-14', 'IT', 105523, 'IT-101'),
(59, 2014, '', '', '00:00:00', '00:00:00', '205', 'IT-2K-14', 'IT', 105530, 'IT-103'),
(62, 2014, '', '', '00:00:00', '00:00:00', '205', 'IT-2K-14', 'IT', 105380, 'IT-104'),
(63, 2014, '', '', '00:00:00', '00:00:00', '205', 'IT-2K-14', 'IT', 105393, 'IT-105'),
(64, 2014, '', '', '00:00:00', '00:00:00', '205', 'IT-2K-14', 'IT', 105525, 'IT-106'),
(65, 2014, '', '', '00:00:00', '00:00:00', '205', 'IT-2K-14', 'IT', 105380, 'IT-107'),
(66, 2014, '', '', '00:00:00', '00:00:00', '205', 'IT-2K-14', 'IT', 105393, 'IT-109'),
(67, 2014, '', '', '00:00:00', '00:00:00', '204', 'IT-2K-13', 'IT', 105523, 'IT-301'),
(68, 2014, '', '', '00:00:00', '00:00:00', '204', 'IT-2K-13', 'IT', 105396, 'IT-302'),
(69, 2014, '', '', '00:00:00', '00:00:00', '204', 'IT-2K-13', 'IT', 105379, 'IT-303'),
(70, 2014, '', '', '00:00:00', '00:00:00', '204', 'IT-2K-13', 'IT', 105359, 'IT-304'),
(71, 2014, '', '', '00:00:00', '00:00:00', '204', 'IT-2K-13', 'IT', 105528, 'IT-305'),
(72, 2014, '', '', '00:00:00', '00:00:00', '204', 'IT-2K-13', 'IT', 105518, 'IT-306'),
(73, 2014, '', '', '00:00:00', '00:00:00', '204', 'IT-2K-13', 'IT', 105389, 'IT-307'),
(74, 2014, '', '', '00:00:00', '00:00:00', '201', 'IT-2K-12', 'IT', 105520, 'IT-501A'),
(75, 2014, '', '', '00:00:00', '00:00:00', '201', 'IT-2K-12', 'IT', 105526, 'IT-503A'),
(78, 2014, '', '', '00:00:00', '00:00:00', '201', 'IT-2K-12', 'IT', 105353, 'IT-504'),
(79, 2014, '', '', '00:00:00', '00:00:00', '201', 'IT-2K-12', 'IT', 105360, 'IT-506'),
(80, 2014, '', '', '00:00:00', '00:00:00', '201', 'IT-2K-12', 'IT', 105386, 'IT-510'),
(81, 2014, '', '', '00:00:00', '00:00:00', '201', 'IT-2K-12', 'IT', 105380, 'IT-508C'),
(82, 2014, '', '', '00:00:00', '00:00:00', '201', 'IT-2K-12', 'IT', 105386, 'IT-508D'),
(83, 2014, '', '', '00:00:00', '00:00:00', '204', 'IT-2K-11', 'IT', 105391, 'IT-701'),
(84, 2014, '', '', '00:00:00', '00:00:00', '204', 'IT-2K-11', 'IT', 105387, 'IT-703'),
(85, 2014, '', '', '00:00:00', '00:00:00', '204', 'IT-2K-11', 'IT', 105353, 'IT-705A'),
(86, 2014, '', '', '00:00:00', '00:00:00', '204', 'IT-2K-11', 'IT', 105393, 'IT-708'),
(87, 2014, '', '', '00:00:00', '00:00:00', '201', 'IT-2K-10', 'IT', 105360, 'IT-901A'),
(88, 2014, '', '', '00:00:00', '00:00:00', '201', 'IT-2K-10', 'IT', 105357, 'IT-902A'),
(89, 2014, '', '', '00:00:00', '00:00:00', '201', 'IT-2K-10', 'IT', 105358, 'IT-907'),
(90, 2014, '', '', '00:00:00', '00:00:00', '201', 'IT-2K-10', 'IT', 105385, 'IT-908A'),
(91, 2014, '', '', '00:00:00', '00:00:00', '201', 'IT-2K-10', 'IT', 105359, 'IT-911'),
(93, 2014, '', '', '00:00:00', '00:00:00', '205', 'IT-2K-14', 'IT', 105529, 'IT-102'),
(96, 2014, 'B', '', '00:00:00', '00:00:00', '108', 'IC-2K-9', 'IC', 105373, 'IC-1109A'),
(97, 2014, 'B', '', '00:00:00', '00:00:00', '108', 'IC-2K-9', 'IC', 105531, 'IC-1108'),
(98, 2014, 'B', '', '00:00:00', '00:00:00', '108', 'IC-2K-9', 'IC', 105522, 'IC-1105'),
(99, 2014, 'B', '', '00:00:00', '00:00:00', '108', 'IC-2K-9', 'IC', 105358, 'IC-1107A');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permission_group_id_689710a9a73b7457_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group__permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth__content_type_id_508cf46651277a81_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permissi_user_id_7f0938558328534a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `auth_user_u_permission_id_384b62483d7071f0_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `djang_content_type_id_697914295151027a_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `feedback_form_batch`
--
ALTER TABLE `feedback_form_batch`
  ADD CONSTRAINT `course_id_id_7f9a6ceb8d4c1366_fk_feedback_form_course_course_id` FOREIGN KEY (`course_id_id`) REFERENCES `feedback_form_course` (`course_id`);

--
-- Constraints for table `feedback_form_infrastructure_support_info`
--
ALTER TABLE `feedback_form_infrastructure_support_info`
  ADD CONSTRAINT `f25bd59d447a3f9cf37b99583f8afee8` FOREIGN KEY (`fs_id_id`) REFERENCES `feedback_form_feedback_student_info` (`fs_id`);

--
-- Constraints for table `feedback_form_section_info`
--
ALTER TABLE `feedback_form_section_info`
  ADD CONSTRAINT `fee_batch_id_id_574b85818287dce9_fk_feedback_form_batch_batch_id` FOREIGN KEY (`batch_id_id`) REFERENCES `feedback_form_batch` (`batch_id`);

--
-- Constraints for table `feedback_form_subject`
--
ALTER TABLE `feedback_form_subject`
  ADD CONSTRAINT `course_id_id_64a59dd5d62c36dc_fk_feedback_form_course_course_id` FOREIGN KEY (`course_id_id`) REFERENCES `feedback_form_course` (`course_id`);

--
-- Constraints for table `feedback_form_time_table`
--
ALTER TABLE `feedback_form_time_table`
  ADD CONSTRAINT `bad01bc95c24611f1128196a2c91ffda` FOREIGN KEY (`subject_id_id`) REFERENCES `feedback_form_subject` (`subject_id`),
  ADD CONSTRAINT `course_id_id_2b1897130544203f_fk_feedback_form_course_course_id` FOREIGN KEY (`course_id_id`) REFERENCES `feedback_form_course` (`course_id`),
  ADD CONSTRAINT `f7a45714226cae3171018a025c05a912` FOREIGN KEY (`faculty_id_id`) REFERENCES `feedback_form_faculty_table` (`user_id`),
  ADD CONSTRAINT `feed_batch_id_id_9b68fee8aaab5db_fk_feedback_form_batch_batch_id` FOREIGN KEY (`batch_id_id`) REFERENCES `feedback_form_batch` (`batch_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
