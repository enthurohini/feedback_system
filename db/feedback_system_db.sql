-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 12, 2015 at 02:11 PM
-- Server version: 5.5.40-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `feedback_system_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_assessment_info`
--

CREATE TABLE IF NOT EXISTS `academic_assessment_info` (
  `s_no` int(11) NOT NULL AUTO_INCREMENT,
  `fs_id` varchar(20) NOT NULL COMMENT 'fs_id from feedback_student_info ',
  `subject_id` varchar(20) NOT NULL,
  `faculty_id` varchar(20) NOT NULL,
  `conceptual_clarity` int(5) NOT NULL COMMENT 'specifies teacher''s ability to bring conceptual clearity',
  `subject_knowledge` int(5) NOT NULL COMMENT 'specifies teacher''s subject knowledge',
  `practical_example` int(5) NOT NULL COMMENT 'specifies teacher''s compliments theory with practical example',
  `handling_capability` int(5) NOT NULL COMMENT 'specifies teacher''s capability of handling cases/ assignment/ exercises/ activities',
  `motivation` int(5) NOT NULL COMMENT 'specifies motivation provided by teacher',
  `control_ability` int(5) NOT NULL COMMENT 'teacher''s ability to control the teacher',
  `course_completion` int(5) NOT NULL COMMENT 'specifies completion & coverage of course',
  `communication_skill` int(5) NOT NULL COMMENT 'specifies teacher''s communication skill',
  `regularity_punctuality` int(5) NOT NULL COMMENT 'specifies teacher''s regularity & punctuality',
  `outside_guidance` int(5) NOT NULL COMMENT 'specifies teacher''s guidance & interaction outside the classroom',
  `syllabus_industry_relvance` int(5) NOT NULL COMMENT 'specifies relevance of syllabus as per industry requirement',
  `sufficiency_of_course` int(5) NOT NULL COMMENT 'specifies sufficiency of course content',
  `suggestion_for_subject` longtext COMMENT 'It holds the suggestion regarding subject',
  `suggestion_for_course` longtext COMMENT 'It holds the suggestion regarding course',
  PRIMARY KEY (`s_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='This table holde data entered by students' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `batch`
--

CREATE TABLE IF NOT EXISTS `batch` (
  `batch_id` varchar(20) NOT NULL,
  `course_id` varchar(20) NOT NULL,
  `session` int(10) NOT NULL COMMENT 'year of the batch',
  `section` varchar(5) NOT NULL DEFAULT '',
  PRIMARY KEY (`batch_id`,`section`),
  KEY `course_id` (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='this table contains information about the batches.';

--
-- Dumping data for table `batch`
--

INSERT INTO `batch` (`batch_id`, `course_id`, `session`, `section`) VALUES
('IC-2K-10', 'IC', 2010, ''),
('IC-2K-11', 'IC', 2011, 'A'),
('IC-2K-11', 'IC', 2011, 'B'),
('IC-2K-12', 'IC', 2012, 'A'),
('IC-2K-12', 'IC', 2012, 'B'),
('IC-2K-13', 'IC', 2013, 'A'),
('IC-2K-13', 'IC', 2013, 'B'),
('IC-2K-14', 'IC', 2014, 'A'),
('IC-2K-14', 'IC', 2014, 'B'),
('IC-2K-9', 'IC', 2009, 'A'),
('IC-2K-9', 'IC', 2009, 'B'),
('IT-2K-10', 'IT', 2010, ''),
('IT-2K-11', 'IT', 2011, ''),
('IT-2K-12', 'IT', 2012, ''),
('IT-2K-13', 'IT', 2013, ''),
('IT-2K-14', 'IT', 2014, '');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE IF NOT EXISTS `course` (
  `course_id` varchar(20) NOT NULL COMMENT 'the unique course id',
  `course_name` varchar(20) NOT NULL COMMENT 'the course name (MCA, MTECH, MBA(MS, FT, APR, TA), B.com )',
  `stream` varchar(15) NOT NULL COMMENT 'the stream (CS or MGM)',
  `number_of_sem` int(15) NOT NULL COMMENT 'the total number of semester',
  PRIMARY KEY (`course_id`),
  KEY `course_id` (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='this table contains information about the courses available in iips';

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`, `stream`, `number_of_sem`) VALUES
('IC', 'MCA', 'CS', 12),
('IT', 'MTECH', 'CS', 11);

-- --------------------------------------------------------

--
-- Table structure for table `faculty_table`
--

CREATE TABLE IF NOT EXISTS `faculty_table` (
  `User_Id` bigint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `Qualification` tinytext COMMENT 'qualification of faculty',
  `DOB` date NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Discipline` varchar(20) NOT NULL,
  `Responsibility` varchar(30) NOT NULL,
  `Designation` varchar(20) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Area_of_interest` varchar(50) NOT NULL,
  `Contact_Number` varchar(14) NOT NULL,
  `Type` int(1) NOT NULL DEFAULT '2',
  `Status` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`User_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=105532 ;

--
-- Dumping data for table `faculty_table`
--

INSERT INTO `faculty_table` (`User_Id`, `name`, `Qualification`, `DOB`, `Email`, `Discipline`, `Responsibility`, `Designation`, `Gender`, `Area_of_interest`, `Contact_Number`, `Type`, `Status`) VALUES
(105349, 'Dr. Anand K. Sapre', 'BE,MBA,Ph.D', '0000-00-00', 'aksapre@gmail.com', 'Management', 'Director', 'Professor', 'M', '', '', 2, 1),
(105350, 'Dr.R.K. Vyas', 'B.E, MBA,Ph.D,CAIIB', '1951-07-13', 'ramkrishnavyas@gmail.com', 'Management', 'Dean Faculty of Management', 'Professor', 'M', ' Finance & Banking', '', 2, 1),
(105351, 'Dr.B.K.Tripathi', 'M.Sc, PhD, MBA, Ph.D', '1965-02-10', 'tripathibrajesh@yahoo.com', 'Management', ' In-charge, Management Program', 'Professor', 'M', 'Chemistry,Human Resource Management', '', 2, 1),
(105352, 'Dr.Yamini Karmarkar', 'B.Sc, MMS, Ph.D, FDP(IIMA), CPET(ISB)', '1971-10-24', 'ykarmarkar@gmail.com', 'Management', ' Program In-Charge, MBA (MS) 2', 'Reader', 'F', 'Finance,Strategy Management', '9826022674', 2, 1),
(105353, 'Dr.Kirti Mathur', 'ME(CSE)', '1968-01-03', 'kirti1369@gmail.com', 'Computer', ' In-charge, Computer Programs', 'Reader', 'F', 'Software Engg.', '', 2, 1),
(105354, 'Dr.Geeta Sharma', 'MBA, Ph.D', '1962-12-09', 'geetasharmaiips@gmail.com', 'Management', 'Program In-Charge, MBA (MS) 5 ', 'Reader', 'F', 'Banking', '', 2, 1),
(105355, 'Dr.Geeta Nema', 'B.Sc, M.Sc, MBA, Ph.D', '1971-03-19', ' geetanema@rediffmail.com', 'Management', ' Program In-Charge, MBA (MS) 5', 'Reader', 'F', 'Marketing', '', 2, 1),
(105356, 'Dr.Jyoti Sharma', 'M.A(Psy), PGDCABM,Ph.D', '1971-04-04', 'jyotisharmaindore@gmail.com', 'Management', ' Program In-Charge, MBA (APR) ', 'Reader', 'F', 'OB,HRM', '', 2, 1),
(105357, 'Mr.Ramesh Thakur', 'B.E(CS), ME, Ph.D(Pursuing)', '1974-12-20', 'r_thakur@rediffmail.com', 'Computer', ' Program In-Charge, MCA 6 Yrs.', 'Reader', 'M', 'Information Extraction,OOAD', '0', 2, 1),
(105358, 'Mr.Jugendra Dongre', 'B.Tech(CSE), M.Tech(CS)', '1976-07-13', 'jugendra_kumar@rediffmail.com', 'Computer', 'Program In-Charge, MCA 6 Yrs. ', 'Reader', 'M', 'Artificial Inteligance,Multimedia Computing,Analys', '', 2, 1),
(105359, 'Ms.Manju Suchdeo', 'M.Tech(CS), M.Sc(IT)', '1977-10-08', ' manju_suchdeo@yahoo.co.in', 'Computer', ' Program In-Charge, M.Tech. (I', 'Reader', 'F', 'OOAD', '', 2, 1),
(105360, 'Mr.Shaligram Prajapat', 'B.Sc(Electronics),M.Tech(CS), M.Sc(CS), UGC-NET(Computer Science and Applications )', '1976-06-27', 'shaligram.prajapat@gmail.com', 'Computer', 'Incharge Development Center', 'Reader', 'M', 'Algorithms', '', 2, 1),
(105361, 'Dr.Manish Sitlani', 'Ph.D, ACS, LLB(H), M.Com', '1972-08-14', ' msitlani1@yahoo.com', 'Management', ' Program In-Charge, MBA (T) 2 ', 'Reader', 'M', 'Finance & Accounting', '', 2, 1),
(105362, 'Dr.Preeti Singh', 'MBA, B.ED(DE), B.Com,Ph.D', '0000-00-00', '', 'Management', 'Co-ordinator-AntiRagging Commi', 'Reader', 'F', 'Information Systems & Management', '', 2, 1),
(105363, 'Dr.Ravindra Yadav', 'B.Sc, DEE, MBA, FDP-IIMA,Ph.D(Management)', '1970-09-01', 'yadav_ravindra@yahoo.co.in', 'Management', 'Incharge PMS', 'Senior Lecturer', 'M', 'HR/OB,Operations', '', 2, 1),
(105364, 'Dr.Anshu Bhati', NULL, '1975-10-04', ' anshubhati@rediffmail.com', 'Management', 'Batch Facilitator', 'Lecturer', 'F', 'Marketing & Public Relations', '', 2, 1),
(105365, 'Dr.Pooja Jain', 'Ph.D.,MBA(APR), B.Sc.', '1976-09-30', 'poojaiips@gmail.com', 'Management', 'Batch Facilitator', 'Lecturer', 'F', 'Marketing, Advertising, Consumer Behaviour ', '', 2, 1),
(105366, 'Dr.Suresh Patidar', 'M.Com.(Management), LL.B. (Hons.), CS(Inter),UGC-NET, Ph.D.', '1972-09-18', 'spatidar99@yahoo.co.in', 'Management', 'Program In-Charge, B.Com. (Hon', 'Reader', 'M', 'Consumer Law,Corporate Governance', '', 2, 1),
(105367, 'Dr.Sujata Parwani', 'M.Phil Eco.,Ph.D', '1972-05-12', 'sujata.saxena.iips@gmail.com', 'Management', 'Batch Facilitator', 'Lecturer', 'F', 'Economics Related Areas', '', 2, 1),
(105368, 'Mr.Gaurav Purohit', 'MTA', '0000-00-00', ' gaurav.purohit6@gmail.com', 'Management', 'Batch Facilitator', 'Lecturer', 'M', '', '', 2, 1),
(105369, 'Mr.Anil Goray', 'B.Sc, PGDBA, MBA, LLB(Hons) R Scholar', '1954-09-03', 'gorayanil@gmail.com', 'Management', 'Batch Facilitator', 'Lecturer', 'M', 'Marketing Management & Other Related Areas', '', 2, 1),
(105370, 'Ms.Muskan Karamchandani', 'B.Com, MBA', '1979-04-26', ' karamchandanimuskan@gmail.com', 'Management', 'Batch Facilitator', 'Lecturer', 'F', 'Finance & Economics Related Areas', '', 2, 1),
(105371, 'Ms.Shailvi Verma', 'M.SC(IT)', '1981-02-18', '', 'Computer', 'Batch Facilitator', 'Lecturer', 'F', 'DBMS Related Areas', '', 2, 1),
(105372, 'Mr.Surendra Malviya', 'MBA(e-commerce),PhD(pursuing)', '1978-02-05', ' surendra.malviya@gmail.com', 'Management', 'Batch Facilitator', 'Lecturer', 'M', 'e-Commerce ,e-business,Mobile commerce,Internet ma', '09827323823', 2, 1),
(105373, 'Ms.Yasmin Shaikh', 'M.Tech.(CS), M.Sc.(CS), UGC-NET (CS)', '1981-04-10', 'yasminshaikh01@yahoo.co.in', 'Computer', 'Batch Facilitator', 'Lecturer', 'F', 'Natural Language Processing', '', 2, 1),
(105374, 'Dr.Kapil Jain', 'Ph.D,M.Phil,M.Com., B.Com. With Computer Application', '1981-11-14', ' kapil_jain1411@yahoo.com', 'Management', 'Batch Facilitator', 'Lecturer', 'M', 'Finance & Accounting', '9303221760', 2, 1),
(105375, ' Manminder Singh Saluja', 'Ph.D, M.Phil, M.A.(Economics)', '1980-11-12', ' gursikh11@rediffmail.com, msi', 'Management', 'Batch Facilitator', 'Senior Lecturer', 'M', 'Economics, Econometrics, Financial Economics', '9303271590', 2, 1),
(105376, 'Dr.Nirmala Sawan', 'M.Sc(Statistics), Ph.D(Management)', '1984-09-07', ' nirmalasawan@gmail.com', 'Management', 'Batch Facilitator', 'Lecturer', 'F', 'Statistics Related Areas', '', 2, 1),
(105377, 'Mr.Rajesh Verma', 'B.Sc(Electronics), PGDCA, MCA', '1975-10-20', 'rajeesh_verma@yahoo.com', 'Computer', 'Batch Facilitator', 'Lecturer', 'M', 'DBMS & Real Time Systems', '', 2, 1),
(105378, 'Dr.Shilpa Bagdare', 'MBA(Marketing),Ph.D(Management)', '1972-12-21', ' shilpabagdare@gmail.com', 'Management', 'Batch Facilitator', 'Lecturer', 'F', 'Services Marketing,Relating Customer Experience.', '', 2, 1),
(105379, 'Mr.Vivek Shrivastava', 'B. Sc. (CS), DCA, PGDCA, APGDCA, MCA, UGC-NET Qualified, M.Tech.(Computer Science),PhD(pursuing)', '1978-03-22', ' shrivastava.vivex@gmail.com', 'Computer', 'Batch Facilitator', 'Lecturer', 'M', 'SuperComputing, Ubiquitous Computing in Distribute', '09754086330', 2, 1),
(105380, 'Mr.Arpit Nema', 'B.Sc.(Computer Maintenance), MCA ,Ph.D. Course Work, Pursing Ph.D.', '0000-00-00', 'arpit.iipsf@gmail.com', 'Computer', 'Batch Facilitator', 'Lecturer', 'M', 'ProgrammingLanguages(C,C++,JAVA),E-commerce,Softwa', '9424054283', 2, 1),
(105381, 'Ms.Vibha Gupta', 'MBA(APR),CDAC,D.O.R.,FCLI (Aligarh)', '1971-12-11', 'vibha1211@yahoo.com', 'Management', 'Batch Facilitator', 'Lecturer', 'F', 'Service Market,Multimedia Web and HCI', '', 2, 1),
(105382, 'Ms.Shikha Chaturvedi', 'MBA(TA)', '1985-06-12', 'shikha_chat@hotmail.com', 'Management', 'Batch Facilitator', 'Lecturer', 'F', '', '', 2, 1),
(105383, 'Mr.Anil S. Goray', '', '0000-00-00', 'gorayanil@gmail.com', 'Management', 'Batch Facilitator', 'Lecturer', '', '', '', 2, 1),
(105384, 'Ms.Navneet Bhatia', 'MBA', '0000-00-00', 'navneetbhatiya@gmail.com', 'Management', 'Batch Facilitator', 'Lecturer', '', '', '', 2, 1),
(105385, 'Ms.Poonam Mangwani', 'ME', '1973-05-19', 'pmangwani@yahoo.com', 'Computer', 'Batch Facilitator', 'Lecturer', 'F', 'XML,Data Base,Object Oriented S/W Engg.', '', 2, 1),
(105386, 'Mr.Nitin Nagar', 'BCA,MCA,Ph.D(pursuing)', '0000-00-00', 'nitin28nagar@gmail.com', 'Computer', 'Batch Facilitator', 'Lecturer', '', 'Cloud computing', '9826856519', 2, 1),
(105387, 'Dr.Rahul Singhai', 'B.Sc,MCA,M.phil(CS),PhD(CS)', '0000-00-00', ' singhai_rahul@hotmail.com', 'Computer', 'Batch Facilitator', 'Lecturer', '', 'Operating System,DBMS,SAD,System Programming', '9827737525', 2, 1),
(105388, 'Dr.Prerna Kumar', 'MBA,Ph.D', '0000-00-00', 'prernakumar74@gmail.com', 'Management', 'Batch Facilitator', 'Lecturer', '', '', '', 2, 1),
(105389, 'Mr.Rupesh Sendre', 'B.Sc ,MCA', '0000-00-00', 'sendre.rupesh@gmail.com', 'Computer', 'Batch Facilitator', 'Lecturer', '', 'Communication and networks', '9981116176', 2, 1),
(105390, 'Mr.Naresh Dembla', 'B.E, MBA, ME(comp. Eng) , Ph.D(Pursuing)', '0000-00-00', ' nareshdembla@gmail.com', 'Management', 'Batch Facilitator', 'Lecturer', '', '', '', 2, 1),
(105391, 'Ms.Shraddha Soni', 'MCA', '0000-00-00', ' so_shraddha4@yahoo.co.in', 'Computer', 'Batch Facilitator', 'Lecturer', '', '', '', 2, 1),
(105392, 'Ms.Kirti Vijayvargiya', 'MCA,UGC-NET(CS)', '0000-00-00', 'keerti_vijay@rediffmail.com', 'Computer', 'Batch Facilitator', 'Lecturer', '', '', '', 2, 1),
(105393, 'Mr.Pradeep K. Jatav', 'B.Sc(Statistics),  MCA', '0000-00-00', 'p.jatav84@gmail.com', 'Computer', 'Batch Facilitator', 'Lecturer', '', 'Computer science', '9713038949', 2, 1),
(105394, 'Mr.Imroz Khan', 'B.E.(Electronics)', '1977-02-10', 'imroz@iips.edu.in', 'TPO', 'TPO', 'Software Engineer, P', 'M', 'Software Engineering, e-Governance and Process re-', '91-731-2468507', 2, 1),
(105395, 'Mr.Yogendra Bawal', 'M.Sc.(Electronics. & Communication)\r<br>CCNA,', '0000-00-00', 'ybawal@yahoo.com', 'AO', 'Administrative Officer', 'Network Administrato', '', '', ' 2461888', 2, 1),
(105396, 'Mr.Basant Namdeo', 'MCA', '0000-00-00', 'basant_nd@yahoo.com', 'Computer', 'Batch Facilitator', 'Lecturer', '', 'Application Development, Database Design, Web Appl', '', 2, 1),
(105397, 'Mr.Almas Nabi', 'M.Tech.(CS), M.Sc.(CS)', '0000-00-00', 'almas.nabi@iips.edu.in', 'Computer Lab', 'Programmer', 'Programmer', '', 'Networking, DBMS, AS/400', '2461888', 2, 1),
(105398, 'Mr.Sanjay Narsinghani', 'MCA', '0000-00-00', ' narsinghanisanjay@rediffmail.', 'Computer Lab', 'Programmer', 'Programmer', '', '', '', 2, 1),
(105399, 'Bhanu Pratap Singh', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105400, 'Shakti Banerjee', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105401, 'Siddharth Sharma', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105402, 'Lalit Ingle', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105403, 'Prabhakar Singh', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105404, 'Ramesh Mangal', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105405, 'Deepak Shrivastav', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105406, 'Vivek Sharma', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105407, 'Richa Mandowara', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105408, 'Juhi Kothari', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105409, 'Anjani Tomar', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105410, 'Nilesh Jain', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105411, 'Juhi Kothari', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105412, 'Ashok Mishra', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105413, 'Manjoo Mundra', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105414, 'Chitranjan Sharma', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105415, 'Jalaj Katare', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105416, 'Deepi Jain', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105417, 'Vipul Paramarthi', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105418, 'M.K. Mishra', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105419, 'Jalaj Katare', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105420, 'Deepi Jain', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105421, 'Vipul Paramarthi', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105422, 'D. K. Banerjee', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105423, 'Shailendra K Khichi', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105424, 'Sharad Chaudhary', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105425, 'D. K. Banerjee', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105426, 'Shailendra K Khichi', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105427, 'Sharad Chaudhary', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105428, 'Sanjay Katiyal', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105429, 'Sanjay Katiyal', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105430, 'Dheeraj Nitnavre', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105431, 'Manas Ranjan', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105432, 'Vaibhav Neema', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105433, 'Chitranjan Sharma', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105434, 'Shakti Banerjee', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105435, 'Ruhi Khan', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105436, 'Naresh Patel', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105437, 'Vijay Karma', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105438, 'Shailesh Kadam', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105439, 'Richa Tiwari', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105440, 'Mahesh Sharma', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105441, 'B. Sarkar', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105442, 'D.K. Banerjee', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105443, 'Puneet Shrivastav', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105444, 'Nitisha Jain', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105445, 'Priyanka Jain', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105446, 'Ashish Kumar Jain', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105447, 'Sangeeta Chaudhary', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105448, 'Debahuti Basu', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105449, 'Vikas Jain', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105450, 'Richa Agrawal', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105451, 'S. L. Chaplot', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105452, 'Devendra Verma', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105453, 'R.C. Sharma', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105454, 'Kapil Kapoor', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105455, 'Sachin Anchaliya', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105456, 'N.K.Totla', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105457, 'S.K.Dutta', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105458, 'Nitin Gangrade', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105459, 'Praveen Saxena', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105460, 'Jeet Patidar', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105461, 'Nilesh Jain', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105462, 'Mahesh Sharma', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105463, 'Ranbeer Das', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105464, 'Siddharth Sharma', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105465, 'Sachin Anchaliya', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105466, 'Diensh Wadhwa', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105467, 'S.K. Dutta', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105468, 'O.S. Gupta', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105469, 'Kalpna Trehan', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105470, 'Kapil Sharma', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105471, 'Shirish Kutumble', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105472, 'Alok Arzare', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105473, 'Manish Baheti', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105474, 'Sanjay Katiyal', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105475, 'Bhawna Nigam', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105476, 'Alok Arzare', NULL, '0000-00-00', '', '', 'Visiting Faculty', 'Visiting Faculty', '', '', '', 2, 1),
(105477, ' S. Das', NULL, '0000-00-00', '', '', 'Account Section', 'Class III Employee', '', '', '', 2, 1),
(105478, 'Bhupendra Verma', NULL, '0000-00-00', '', '', 'Account Section', 'Class III Employee', '', '', '', 2, 1),
(105479, 'Yogesh Shukla', NULL, '0000-00-00', '', '', 'Examination', 'Class III Employee', '', '', '', 2, 1),
(105480, 'Sachin Pradhan', NULL, '0000-00-00', '', '', 'Result Section', 'Class III Employee', '', '', '', 2, 1),
(105481, 'Nilesh Thakur', NULL, '0000-00-00', '', '', 'Result Section', 'Class III Employee', '', '', '', 2, 1),
(105482, 'Purnima Yadav', NULL, '0000-00-00', '', '', 'Student Section', 'Class III Employee', '', '', '', 2, 1),
(105483, 'Gajendra Parmar', NULL, '0000-00-00', '', '', 'Post Metric Scholarship', 'Class III Employee', '', '', '', 2, 1),
(105484, ' Neeta Choudhary', NULL, '0000-00-00', '', '', 'Purchase', 'Class III Employee', '', '', '', 2, 1),
(105485, 'Aruna Verma', NULL, '0000-00-00', '', '', 'Student Certificates', 'Class III Employee', '', '', '', 2, 1),
(105486, 'Pankaj Tripathi', NULL, '0000-00-00', '', '', 'Dispatch', 'Class III Employee', '', '', '', 2, 1),
(105487, 'Abhishek Nema', NULL, '0000-00-00', '', '', 'Library Section', 'Class III Employee', '', '', '', 2, 1),
(105488, ' Abhya Mishra', NULL, '0000-00-00', '', '', 'Library Section', 'Class III Employee', '', '', '', 2, 1),
(105489, 'Naim Khan', NULL, '0000-00-00', '', '', 'Library Section', 'Class III Employee', '', '', '', 2, 1),
(105490, ' Alka Lad', NULL, '0000-00-00', '', '', 'Library Section', 'Class III Employee', '', '', '', 2, 1),
(105491, 'S.L. Pandey', NULL, '0000-00-00', '', '', 'Library Section', 'Class III Employee', '', '', '', 2, 1),
(105492, 'Damyanti Kusumakar', NULL, '0000-00-00', '', '', 'Library Section', 'Class III Employee', '', '', '', 2, 1),
(105493, ' Bhagwati Prasad', NULL, '0000-00-00', '', '', 'Room No. 101', 'Class IV Employee', '', '', '', 2, 1),
(105494, 'Rajendra Singh', NULL, '0000-00-00', '', '', 'LT-3', 'Class IV Employee', '', '', '', 2, 1),
(105495, 'Narayan Shandilya', NULL, '0000-00-00', '', '', 'Room No. 102', 'Class IV Employee', '', '', '', 2, 1),
(105496, ' Rajesh Nagar', NULL, '0000-00-00', '', '', 'Room No. 212', 'Class IV Employee', '', '', '', 2, 1),
(105497, 'Om Prakash', NULL, '0000-00-00', '', '', 'Room No.103', 'Class IV Employee', '', '', '', 2, 1),
(105498, 'Shoubhnath Shukla', NULL, '0000-00-00', '', '', 'Room No. 104', 'Class IV Employee', '', '', '', 2, 1),
(105499, 'Devi Chand', NULL, '0000-00-00', '', '', 'Room No. 105,LH-9', 'Class IV Employee', '', '', '', 2, 1),
(105500, 'Manoj Mishra', NULL, '0000-00-00', '', '', 'LT-1', 'Class IV Employee', '', '', '', 2, 1),
(105501, 'Lokesh Kumar', NULL, '0000-00-00', '', '', 'Room No. 106', 'Class IV Employee', '', '', '', 2, 1),
(105502, 'Anand Narwale', NULL, '0000-00-00', '', '', 'Room No. 107', 'Class IV Employee', '', '', '', 2, 1),
(105503, 'Dinesh Mehna', NULL, '0000-00-00', '', '', 'Room No. 109', 'Class IV Employee', '', '', '', 2, 1),
(105504, 'Rakesh Pagare', NULL, '0000-00-00', '', '', 'LT-2', 'Class IV Employee', '', '', '', 2, 1),
(105505, 'Rajesh Pagare', NULL, '0000-00-00', '', '', 'LT-4', 'Class IV Employee', '', '', '', 2, 1),
(105506, 'Jitendra Deora', NULL, '0000-00-00', '', '', 'Room No. 202', 'Class IV Employee', '', '', '', 2, 1),
(105507, 'Omkar Nath', NULL, '0000-00-00', '', '', 'Room No. 108,201', 'Class IV Employee', '', '', '', 2, 1),
(105508, 'Ashwin Rangari', NULL, '0000-00-00', '', '', 'Room No. 208', 'Class IV Employee', '', '', '', 2, 1),
(105509, 'Ashwin Vishnar', NULL, '0000-00-00', '', '', 'Room No. 203,206,211', 'Class IV Employee', '', '', '', 2, 1),
(105510, ' Anil Ved', NULL, '0000-00-00', '', '', 'Room No. 204', 'Class IV Employee', '', '', '', 2, 1),
(105511, 'Gopal Mehna', NULL, '0000-00-00', '', '', 'Room No. 205', 'Class IV Employee', '', '', '', 2, 1),
(105512, ' Panchphula Bai', NULL, '0000-00-00', '', '', 'Room No. 209', 'Class IV Employee', '', '', '', 2, 1),
(105513, 'Keshu Gurjar', NULL, '0000-00-00', '', '', 'Room No. 207,210', 'Class IV Employee', '', '', '', 2, 1),
(105517, 'Mrs. Monalisa Khatre', NULL, '0000-00-00', '', '', '', '', '', '', '', 2, 1),
(105518, 'Ms. Srishti Choudhary', NULL, '2014-11-01', '', '', '', '', '', '', '', 2, 1),
(105519, 'Mr. Ravi Bunkar', NULL, '2014-11-01', '', '', '', '', '', '', '', 2, 1),
(105520, 'Mr. Chetan Raikwar', NULL, '2014-11-01', '', '', '', '', '', '', '', 2, 1),
(105521, 'Mr. Kapil Kushwah', NULL, '0000-00-00', '', '', '', 'Visiting Faculty', '', '', '', 2, 1),
(105522, 'Mr. Geetesh Kwatra', NULL, '0000-00-00', '', '', '', '', '', '', '', 2, 1),
(105523, 'Mr. Sanjay Jain', NULL, '0000-00-00', '', '', '', '', '', '', '', 2, 1),
(105524, 'Ms. Swarna Choudhary', NULL, '0000-00-00', '', '', '', '', '', '', '', 2, 1),
(105525, 'Ms. Neha Chouhan', NULL, '0000-00-00', '', '', '', '', '', '', '', 2, 1),
(105526, 'Mrs. Varshali Jaiswal', NULL, '0000-00-00', '', '', '', '', '', '', '', 2, 1),
(105527, 'Ms. Sonali Mandlik', NULL, '0000-00-00', '', '', '', '', '', '', '', 2, 1),
(105528, 'Lalit Verma', NULL, '0000-00-00', '', '', '', '', '', '', '', 2, 1),
(105529, 'Dr. Rajesh K. Sharma', NULL, '0000-00-00', '', '', '', '', '', '', '', 2, 1),
(105530, 'Ms. Poorva Sharma', NULL, '0000-00-00', '', '', '', '', '', '', '', 2, 1),
(105531, 'Mr. Kuber Dutt Gautam', NULL, '0000-00-00', '', '', '', '', '', '', '', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `feedback_student_info`
--

CREATE TABLE IF NOT EXISTS `feedback_student_info` (
  `fs_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'composite primary key',
  `batch_id` varchar(20) NOT NULL COMMENT 'composite primary key',
  `course` varchar(2) NOT NULL,
  `semester` int(2) NOT NULL,
  `section` varchar(1) DEFAULT NULL,
  `feedback_session` int(4) NOT NULL COMMENT 'the year in which feedback is taken',
  PRIMARY KEY (`fs_id`,`batch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='This table is used to maintain batch_id of students ' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `infrastructure_support_info`
--

CREATE TABLE IF NOT EXISTS `infrastructure_support_info` (
  `s_no` int(11) NOT NULL AUTO_INCREMENT COMMENT 'it is primary key for infrastructure_support_info table which is auto-incremented',
  `fs_id` varchar(20) NOT NULL COMMENT 'fs_id from feedback_student_info',
  `books_availability` int(11) NOT NULL COMMENT 'it holds information about the availability of books in library',
  `basic_requirements` int(11) NOT NULL COMMENT 'it holds information about the basic requirements like furniture, chalk, dusture',
  `technological_support` int(11) NOT NULL COMMENT 'it holds information about the technological support like ohp/lcd',
  `study_material` int(11) NOT NULL COMMENT 'it holds information about the photocopy of study material',
  `resource_availability` int(11) NOT NULL COMMENT 'it holds the information about the availability of other resources like internet, computers',
  `cleaniliness_of_class` int(11) NOT NULL COMMENT 'it holds information about the cleaniliness in the classroom',
  PRIMARY KEY (`s_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='infrastructure_support_info table collects information about infrastructure' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE IF NOT EXISTS `subject` (
  `subject_id` varchar(15) NOT NULL COMMENT 'Unique Subject ID',
  `course_id` varchar(20) NOT NULL COMMENT 'Course id from course table',
  `name_of_subject` varchar(50) NOT NULL,
  `semester` int(20) NOT NULL,
  `credits` int(10) NOT NULL COMMENT 'credits of that particular subjects',
  `status` int(1) NOT NULL,
  `is_viva_or_lab` tinyint(1) NOT NULL COMMENT 'to know that subject is (viva,lab) or not',
  PRIMARY KEY (`subject_id`),
  KEY `subject_id` (`subject_id`),
  KEY `course_id` (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='this';

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `course_id`, `name_of_subject`, `semester`, `credits`, `status`, `is_viva_or_lab`) VALUES
('IC-101A', 'IC', 'Mathematics-I', 1, 0, 0, 0),
('IC-103A', 'IC', 'Physics-I', 1, 0, 0, 0),
('IC-104B', 'IC', 'Fundamental of Programming using C', 1, 0, 1, 0),
('IC-105A', 'IC', 'Computer Fundamentals', 1, 0, 0, 0),
('IC-106C', 'IC', 'English & Communicative Skills', 1, 0, 0, 0),
('IC-107D', 'IC', 'C-Programming Lab', 1, 0, 0, 1),
('IC-108', 'IC', 'Comprehensive Viva', 1, 0, 0, 1),
('IC-1104', 'IC', 'Comprehensive Viva', 11, 0, 0, 1),
('IC-1105', 'IC', 'VLSI  Design', 11, 0, 0, 0),
('IC-1107A', 'IC', 'Research in Computing', 11, 0, 0, 0),
('IC-1108', 'IC', 'Mobile & Wireless Computing', 11, 0, 0, 0),
('IC-1109A', 'IC', 'Data Mining & warehousing', 11, 0, 0, 0),
('IC-110A', 'IC', 'PC Software ', 1, 0, 0, 0),
('IC-301', 'IC', 'Mathematics-III', 3, 0, 0, 0),
('IC-302', 'IC', 'Chemistry & Environmental Science', 3, 0, 0, 0),
('IC-304A', 'IC', 'Digital Electronics', 3, 0, 0, 0),
('IC-305', 'IC', 'Data Structure & Algorithms', 3, 0, 0, 0),
('IC-306', 'IC', 'Digital Computer Organization', 3, 0, 0, 0),
('IC-307 ', 'IC', 'DS & Algorithm Lab', 3, 0, 0, 1),
('IC-309', 'IC', 'Comprehensive Viva', 3, 0, 0, 1),
('IC-310C', 'IC', 'Digital Elex Lab', 3, 0, 0, 1),
('IC-501A', 'IC', 'Accounting & Financial Management - II', 5, 0, 0, 0),
('IC-502A', 'IC', 'Microprocessor & Assembly Language', 5, 0, 0, 0),
('IC-503', 'IC', 'Computer Graphics', 5, 0, 0, 0),
('IC-504A', 'IC', 'System Programming', 5, 0, 0, 0),
('IC-507D', 'IC', 'Computer Lab ', 5, 0, 0, 1),
('IC-508B', 'IC', 'Elex Lab', 5, 0, 0, 1),
('IC-509', 'IC', 'Comprehensive Viva', 5, 0, 0, 1),
('IC-512A', 'IC', 'Numerical Analysis & Design', 5, 0, 0, 0),
('IC-701', 'IC', 'Computer Architecture', 7, 0, 0, 0),
('IC-702', 'IC', 'Linear Systems', 7, 0, 0, 0),
('IC-703', 'IC', 'Discrete Structure', 7, 0, 0, 0),
('IC-705A', 'IC', 'Operating System', 7, 0, 0, 0),
('IC-707', 'IC', 'Comprehensive Viva', 7, 0, 0, 1),
('IC-708', 'IC', 'Bio-Informatics', 7, 0, 0, 0),
('IC-901', 'IC', 'Theory of Computation', 9, 0, 0, 0),
('IC-905A', 'IC', 'Object Oriented Analysis & Design', 9, 0, 0, 0),
('IC-906', 'IC', 'Comprehensive Viva', 9, 0, 0, 1),
('IC-907A-B1', 'IC', 'Project ', 9, 0, 0, 1),
('IC-907A-B2', 'IC', 'Project', 9, 0, 0, 1),
('IC-910', 'IC', 'Managerial Economics', 9, 0, 0, 0),
('IC-911', 'IC', 'Software Testing & Quality Assurance', 9, 0, 0, 0),
('IT-101', 'IT', 'Mathematics-1', 1, 5, 0, 0),
('IT-102', 'IT', 'Statistical Methods-1', 1, 5, 0, 0),
('IT-103', 'IT', 'Physics', 1, 5, 0, 0),
('IT-104', 'IT', 'C-Programming', 1, 5, 0, 0),
('IT-105', 'IT', 'PC-Software', 1, 5, 0, 0),
('IT-106', 'IT', 'Communicative English', 1, 5, 0, 0),
('IT-107', 'IT', 'C- Programming Lab', 1, 5, 0, 1),
('IT-108', 'IT', 'Comprehensive Viva', 1, 5, 0, 1),
('IT-109', 'IT', 'PC s/w Lab', 1, 5, 0, 1),
('IT-301', 'IT', 'Linear Algebra', 3, 0, 0, 0),
('IT-302', 'IT', 'Internet Tools', 3, 0, 0, 0),
('IT-303', 'IT', 'Digital Electronics', 3, 0, 0, 0),
('IT-304', 'IT', 'Data Structures with C++', 3, 0, 0, 0),
('IT-305', 'IT', 'Engineering Drawing', 3, 0, 0, 0),
('IT-306', 'IT', 'Comp Lab', 3, 0, 0, 1),
('IT-307', 'IT', 'Elex Lab', 3, 0, 0, 1),
('IT-308', 'IT', 'Comprehensive Viva', 3, 0, 0, 1),
('IT-501A', 'IT', 'Accounting & Financial Management - II', 5, 0, 0, 0),
('IT-503A', 'IT', 'Computer Graphics & Multimedia', 5, 0, 0, 0),
('IT-504', 'IT', 'System Programming', 5, 0, 0, 0),
('IT-506', 'IT', 'Numerical Analysis & Design', 5, 0, 0, 0),
('IT-508C', 'IT', 'Computer Lab', 5, 0, 0, 1),
('IT-508D', 'IT', 'Elex Lab', 5, 0, 0, 1),
('IT-509', 'IT', 'Comprehensive Viva', 5, 0, 0, 1),
('IT-510', 'IT', 'Microprocessor and Assembly language', 5, 0, 0, 0),
('IT-701', 'IT', 'Computer Architecture', 7, 0, 0, 0),
('IT-702', 'IT', 'Linear System', 7, 0, 0, 0),
('IT-703', 'IT', 'Discrete Structures', 7, 0, 0, 0),
('IT-705A', 'IT', 'Operating System', 7, 0, 0, 0),
('IT-708', 'IT', 'Bio Informatics', 7, 0, 0, 0),
('IT-901A', 'IT', 'Principles of Optimization', 9, 0, 0, 0),
('IT-902A', 'IT', 'Component Technology', 9, 0, 0, 0),
('IT-907', 'IT', 'Artificial Intelligence', 9, 0, 0, 0),
('IT-908A', 'IT', 'Object Oriented Analysis & Design', 9, 0, 0, 0),
('IT-911', 'IT', 'Project', 9, 0, 0, 1),
('IT906', 'IT', 'Comprehensive Viva', 9, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `time_table`
--

CREATE TABLE IF NOT EXISTS `time_table` (
  `s_no` bigint(6) NOT NULL AUTO_INCREMENT,
  `course_id` varchar(20) NOT NULL COMMENT 'The course id from the course table to know the course name',
  `subject_id` varchar(20) NOT NULL COMMENT 'The subject id from subject table to know subject name',
  `faculty_id` bigint(6) NOT NULL COMMENT 'The faculty_id from user master table to know name',
  `batch_id` varchar(20) NOT NULL,
  `year` int(10) NOT NULL,
  `section` varchar(5) NOT NULL,
  `day` varchar(20) NOT NULL,
  `time_from` time NOT NULL,
  `time_to` time NOT NULL,
  `room_number` varchar(10) NOT NULL,
  PRIMARY KEY (`s_no`),
  KEY `subject_id` (`subject_id`),
  KEY `faculty_id` (`faculty_id`),
  KEY `course_id` (`course_id`),
  KEY `section` (`section`),
  KEY `batch_id` (`batch_id`),
  KEY `section_2` (`section`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=100 ;

--
-- Dumping data for table `time_table`
--

INSERT INTO `time_table` (`s_no`, `course_id`, `subject_id`, `faculty_id`, `batch_id`, `year`, `section`, `day`, `time_from`, `time_to`, `room_number`) VALUES
(1, 'IC', 'IC-104B', 105358, 'IC-2K-14', 2014, 'A', '', '00:00:00', '00:00:00', '207'),
(2, 'IC', 'IC-104B', 105518, 'IC-2K-14', 2014, 'B', '', '00:00:00', '00:00:00', '208'),
(3, 'IC', 'IC-105A', 105377, 'IC-2K-14', 2014, 'A', '', '00:00:00', '00:00:00', '207'),
(4, 'IC', 'IC-105A', 105393, 'IC-2K-14', 2014, 'B', '', '00:00:00', '00:00:00', '208'),
(5, 'IC', 'IC-106C', 105517, 'IC-2K-14', 2014, 'A', '', '00:00:00', '00:00:00', '207'),
(6, 'IC', 'IC-106C', 105517, 'IC-2K-14', 2014, 'B', '', '00:00:00', '00:00:00', '208'),
(7, 'IC', 'IC-107D', 105518, 'IC-2K-14', 2014, 'B', '', '00:00:00', '00:00:00', '208'),
(8, 'IC', 'IC-110A', 105391, 'IC-2K-14', 2014, 'A', '', '00:00:00', '00:00:00', '207'),
(9, 'IC', 'IC-110A', 105519, 'IC-2K-14', 2014, 'B', '', '00:00:00', '00:00:00', '208'),
(10, 'IC', 'IC-304A', 105377, 'IC-2K-13', 2014, 'A', '', '00:00:00', '00:00:00', '209'),
(11, 'IC', 'IC-304A', 105377, 'IC-2K-13', 2014, 'B', '', '00:00:00', '00:00:00', '211'),
(12, 'IC', 'IC-305', 105357, 'IC-2K-13', 2014, 'A', '', '00:00:00', '00:00:00', '209'),
(13, 'IC', 'IC-305', 105392, 'IC-2K-13', 2014, 'B', '', '00:00:00', '00:00:00', '211'),
(14, 'IC', 'IC-306', 105389, 'IC-2K-13', 2014, 'B', '', '00:00:00', '00:00:00', '211'),
(15, 'IC', 'IC-307 ', 105379, 'IC-2K-13', 2014, 'A', '', '00:00:00', '00:00:00', '209'),
(16, 'IC', 'IC-307 ', 105392, 'IC-2K-13', 2014, 'B', '', '00:00:00', '00:00:00', '211'),
(17, 'IC', 'IC-310C', 105387, 'IC-2K-13', 2014, 'A', '', '00:00:00', '00:00:00', '209'),
(18, 'IC', 'IC-310C', 105377, 'IC-2K-13', 2014, 'B', '', '00:00:00', '00:00:00', '211'),
(23, 'IC', 'IC-501A', 105520, 'IC-2K-12', 2014, 'A', '', '00:00:00', '00:00:00', '207'),
(25, 'IC', 'IC-501A', 105520, 'IC-2K-12', 2014, 'B', '', '00:00:00', '00:00:00', '208'),
(26, 'IC', 'IC-502A', 105385, 'IC-2K-12', 2014, 'A', '', '00:00:00', '00:00:00', '207'),
(27, 'IC', 'IC-502A', 105385, 'IC-2K-12', 2014, 'B', '', '00:00:00', '00:00:00', '208'),
(28, 'IC', 'IC-503', 105396, 'IC-2K-12', 2014, 'A', '', '00:00:00', '00:00:00', '207'),
(29, 'IC', 'IC-503', 105396, 'IC-2K-12', 2014, 'B', '', '00:00:00', '00:00:00', '208'),
(30, 'IC', 'IC-504A', 105392, 'IC-2K-12', 2014, 'A', '', '00:00:00', '00:00:00', '207'),
(31, 'IC', 'IC-504A', 105392, 'IC-2K-12', 2014, 'B', '', '00:00:00', '00:00:00', '208'),
(32, 'IC', 'IC-512A', 105389, 'IC-2K-12', 2014, 'A', '', '00:00:00', '00:00:00', '207'),
(33, 'IC', 'IC-512A', 105389, 'IC-2K-12', 2014, 'B', '', '00:00:00', '00:00:00', '208'),
(34, 'IC', 'IC-507D', 105396, 'IC-2K-12', 2014, 'A', '', '00:00:00', '00:00:00', '207'),
(35, 'IC', 'IC-507D', 105380, 'IC-2K-12', 2014, 'B', '', '00:00:00', '00:00:00', '208'),
(36, 'IC', 'IC-508B', 105385, 'IC-2K-12', 2014, 'A', '', '00:00:00', '00:00:00', '207'),
(37, 'IC', 'IC-508B', 105518, 'IC-2K-12', 2014, 'B', '', '00:00:00', '00:00:00', '208'),
(38, 'IC', 'IC-701', 105379, 'IC-2K-11', 2014, 'A', '', '00:00:00', '00:00:00', '209'),
(39, 'IC', 'IC-701', 105379, 'IC-2K-11', 2014, 'B', '', '00:00:00', '00:00:00', '211'),
(40, 'IC', 'IC-702', 105521, 'IC-2K-11', 2014, 'A', '', '00:00:00', '00:00:00', '209'),
(41, 'IC', 'IC-702', 105521, 'IC-2K-11', 2014, 'B', '', '00:00:00', '00:00:00', '211'),
(42, 'IC', 'IC-703', 105373, 'IC-2K-11', 2014, 'A', '', '00:00:00', '00:00:00', '209'),
(43, 'IC', 'IC-703', 105386, 'IC-2K-11', 2014, 'B', '', '00:00:00', '00:00:00', '211'),
(44, 'IC', 'IC-708', 105391, 'IC-2K-11', 2014, 'A', '', '00:00:00', '00:00:00', '209'),
(45, 'IC', 'IC-708', 105391, 'IC-2K-11', 2014, 'B', '', '00:00:00', '00:00:00', '211'),
(46, 'IC', 'IC-705A', 105387, 'IC-2K-11', 2014, 'A', '', '00:00:00', '00:00:00', '209'),
(47, 'IC', 'IC-705A', 105387, 'IC-2K-11', 2014, 'B', '', '00:00:00', '00:00:00', '211'),
(48, 'IC', 'IC-901', 105373, 'IC-2K-10', 2014, '', '', '00:00:00', '00:00:00', 'LT-2'),
(49, 'IC', 'IC-905A', 105357, 'IC-2K-10', 2014, '', '', '00:00:00', '00:00:00', 'LT-2'),
(50, 'IC', 'IC-911', 105386, 'IC-2K-10', 2014, '', '', '00:00:00', '00:00:00', 'LT-2'),
(51, 'IC', 'IC-910', 105517, 'IC-2K-10', 2014, '', '', '00:00:00', '00:00:00', 'LT-2'),
(52, 'IC', 'IC-907A-B1', 105360, 'IC-2K-10', 2014, '', '', '00:00:00', '00:00:00', 'LT-2'),
(53, 'IC', 'IC-907A-B2', 105373, 'IC-2K-10', 2014, '', '', '00:00:00', '00:00:00', 'LT-2'),
(54, 'IC', 'IC-1109A', 105360, 'IC-2K-9', 2014, 'A', '', '00:00:00', '00:00:00', '101'),
(55, 'IC', 'IC-1108', 105359, 'IC-2K-9', 2014, 'A', '', '00:00:00', '00:00:00', '101'),
(56, 'IC', 'IC-1105', 105522, 'IC-2K-9', 2014, 'A', '', '00:00:00', '00:00:00', '101'),
(57, 'IC', 'IC-1107A', 105353, 'IC-2K-9', 2014, 'A', '', '00:00:00', '00:00:00', '101'),
(58, 'IT', 'IT-101', 105523, 'IT-2K-14', 2014, '', '', '00:00:00', '00:00:00', '205'),
(59, 'IT', 'IT-103', 105530, 'IT-2K-14', 2014, '', '', '00:00:00', '00:00:00', '205'),
(62, 'IT', 'IT-104', 105380, 'IT-2K-14', 2014, '', '', '00:00:00', '00:00:00', '205'),
(63, 'IT', 'IT-105', 105393, 'IT-2K-14', 2014, '', '', '00:00:00', '00:00:00', '205'),
(64, 'IT', 'IT-106', 105525, 'IT-2K-14', 2014, '', '', '00:00:00', '00:00:00', '205'),
(65, 'IT', 'IT-107', 105380, 'IT-2K-14', 2014, '', '', '00:00:00', '00:00:00', '205'),
(66, 'IT', 'IT-109', 105393, 'IT-2K-14', 2014, '', '', '00:00:00', '00:00:00', '205'),
(67, 'IT', 'IT-301', 105523, 'IT-2K-13', 2014, '', '', '00:00:00', '00:00:00', '204'),
(68, 'IT', 'IT-302', 105396, 'IT-2K-13', 2014, '', '', '00:00:00', '00:00:00', '204'),
(69, 'IT', 'IT-303', 105379, 'IT-2K-13', 2014, '', '', '00:00:00', '00:00:00', '204'),
(70, 'IT', 'IT-304', 105359, 'IT-2K-13', 2014, '', '', '00:00:00', '00:00:00', '204'),
(71, 'IT', 'IT-305', 105528, 'IT-2K-13', 2014, '', '', '00:00:00', '00:00:00', '204'),
(72, 'IT', 'IT-306', 105518, 'IT-2K-13', 2014, '', '', '00:00:00', '00:00:00', '204'),
(73, 'IT', 'IT-307', 105389, 'IT-2K-13', 2014, '', '', '00:00:00', '00:00:00', '204'),
(74, 'IT', 'IT-501A', 105520, 'IT-2K-12', 2014, '', '', '00:00:00', '00:00:00', '201'),
(75, 'IT', 'IT-503A', 105526, 'IT-2K-12', 2014, '', '', '00:00:00', '00:00:00', '201'),
(78, 'IT', 'IT-504', 105353, 'IT-2K-12', 2014, '', '', '00:00:00', '00:00:00', '201'),
(79, 'IT', 'IT-506', 105360, 'IT-2K-12', 2014, '', '', '00:00:00', '00:00:00', '201'),
(80, 'IT', 'IT-510', 105386, 'IT-2K-12', 2014, '', '', '00:00:00', '00:00:00', '201'),
(81, 'IT', 'IT-508C', 105380, 'IT-2K-12', 2014, '', '', '00:00:00', '00:00:00', '201'),
(82, 'IT', 'IT-508D', 105386, 'IT-2K-12', 2014, '', '', '00:00:00', '00:00:00', '201'),
(83, 'IT', 'IT-701', 105391, 'IT-2K-11', 2014, '', '', '00:00:00', '00:00:00', '204'),
(84, 'IT', 'IT-703', 105387, 'IT-2K-11', 2014, '', '', '00:00:00', '00:00:00', '204'),
(85, 'IT', 'IT-705A', 105353, 'IT-2K-11', 2014, '', '', '00:00:00', '00:00:00', '204'),
(86, 'IT', 'IT-708', 105393, 'IT-2K-11', 2014, '', '', '00:00:00', '00:00:00', '204'),
(87, 'IT', 'IT-901A', 105360, 'IT-2K-10', 2014, '', '', '00:00:00', '00:00:00', '201'),
(88, 'IT', 'IT-902A', 105357, 'IT-2K-10', 2014, '', '', '00:00:00', '00:00:00', '201'),
(89, 'IT', 'IT-907', 105358, 'IT-2K-10', 2014, '', '', '00:00:00', '00:00:00', '201'),
(90, 'IT', 'IT-908A', 105385, 'IT-2K-10', 2014, '', '', '00:00:00', '00:00:00', '201'),
(91, 'IT', 'IT-911', 105359, 'IT-2K-10', 2014, '', '', '00:00:00', '00:00:00', '201'),
(93, 'IT', 'IT-102', 105529, 'IT-2K-14', 2014, '', '', '00:00:00', '00:00:00', '205'),
(94, 'IT', 'IT-702', 0, 'IT-2K-14', 2014, '', '', '00:00:00', '00:00:00', '204'),
(95, 'IT', 'IT-107', 0, 'IT-2K-14', 2014, '', '', '00:00:00', '00:00:00', '205'),
(96, 'IC', 'IC-1109A', 105373, 'IC-2K-9', 2014, 'B', '', '00:00:00', '00:00:00', '108'),
(97, 'IC', 'IC-1108', 105531, 'IC-2K-9', 2014, 'B', '', '00:00:00', '00:00:00', '108'),
(98, 'IC', 'IC-1105', 105522, 'IC-2K-9', 2014, 'B', '', '00:00:00', '00:00:00', '108'),
(99, 'IC', 'IC-1107A', 105358, 'IC-2K-9', 2014, 'B', '', '00:00:00', '00:00:00', '108');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
