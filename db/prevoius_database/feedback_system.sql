-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 15, 2015 at 08:32 PM
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
(2, 'pbkdf2_sha256$12000$ZuND5p24rFr4$6/O8lvfL55/t2ep66TEL2mQOCR99avd7sY2Mz2SAfN0=', '2015-01-08 06:39:19', 1, 'swati', '', '', 'mahajanswati108@gmail.com', 1, 1, '2015-01-08 06:39:19');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

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
(43, '2015-01-14 15:16:02', '1', '1', 1, '', 15, 1);

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
('73s8u0fcasys4ibmh6yfa00tfxcozoff', 'NzdjNTZlOTcxNjk1YmFjNTFhZGQwZjM0NTkyMWY1ZGYwYTdkODA3Yjp7Il9hdXRoX3VzZXJfaGFzaCI6IjNiYjVlN2YxNzZlOTBmZjg5ZWU4YjRlOGRjZTg5YjM0MDFjM2E4YmMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2015-01-28 11:51:44'),
('7g28buevcks7o2wyw2ty71h2ikecrx7g', 'NTEyNTc5YmQ0YTc5YTVmODM5MWE2MzU2OTdkMWFhNzRhZGZiYmZkNTp7fQ==', '2015-01-22 06:58:47'),
('9iysjnnyiweu2r4cjaebd0t122bv9p2n', 'NTEyNTc5YmQ0YTc5YTVmODM5MWE2MzU2OTdkMWFhNzRhZGZiYmZkNTp7fQ==', '2015-01-22 06:58:46'),
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `feedback_form_faculty_table`
--

INSERT INTO `feedback_form_faculty_table` (`user_id`, `name`, `qualification`, `date_of_birth`, `email`, `discipline`, `gender`, `area_of_interest`, `contact_number`, `type`, `status`, `designation`, `responsibility`) VALUES
(1, 'Mrs Shraddha Soni', 'MCA', '2015-01-14', 'ddd@gmail.com', 'cs', 'female', 'cs', '4566555', 1, 1, 'reader', 'mentor'),
(2, 'Mr. Rahul Shanghai', '', '2015-01-14', '', '', 'M', '', '', 2, 1, '', '');

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
('IC-801', 'Algorithem Analysis And Design', 8, 5, 0, 0, 'IC');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `feedback_form_time_table`
--

INSERT INTO `feedback_form_time_table` (`s_no`, `year`, `section`, `day`, `time_from`, `time_to`, `room_number`, `batch_id_id`, `course_id_id`, `faculty_id_id`, `subject_id_id`) VALUES
(1, 2014, '', '', '15:15:49', '15:15:50', '201', 'IC-2K-11', 'IC', 2, 'IC-801');

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
