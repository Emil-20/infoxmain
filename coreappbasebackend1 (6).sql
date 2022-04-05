-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2022 at 09:32 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coreappbasebackend1`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add acntexpensest', 7, 'add_acntexpensest'),
(26, 'Can change acntexpensest', 7, 'change_acntexpensest'),
(27, 'Can delete acntexpensest', 7, 'delete_acntexpensest'),
(28, 'Can view acntexpensest', 7, 'view_acntexpensest'),
(29, 'Can add branch_registration', 8, 'add_branch_registration'),
(30, 'Can change branch_registration', 8, 'change_branch_registration'),
(31, 'Can delete branch_registration', 8, 'delete_branch_registration'),
(32, 'Can view branch_registration', 8, 'view_branch_registration'),
(33, 'Can add conditions', 9, 'add_conditions'),
(34, 'Can change conditions', 9, 'change_conditions'),
(35, 'Can delete conditions', 9, 'delete_conditions'),
(36, 'Can view conditions', 9, 'view_conditions'),
(37, 'Can add course', 10, 'add_course'),
(38, 'Can change course', 10, 'change_course'),
(39, 'Can delete course', 10, 'delete_course'),
(40, 'Can view course', 10, 'view_course'),
(41, 'Can add create_team', 11, 'add_create_team'),
(42, 'Can change create_team', 11, 'change_create_team'),
(43, 'Can delete create_team', 11, 'delete_create_team'),
(44, 'Can view create_team', 11, 'view_create_team'),
(45, 'Can add department', 12, 'add_department'),
(46, 'Can change department', 12, 'change_department'),
(47, 'Can delete department', 12, 'delete_department'),
(48, 'Can view department', 12, 'view_department'),
(49, 'Can add designation', 13, 'add_designation'),
(50, 'Can change designation', 13, 'change_designation'),
(51, 'Can delete designation', 13, 'delete_designation'),
(52, 'Can view designation', 13, 'view_designation'),
(53, 'Can add project', 14, 'add_project'),
(54, 'Can change project', 14, 'change_project'),
(55, 'Can delete project', 14, 'delete_project'),
(56, 'Can view project', 14, 'view_project'),
(57, 'Can add project_taskassign', 15, 'add_project_taskassign'),
(58, 'Can change project_taskassign', 15, 'change_project_taskassign'),
(59, 'Can delete project_taskassign', 15, 'delete_project_taskassign'),
(60, 'Can view project_taskassign', 15, 'view_project_taskassign'),
(61, 'Can add user_registration', 16, 'add_user_registration'),
(62, 'Can change user_registration', 16, 'change_user_registration'),
(63, 'Can delete user_registration', 16, 'delete_user_registration'),
(64, 'Can view user_registration', 16, 'view_user_registration'),
(65, 'Can add trainer_task', 17, 'add_trainer_task'),
(66, 'Can change trainer_task', 17, 'change_trainer_task'),
(67, 'Can delete trainer_task', 17, 'delete_trainer_task'),
(68, 'Can view trainer_task', 17, 'view_trainer_task'),
(69, 'Can add topic', 18, 'add_topic'),
(70, 'Can change topic', 18, 'change_topic'),
(71, 'Can delete topic', 18, 'delete_topic'),
(72, 'Can view topic', 18, 'view_topic'),
(73, 'Can add tester_status', 19, 'add_tester_status'),
(74, 'Can change tester_status', 19, 'change_tester_status'),
(75, 'Can delete tester_status', 19, 'delete_tester_status'),
(76, 'Can view tester_status', 19, 'view_tester_status'),
(77, 'Can add test_status', 20, 'add_test_status'),
(78, 'Can change test_status', 20, 'change_test_status'),
(79, 'Can delete test_status', 20, 'delete_test_status'),
(80, 'Can view test_status', 20, 'view_test_status'),
(81, 'Can add tasks', 21, 'add_tasks'),
(82, 'Can change tasks', 21, 'change_tasks'),
(83, 'Can delete tasks', 21, 'delete_tasks'),
(84, 'Can view tasks', 21, 'view_tasks'),
(85, 'Can add reported_issue', 22, 'add_reported_issue'),
(86, 'Can change reported_issue', 22, 'change_reported_issue'),
(87, 'Can delete reported_issue', 22, 'delete_reported_issue'),
(88, 'Can view reported_issue', 22, 'view_reported_issue'),
(89, 'Can add qualification', 23, 'add_qualification'),
(90, 'Can change qualification', 23, 'change_qualification'),
(91, 'Can delete qualification', 23, 'delete_qualification'),
(92, 'Can view qualification', 23, 'view_qualification'),
(93, 'Can add paymentlist', 24, 'add_paymentlist'),
(94, 'Can change paymentlist', 24, 'change_paymentlist'),
(95, 'Can delete paymentlist', 24, 'delete_paymentlist'),
(96, 'Can view paymentlist', 24, 'view_paymentlist'),
(97, 'Can add leave', 25, 'add_leave'),
(98, 'Can change leave', 25, 'change_leave'),
(99, 'Can delete leave', 25, 'delete_leave'),
(100, 'Can view leave', 25, 'view_leave'),
(101, 'Can add internship', 26, 'add_internship'),
(102, 'Can change internship', 26, 'change_internship'),
(103, 'Can delete internship', 26, 'delete_internship'),
(104, 'Can view internship', 26, 'view_internship'),
(105, 'Can add extracurricular', 27, 'add_extracurricular'),
(106, 'Can change extracurricular', 27, 'change_extracurricular'),
(107, 'Can delete extracurricular', 27, 'delete_extracurricular'),
(108, 'Can view extracurricular', 27, 'view_extracurricular'),
(109, 'Can add attendance', 28, 'add_attendance'),
(110, 'Can change attendance', 28, 'change_attendance'),
(111, 'Can delete attendance', 28, 'delete_attendance'),
(112, 'Can view attendance', 28, 'view_attendance'),
(113, 'Can add acntspayslip', 29, 'add_acntspayslip'),
(114, 'Can change acntspayslip', 29, 'change_acntspayslip'),
(115, 'Can delete acntspayslip', 29, 'delete_acntspayslip'),
(116, 'Can view acntspayslip', 29, 'view_acntspayslip'),
(117, 'Can add promissory', 30, 'add_promissory'),
(118, 'Can change promissory', 30, 'change_promissory'),
(119, 'Can delete promissory', 30, 'delete_promissory'),
(120, 'Can view promissory', 30, 'view_promissory');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$duzhjXBh0Rnlv8dZbd12C0$6tnD6ggL62zOvKnHA0f/Bn/ky9sJsrts/dEwLy4pe6M=', NULL, 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2022-03-18 12:39:19.763504');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `base_app_acntexpensest`
--

CREATE TABLE `base_app_acntexpensest` (
  `id` bigint(20) NOT NULL,
  `payee` varchar(100) NOT NULL,
  `payacnt` varchar(200) NOT NULL,
  `paymethod` varchar(100) NOT NULL,
  `paydate` varchar(100) NOT NULL,
  `refno` varchar(100) NOT NULL,
  `amount` int(11) NOT NULL,
  `tax` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `base_app_acntexpensest`
--

INSERT INTO `base_app_acntexpensest` (`id`, `payee`, `payacnt`, `paymethod`, `paydate`, `refno`, `amount`, `tax`, `total`, `category`, `description`) VALUES
(1, 'test', '00000000000', 'testing', '2022-03-16', '000000', 15000, 500, 15500, 'testing', 'testing  '),
(2, 'testing', '000', 'test', '2022-03-21', '00', 2000, 10, 2010, 'test', 'test '),
(3, 'test', '00', 'test', '2022-03-15', '00', 3000, 10, 3010, 'testing', 'test  ');

-- --------------------------------------------------------

--
-- Table structure for table `base_app_acntspayslip`
--

CREATE TABLE `base_app_acntspayslip` (
  `id` bigint(20) NOT NULL,
  `basic_salary` int(11) NOT NULL,
  `eno` varchar(100) NOT NULL,
  `hra` int(11) NOT NULL,
  `conveyns` varchar(100) NOT NULL,
  `tax` int(11) NOT NULL,
  `incentives` int(11) NOT NULL,
  `fromdate` date DEFAULT NULL,
  `todate` date DEFAULT NULL,
  `taxengine` varchar(100) NOT NULL,
  `incometax` int(11) NOT NULL,
  `uan` varchar(100) NOT NULL,
  `pf` int(11) NOT NULL,
  `esi` varchar(100) NOT NULL,
  `pro` varchar(100) NOT NULL,
  `leavesno` int(11) NOT NULL,
  `pf_tax` int(11) NOT NULL,
  `delay` int(11) NOT NULL,
  `basictype` varchar(255) NOT NULL,
  `hratype` varchar(255) NOT NULL,
  `contype` varchar(255) NOT NULL,
  `protype` varchar(255) NOT NULL,
  `instype` varchar(255) NOT NULL,
  `deltype` varchar(255) NOT NULL,
  `leatype` varchar(255) NOT NULL,
  `pftype` varchar(255) NOT NULL,
  `esitype` varchar(255) NOT NULL,
  `department_id` bigint(20) DEFAULT NULL,
  `designation_id` bigint(20) DEFAULT NULL,
  `user_id_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `base_app_acntspayslip`
--

INSERT INTO `base_app_acntspayslip` (`id`, `basic_salary`, `eno`, `hra`, `conveyns`, `tax`, `incentives`, `fromdate`, `todate`, `taxengine`, `incometax`, `uan`, `pf`, `esi`, `pro`, `leavesno`, `pf_tax`, `delay`, `basictype`, `hratype`, `contype`, `protype`, `instype`, `deltype`, `leatype`, `pftype`, `esitype`, `department_id`, `designation_id`, `user_id_id`) VALUES
(1, 10000, '', 100, '100', 0, 100, '2022-03-23', NULL, '', 0, '', 100, '100', '', 2, 100, 2, 'Earning for Employee', 'Earning for Employee', 'Earning for Employee', 'Earning for Employee', 'Deduction for Employee', 'Deduction for Employee', 'Deduction for Employee', 'Earning for Employee', 'Earning for Employee', 3, 9, 31),
(2, 10000, '', 100, '100', 0, 100, '2022-03-21', NULL, '', 0, '', 100, '100', '', 1, 100, 2, 'Earning for Employee', 'Earning for Employee', 'Earning for Employee', 'Earning for Employee', 'Earning for Employee', 'Deduction for Employee', 'Deduction for Employee', 'Earning for Employee', 'Earning for Employee', NULL, 9, 6),
(3, 1000, '', 1, '1', 0, 1, '2022-03-30', NULL, '', 0, '', 1, '1', '', 1, 1, 1, 'Deduction for Employee', 'Deduction for Employee', 'Deduction for Employee', 'Deduction for Employee', 'Deduction for Employee', 'Deduction for Employee', 'Deduction for Employee', 'Deduction for Employee', 'Deduction for Employee', 2, 9, 21);

-- --------------------------------------------------------

--
-- Table structure for table `base_app_attendance`
--

CREATE TABLE `base_app_attendance` (
  `id` bigint(20) NOT NULL,
  `date` date DEFAULT NULL,
  `status` varchar(200) NOT NULL,
  `attendance_status` varchar(200) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `base_app_attendance`
--

INSERT INTO `base_app_attendance` (`id`, `date`, `status`, `attendance_status`, `user_id`) VALUES
(1, '2022-03-02', '', '1', 31),
(2, '2022-03-03', '', '1', 31),
(3, '2022-03-09', '', '0', 31),
(4, '2022-03-17', '', '0', 31),
(5, '2022-03-01', '', '1', 31),
(6, '2022-03-11', '', '1', 31),
(7, '2022-03-02', '', '0', 31),
(8, '2022-03-03', '', '1', 31),
(9, '2022-03-12', '', '0', 31),
(10, '2022-03-04', '', '0', 31),
(11, '2022-03-05', '', '1', 31),
(12, '2022-03-14', '', '1', 31),
(13, '2022-03-01', '', '1', 6),
(14, '2022-03-02', '', '1', 6),
(15, '2022-03-03', '', '1', 6),
(16, '2022-03-04', '', '1', 6),
(17, '2022-03-05', '', '1', 6),
(18, '2022-03-06', '', '1', 6),
(19, '2022-03-01', '', '1', 31),
(20, '2022-03-01', '', '1', 21),
(21, '2022-03-02', '', '1', 31),
(22, '2022-03-02', '', '1', 21),
(23, '2022-03-03', '', '1', 31),
(24, '2022-03-03', '', '1', 21),
(25, '2021-09-02', 'present', '', 26),
(26, '2022-03-04', '', '0', 21),
(27, '2022-03-05', '', '1', 31),
(28, '2022-03-07', '', '0', 21),
(29, '2022-03-06', '', '1', 31),
(30, '2022-03-08', '', '1', 21),
(31, '2022-03-09', '', '1', 21),
(32, '2022-03-10', '', '0', 21),
(33, '2022-03-11', '', '1', 21),
(34, '2022-03-11', '', '1', 21),
(35, '2022-03-01', '', '1', 31),
(36, '2022-03-02', '', '1', 31),
(37, '2022-03-03', '', '1', 31),
(38, '2022-03-04', '', '1', 31),
(39, '2022-03-05', '', '1', 31),
(40, '2022-03-06', '', '1', 31),
(41, '2022-03-21', '', '1', 21),
(42, '2022-03-01', '', '1', 21),
(43, '2022-03-04', 'present', '', 26),
(44, '2022-03-04', 'present', '', 23),
(45, '2022-03-04', 'present', '', 14),
(46, '2022-03-05', 'absent', '', 12),
(47, '2022-03-06', 'present', '', 18),
(48, '2022-03-07', 'absent', '', 14),
(49, '2022-03-05', 'absent', '', 12);

-- --------------------------------------------------------

--
-- Table structure for table `base_app_branch_registration`
--

CREATE TABLE `base_app_branch_registration` (
  `id` bigint(20) NOT NULL,
  `branch_name` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `branch_admin` varchar(100) NOT NULL,
  `branch_type` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `logo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `base_app_branch_registration`
--

INSERT INTO `base_app_branch_registration` (`id`, `branch_name`, `location`, `branch_admin`, `branch_type`, `status`, `mobile`, `email`, `logo`) VALUES
(1, 'Infox carnival', 'Kochi', 'anand', 'head', '', '8975485214', 'infox@gmail.com', 'images/infox.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `base_app_conditions`
--

CREATE TABLE `base_app_conditions` (
  `id` bigint(20) NOT NULL,
  `condition1` varchar(1000) NOT NULL,
  `condition2` varchar(1000) NOT NULL,
  `condition3` varchar(1000) NOT NULL,
  `condition4` varchar(1000) NOT NULL,
  `condition5` varchar(1000) NOT NULL,
  `condition6` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `base_app_conditions`
--

INSERT INTO `base_app_conditions` (`id`, `condition1`, `condition2`, `condition3`, `condition4`, `condition5`, `condition6`) VALUES
(1, ' You will be under probation for six months with no salary /stipend from the date of appointment and on your services during the said probation period being found satisfactory, the Company will offer you a starting salary in between 1.4 L – 1.8L per annum based on your performance in the probation period.', ' Your normal working hours’ will be 54 hours’ per week, to be worked Monday to Saturday. If company suggests at times, you are requested to work on holidays also.', 'You are entitled for 12 days leave for each 12 months continued service.', 'If company suggests at times, you are requested to relocate to other job locations also.', ' The notice period for resigning from the job is 2 months, on your relieve, you have to complete and submit all the assigned work properly, unless you have to pay the compensation.', 'The Company has the rights to terminate you from the job immediately at any time for genuine reasons like mis behaviour, malpractices, spy works, lack of performances in work, illegal activities and so on.');

-- --------------------------------------------------------

--
-- Table structure for table `base_app_course`
--

CREATE TABLE `base_app_course` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `total_fee` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `base_app_course`
--

INSERT INTO `base_app_course` (`id`, `name`, `total_fee`) VALUES
(1, 'Django', 40000),
(2, 'Bootstrap', 20000),
(3, 'C#', 10000),
(4, 'Kubernets', 70000);

-- --------------------------------------------------------

--
-- Table structure for table `base_app_create_team`
--

CREATE TABLE `base_app_create_team` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `trainer` varchar(200) NOT NULL,
  `progress` int(11) NOT NULL,
  `status` varchar(200) NOT NULL,
  `team_count` int(11) NOT NULL,
  `team_status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `base_app_create_team`
--

INSERT INTO `base_app_create_team` (`id`, `name`, `trainer`, `progress`, `status`, `team_count`, `team_status`) VALUES
(1, 'python', 'Trainer1', 80, '', 0, '1'),
(2, ' C', 'Trainer1', 20, '', 0, '0'),
(3, 'Java', 'FUAD SANIN', 0, '', 0, '0');

-- --------------------------------------------------------

--
-- Table structure for table `base_app_department`
--

CREATE TABLE `base_app_department` (
  `id` bigint(20) NOT NULL,
  `department` varchar(100) NOT NULL,
  `files` varchar(100) DEFAULT NULL,
  `status` varchar(100) NOT NULL,
  `branch_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `base_app_department`
--

INSERT INTO `base_app_department` (`id`, `department`, `files`, `status`, `branch_id`) VALUES
(2, 'python', 'images/icons8-python-150_BPlXDds.png', '', 1),
(3, 'machine learning', 'images/icons8-java-150_-_Copy_Byb7vAv.png', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `base_app_designation`
--

CREATE TABLE `base_app_designation` (
  `id` bigint(20) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `files` varchar(100) DEFAULT NULL,
  `status` varchar(100) NOT NULL,
  `branch_id` bigint(20) DEFAULT NULL,
  `department_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `base_app_designation`
--

INSERT INTO `base_app_designation` (`id`, `designation`, `files`, `status`, `branch_id`, `department_id`) VALUES
(1, 'admin', 'icons8-manager-90.png', '', 1, 2),
(2, 'manager', 'icons8-manager-90.png', '', 1, 2),
(3, 'project manager', 'icons8-manager-90.png', '', 1, 2),
(4, 'team leader', 'icons8-manager-90.png', '', 1, 2),
(5, 'tester', 'icons8-manager-90.png', '', 1, 2),
(6, 'developer', 'icons8-manager-90.png', '', 1, 2),
(7, 'trainingmanager', 'icons8-manager-90.png', '', 1, 2),
(8, 'trainer', 'icons8-manager-90.png', '', 1, 2),
(9, 'trainee', 'icons8-manager-90.png', '', 1, 2),
(10, 'account', 'icons8-manager-90.png', '', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `base_app_extracurricular`
--

CREATE TABLE `base_app_extracurricular` (
  `id` bigint(20) NOT NULL,
  `internshipdetails` varchar(240) DEFAULT NULL,
  `internshipduration` varchar(240) DEFAULT NULL,
  `internshipcertificate` varchar(100) DEFAULT NULL,
  `onlinetrainingdetails` varchar(240) DEFAULT NULL,
  `onlinetrainingduration` varchar(240) DEFAULT NULL,
  `onlinetrainingcertificate` varchar(100) DEFAULT NULL,
  `projecttitle` varchar(240) DEFAULT NULL,
  `projectduration` varchar(240) DEFAULT NULL,
  `projectdescription` longtext DEFAULT NULL,
  `projecturl` varchar(240) DEFAULT NULL,
  `skill1` varchar(240) DEFAULT NULL,
  `skill2` varchar(240) DEFAULT NULL,
  `skill3` varchar(240) DEFAULT NULL,
  `status` varchar(240) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `base_app_extracurricular`
--

INSERT INTO `base_app_extracurricular` (`id`, `internshipdetails`, `internshipduration`, `internshipcertificate`, `onlinetrainingdetails`, `onlinetrainingduration`, `onlinetrainingcertificate`, `projecttitle`, `projectduration`, `projectdescription`, `projecturl`, `skill1`, `skill2`, `skill3`, `status`, `user_id`) VALUES
(1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1),
(2, 'none', 'none', 'none', 'none', 'none', 'none', 'none', 'none', 'none', 'none', 'none', 'none', 'none', '', 2),
(4, 'none', 'none', 'none', 'none', 'none', 'none', 'none', 'none', 'none', 'none', 'none', 'none', 'none', '', 4),
(6, 'INTDetails111111111', '2month111111111', 'INTCertificate111111111111', 'Online TrainingDetails1111111', 'Duration11111111111', 'Certificate11111111111111111111', 'Project Details111111111', 'Project Details1111111111', 'Project Details111111111111', 'Project Details1111111111111', 'Skills1111111111111', 'Skills1111111111111', 'Skills1111111111111', '', 6),
(8, 'ghfh', 'fgdh', 'dfgh', 'dfg', 'dfg', 'rgre', 'dfg', 'dfghd', 'dfhe', 'fhgrh', 'fhgerh', 'erth', 'ertg', '', 8),
(9, 'xx', 'xx', 'xx', 'xx', 'xx', 'xx', 'xx', 'xx', 'xx', 'xx', 'xx', 'xx', 'xx', '', 9),
(10, 'Internship on Python', '6 months', '-', 'On python', '6 months', '-', 'Managezone', '3 months ', 'Creating a website for company', '-', 'Communication', 'Error solving', 'Programming', '', 10),
(12, 'python', '5', 'nil', 'nil', 'nil', 'nil', 'Homemade cake online site', '1 month', 'Develop an online homemade cake site', 'nil', 'Drawing', 'nil', 'nil', '', 12),
(13, 'Python full stack web development ', '6 months ', 'Nill', 'Python full stack web development ', '6 months ', 'Nill', 'College website ', '15 days', 'Old website had some bugs, lack of maintenance and sole features are not available so we decided to make one website with fully functional and well maintained to our college ', 'https://marosthatheoscollege.com/', 'Well innovative ', 'Quick learner', 'Well deceplined ', '', 13),
(14, 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', '', 14),
(15, 'Introduction to G suite', '2 weeks', 'coursera', 'introduction to cloud', '3 week', 'IBM', 'PATIENTQ-APP', '2 month', 'doctor consultation app', 'nil', 'drawing', 'gaming', 'travelling', '', 15),
(16, 'Python internship', '6 months', 'yes', 'Python internship', '6 months', 'yes', 'Food Wastage Management System', '3 months', ' It is food deilvery website.', 'http//sadasd', 'Python *****', 'CSS ****', 'HTML *****', '', 16),
(17, 'new', '3 month', 'new', 'new', '2', 'new', 'core', '3', 'core', 'core', 'skill1', 'skill2', 'skill3', '', 17),
(18, 'lakshmi infotech', '2month', 'nil', 'Rhce', '3 month', 'Rhcsa and Rhce', 'ADNS', '2 month', 'Accident detection and notification system', 'nil', 'C, C++, Java, Python', 'Html, CSS, bootstrap', 'django  ', '', 18),
(19, 'internship details', '1 ', 'certificate', 'jgrdt ', '12', 'certificate', 'new project', '1 week', 'hellooo', 'hellooo', 'skill1', 'skill1', 'skill1', '', 19),
(21, 'Nil', 'Nil', 'Nil', 'Quest Innovative Solutions Pvt Ltd', '3 months', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Leadership Qualitie', 'Hard Working', 'Willingness to learn and correct myself', '', 21),
(22, 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Team player ', 'Organized ', 'Quick learner ', '', 22),
(23, 'xxxxxxxxxxxx', '6', 'xxxxxx', 'nill', 'nill', 'nill', 'xxxxxx', '6', 'xxxxxx', 'xxxxxx', 'xxxxxx', 'xxxxxx', 'xxxxxx', '', 23),
(24, 'test1', 'test1', 'test1', 'test1', 'test1', 'test1', 'test1', 'test1', 'test1', 'test1', 'test1', 'test1', 'test1', '', 24),
(25, 'test2', 'test2', 'test2', 'test2', 'test2', 'test2', 'test2', 'test2', 'test2', 'test2', 'test2', 'test2', 'test2', '', 25),
(26, 'test...', '3', 'test...', 'test...', 'test...', 'test...', 'test...', 'test...', 'test...', 'test...', 'test...', 'test...', 'test...', '', 26),
(27, 'NIL', 'NIL', 'NIL', 'NIL', 'NIL', 'NIL', 'NIL', 'NIL', 'NIL', 'NIL', 'PYTHON', 'DJANGO', 'HTML, CSS , JAVASCRIPT', '', 27),
(28, 'nil', 'v', 'nil', 'nil', 'nil', 'nil', 'nil', 'v', 'nil', 'v', 'nil', 'nil', 'nil', '', 28),
(29, 'python full stack developer', '6 months', 'nill', 'nill', 'nill', 'nill', 'online job portal', 'nill', 'nill', 'nill', 'nill', 'nill', 'nill', '', 29),
(30, 'nill', 'nill', 'nill', 'nill', 'nill', 'nill', 'Novel Drunken Drive & Alcohol detection', 'nill', 'nill', 'nill', 'Programing', 'Data Analysis', 'Designing', '', 30),
(31, 'xxxxx', 'xxxxx', 'xxxxx', 'xxxxx', 'xxxxx', 'xxxxx', 'xxxxx', 'xxxxx', 'xxxxx', 'xxxxx', 'xxxxx', 'xxxxx', 'xxxxx', '', 31),
(33, 'projectmanager', 'projectmanager', 'projectmanager', 'projectmanager', 'projectmanager', 'projectmanager', 'projectmanager', 'projectmanager', 'projectmanager', 'projectmanager', 'projectmanager', 'projectmanager', 'projectmanager', '', 33),
(34, 'testnewre', 'testnewre', 'testnewre', 'testnewre', 'testnewre', 'testnewre', 'testnewre', 'testnewre', 'testnewre', 'testnewre', 'testnewre', 'testnewre', 'testnewre', '', 34),
(35, 'test111111', 'test111111', 'test111111', 'test111111', 'test111111', 'test111111', 'test111111', 'test111111', 'test111111', 'test111111', 'test111111', 'test111111', 'test111111', '', 35),
(36, 'new', '2', 'new', 'new', '2', 'new', 'new', '2', 'new', 'new', 'new', 'new', 'new', '', 36),
(37, 'new1', '2', 'new1', 'new1', '2', 'new1', 'new1', '2', 'new1', 'new1', 'new1', 'new1', 'new1', '', 37),
(38, 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '', 39),
(40, 'Python Developer', '6 Months', 'NO', 'Python Developer', '6 Months', 'NO', 'NO', 'NO', 'NO', 'https://github.com/6285anwar/6285anwar.git', 'App Developing', 'NO', 'NO', '', 41),
(41, 'an online credit course authorized by google cloud', '3 Weeks', 'Introduction to G Suite', 'an online credit course authorized by google cloud', '1 Month', 'IBM Watson', 'Doc App', '30 Miniutes', 'Unlimited consultations with specialist doctors for your entire family with DocsApp Gold', 'nil', 'Reading', 'Watching Movies', 'playing', '', 42),
(42, 'Getting Started with Al using IBM-watson', '3 weeks', 'Getting Started with Al using IBM-watson', 'Introduction to G Suite', '3 weeks', 'Introduction to G Suite', 'PATIENT-Q APP', '3weeks', 'Patient Q™ is an interactive queue management system that uses SMS messaging or voice messaging to communicate with patients / families while they wait.', 'NILL', 'Positive attitude', 'Leadership ', 'Fast learner', '', 43),
(43, 'aad', 'aad', 'aad', 'aad', 'aad', 'aad', 'aad', 'aad', 'aad', 'aad', 'aad', 'aad', 'aad', '', 44),
(44, 'E-commerce', '6 months', 'yes', 'networking', '3 months', 'yes', 'E-commerce with AIDC', '6 months', 'a customer friendly e-commerce website which is more useful for people in the remote area', 'nil', 'front end:python,django,html,css,', 'backend:mysql', 'os: windows', '', 45);

-- --------------------------------------------------------

--
-- Table structure for table `base_app_internship`
--

CREATE TABLE `base_app_internship` (
  `id` bigint(20) NOT NULL,
  `reg_date` date DEFAULT NULL,
  `fullname` varchar(200) NOT NULL,
  `collegename` varchar(200) NOT NULL,
  `reg_no` varchar(200) NOT NULL,
  `course` varchar(200) NOT NULL,
  `stream` varchar(200) NOT NULL,
  `platform` varchar(200) NOT NULL,
  `start_date` varchar(200) NOT NULL,
  `end_date` varchar(200) NOT NULL,
  `mobile` varchar(200) NOT NULL,
  `alternative_no` varchar(200) NOT NULL,
  `email` varchar(254) NOT NULL,
  `profile_pic` varchar(100) DEFAULT NULL,
  `attach_file` varchar(100) DEFAULT NULL,
  `rating` varchar(200) NOT NULL,
  `hrmanager` varchar(200) NOT NULL,
  `guide` varchar(200) NOT NULL,
  `qr` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `branch_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `base_app_internship`
--

INSERT INTO `base_app_internship` (`id`, `reg_date`, `fullname`, `collegename`, `reg_no`, `course`, `stream`, `platform`, `start_date`, `end_date`, `mobile`, `alternative_no`, `email`, `profile_pic`, `attach_file`, `rating`, `hrmanager`, `guide`, `qr`, `status`, `branch_id`) VALUES
(1, '2022-03-15', 'intern1', 'intern college', 'INT001', 'B.TECH', 'INTStream', 'INTPF', '03/16/2022', '03/19/2022', '244466666', '244466666', 'intern1@gmail.com', 'images/face27_HalR6pq.jpg', 'images/face27_UDXnxvy.jpg', '', '', '', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media\\1.png', '', 1),
(2, '2022-03-15', 'Intern2', 'intern2 college', 'INT002', 'B.COM', 'INTStream', 'INTPF', '03/20/2022', '03/26/2022', '123123123', '321321321', 'Intern2@gmail.com', 'images/face26.jpg', 'images/face26_6LtQNxC.jpg', '', '', '', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media\\2.png', '', 1),
(3, '2022-03-16', 'AKHIL RAJ M R', 'testing..', 'testing..', 'B.TECH', 'testing..', 'testing..', '2022-03-17', '2022-03-31', '123456789', '123456789', 'testing@gmail.com', 'images/JR8ilHf_CSJFei2.jpg', 'images/JR8ilHf_NOb1tIj.jpg', 'Good', 'Anand Sekhar', '', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media\\3.png', '', 1),
(4, '2022-03-19', 'amal cs', 'amal cs', 'amal cs13', 'MCA', 'amal cs', 'amal cs', '2022-03-20', '2022-03-31', '123456789', '123456798', 'dsfgsdfg', 'images/face5_cI3YfIr.jpg', 'images/face8.jpg', '', '', '', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media\\4.png', '', 1),
(5, '2022-03-19', 'amal css', 'amal css', 'amal css213', 'MCA', 'amal css', 'amal css', '2022-03-20', '2022-03-31', '3132123', '12312', 'amal@gmail.com', 'images/face5_5CkZfjc.jpg', 'images/face5_k0hfqJO.jpg', '', '', '', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media\\5.png', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `base_app_leave`
--

CREATE TABLE `base_app_leave` (
  `id` bigint(20) NOT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `reason` longtext NOT NULL,
  `leave_status` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `designation_id` varchar(200) NOT NULL,
  `leaveapprovedstatus` varchar(200) NOT NULL,
  `leave_rejected_reason` varchar(300) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `base_app_leave`
--

INSERT INTO `base_app_leave` (`id`, `from_date`, `to_date`, `reason`, `leave_status`, `status`, `designation_id`, `leaveapprovedstatus`, `leave_rejected_reason`, `user_id`) VALUES
(1, '2022-03-24', '2022-03-24', 'Chumma oru resam', 'half Day', '', '9', '0', '', 16),
(2, '2022-03-17', '2060-12-31', 'Njan ponn... ???????', 'full Day', '', '9', '0', '', 10),
(3, '2022-03-16', '2100-07-14', 'searching for reason', 'full Day', '', '9', '2', 'test', NULL),
(4, '2022-03-18', '2022-03-18', 'aaaaaaaaaaaaaa', 'half Day', '', '8', '0', '', 20),
(5, '2022-03-18', '2022-03-18', 'test', 'full Day', '', '8', '0', '', 20),
(6, '2022-03-18', '2022-03-30', 'testing\r\n', 'full Day', '', '8', '1', '', 20),
(7, '2022-03-18', '2022-03-18', 'test', 'half Day', '', '9', '0', '', 31),
(8, '2022-03-18', '2022-03-31', 'test', 'full Day', '', '9', '0', '', 31),
(9, '2022-03-19', '2022-03-19', 'some program', 'half Day', 'pending', '', '', '', 26),
(10, '2022-03-19', '2022-03-19', 'dsfgdsf', 'Half Day', 'submitted', '', '', '', 9),
(11, '2022-03-22', '2022-03-29', 'test', 'full Day', '', '7', '0', '', 23),
(12, '2022-03-21', '2022-03-22', 'personal issue.', 'full Day', '', '9', '0', '', 31),
(13, '2022-03-21', '2022-03-21', 'hospital issue.', 'full Day', '', '9', '0', '', 31),
(14, '2022-03-21', '2022-03-22', 'feverrr', 'full Day', '', '8', '0', '', 20),
(15, '2022-03-23', '2022-03-23', 'personal', 'half Day', '', '8', '0', '', 20),
(16, '2022-03-24', '2022-03-30', 'health issue', 'full Day', '', '8', '0', '', 20),
(17, '2022-03-21', '2022-03-21', 'outting', 'full Day', '', '8', '0', '', 20),
(18, '2022-03-29', '2022-03-29', 'personal\r\n', 'full Day', '', '8', '0', '', 20),
(19, '2022-03-31', '2022-03-31', 'baackpain', 'half Day', '', '8', '0', '', 20),
(20, '2022-04-01', '2022-04-28', 'family trip', 'full Day', '', '8', '0', '', 20),
(21, '2022-03-23', '2022-03-23', 'no electricity ', 'half Day', '', '8', '0', '', 20),
(22, '2022-04-01', '2022-04-04', 'outtinggggg', 'full Day', '', '8', '0', '', 20),
(23, '2022-04-01', '2022-04-07', 'sick leave', 'full Day', '', '8', '0', '', 20),
(24, '2022-03-30', '2022-03-31', 'personal leave', 'full Day', '', '8', '0', '', 20),
(25, '2022-04-08', '2022-04-08', 'personal', 'full Day', '', '8', '0', '', 20),
(26, '2022-04-10', '2022-04-10', 'net issue', 'full Day', '', '8', '1', '', 20),
(27, '2022-03-26', '2022-03-29', 'marriage', 'full Day', '', '9', '0', '', 31),
(28, '2022-03-29', '2022-03-29', 'personal issue.', 'half Day', '', '9', '0', '', 31),
(29, '2022-03-30', '2022-03-30', 'hospital case', 'full Day', '', '9', '0', '', 31),
(30, '2022-03-22', '2022-03-23', 'ghgfh', 'Full Day', 'submitted', '', '', '', 9),
(31, '2022-03-22', '2022-03-22', 'vnmfhg', 'Half Day', 'submitted', '', '', '', 9),
(32, '2022-03-21', '2022-03-21', 'gfg', 'Half Day', 'submitted', '', '', '', 9),
(33, '2022-03-21', '2022-03-21', 'gfg', 'Half Day', 'submitted', '', '', '', 9),
(34, '2022-03-21', '2022-03-21', 'gfg', 'Half Day', 'submitted', '', '', '', 9),
(35, '2022-03-22', '2022-03-22', 'cv', 'full Day', 'pending', '', '', '', 33),
(36, '2022-03-22', '2022-03-24', 'xf', 'full Day', 'pending', '', '', '', 33),
(37, '2022-03-23', '2022-03-24', 'cvn', 'full Day', 'pending', '', '', '', 33),
(38, '2022-03-22', '2022-03-23', 'h', 'full Day', '', '9', '0', '', 43),
(39, '2022-03-22', '2022-03-22', 'no', 'half Day', 'pending', '', '', '', 26),
(40, '2022-03-22', '2022-03-26', 'asd', 'full Day', 'pending', '', '', '', 26),
(41, '2022-03-22', '2022-03-22', 'sf', 'Half Day', 'submitted', '', '', '', 18),
(42, '2022-03-22', '2022-03-27', 'sfffsdfs', 'Full Day', 'submitted', '', '', '', 18),
(43, '2022-03-22', '2022-03-22', 'sf', 'Half Day', 'submitted', '', '', '', 12),
(44, '2022-03-23', '2022-03-23', 'i', 'full Day', 'pending', '', '', '', 12),
(45, '2022-03-28', '2022-04-03', 'jjyjyj', 'full Day', 'pending', '', '', '', 12);

-- --------------------------------------------------------

--
-- Table structure for table `base_app_paymentlist`
--

CREATE TABLE `base_app_paymentlist` (
  `id` bigint(20) NOT NULL,
  `amount_pay` int(11) NOT NULL,
  `amount_date` date DEFAULT NULL,
  `current_date` date DEFAULT NULL,
  `amount_status` varchar(200) DEFAULT NULL,
  `amount_downlod` varchar(100) DEFAULT NULL,
  `balance_amt` int(11) NOT NULL,
  `course_id` bigint(20) DEFAULT NULL,
  `user_id_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `base_app_paymentlist`
--

INSERT INTO `base_app_paymentlist` (`id`, `amount_pay`, `amount_date`, `current_date`, `amount_status`, `amount_downlod`, `balance_amt`, `course_id`, `user_id_id`) VALUES
(1, 1000, '2022-03-17', '2022-03-18', '0', 'images/Screenshot_1_aw6uR3p.png', 0, NULL, 31),
(2, 10000, '2022-03-08', '2022-03-21', '0', 'images/backgound.png', 0, NULL, 31),
(3, 5000, '2022-03-10', '2022-03-21', '0', 'images/backgound2.png', 0, NULL, 31),
(4, 5000, '2022-03-12', '2022-03-21', '0', 'images/ecommerce.png', 0, NULL, 31),
(5, 5000, '2022-03-13', '2022-03-21', '0', 'images/phone1.png', 0, NULL, 31),
(6, 5000, '2022-03-16', '2022-03-21', '0', 'images/tv1.png', 0, NULL, 31),
(7, 2000, '2022-03-15', '2022-03-21', '0', 'images/phon2_UP0dTkP.png', 0, NULL, 31),
(8, 5000, '2022-03-18', '2022-03-21', '0', 'images/phone1_2DbrI07.png', 0, NULL, 31),
(9, 5000, '2022-03-18', '2022-03-21', '0', 'images/phone1_CjhSqq4.png', 0, NULL, 31),
(10, 1000, '2022-03-16', '2022-03-21', '0', 'images/Screenshot_7_Hs0sQe6.png', 0, NULL, 31);

-- --------------------------------------------------------

--
-- Table structure for table `base_app_project`
--

CREATE TABLE `base_app_project` (
  `id` bigint(20) NOT NULL,
  `project` varchar(100) DEFAULT NULL,
  `rejectdate` date DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `files` varchar(100) DEFAULT NULL,
  `progress` varchar(100) NOT NULL,
  `user_reason` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `department_id` bigint(20) DEFAULT NULL,
  `designation_id` bigint(20) DEFAULT NULL,
  `projectmanager_id` bigint(20) DEFAULT NULL,
  `tester_id` bigint(20) DEFAULT NULL,
  `branch_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `base_app_project`
--

INSERT INTO `base_app_project` (`id`, `project`, `rejectdate`, `description`, `startdate`, `enddate`, `files`, `progress`, `user_reason`, `status`, `department_id`, `designation_id`, `projectmanager_id`, `tester_id`, `branch_id`) VALUES
(1, 'New Core', NULL, 'Core Project', '2022-01-28', '2022-03-31', 'JR8ilHf.jpg', '100', NULL, 'completed', 2, NULL, 26, NULL, NULL),
(2, 'new project 1', NULL, 'New Project 1 Description', '2022-04-01', '2022-04-30', 'face1.jpg', '', NULL, 'assigned', 2, NULL, 33, NULL, NULL),
(3, 'new project 2', NULL, 'New Project 2 description', '2022-05-01', '2022-05-31', 'face2.jpg', '', ' Already exists!!!', 'assigned', 2, NULL, 33, NULL, NULL),
(4, 'new project 3', NULL, 'New Project 3 description', '2022-06-01', '2022-06-30', 'images/face2_3.jpg', '100', NULL, 'completed', 2, 4, 33, NULL, NULL),
(5, 'new project 4', NULL, 'New Project 3 description', '2022-06-01', '2022-06-30', 'images/face2_3.jpg', '70', NULL, 'accepted', 2, 4, 33, NULL, 1),
(6, 'project5', NULL, 'new project', '2022-03-25', '2022-03-30', 'images/face1.jpg', '100', NULL, 'completed', 2, 2, NULL, NULL, NULL),
(7, 'dimension', NULL, 'Dimension descriptions', '2022-03-22', '2022-03-31', 'face1.jpg', '', NULL, 'completed', 2, NULL, 26, NULL, NULL),
(8, 'repro', NULL, 'des', '2022-03-23', '2022-04-07', 'face1.jpg', '', ' ccccccccccccccccccccccccccxxxxxxxxxxxxxxxxxxxxxxzzzzzzzzzzzzzzzzzzzzzzzzzzz', 'rejected', 2, NULL, 26, NULL, NULL),
(9, 'rerepro', '2022-03-23', 'des', '2022-03-23', '2022-03-24', 'face1.jpg', '', ' qqqqqqqqqq', 'rejected', 2, NULL, 26, NULL, NULL),
(10, 'new pro', NULL, 'deeeeeee', '2022-03-23', '2022-03-23', 'face1.jpg', '', NULL, 'assigned', 2, NULL, 26, NULL, NULL),
(11, 'test1234', NULL, 'test des', '2022-03-23', '2022-04-07', 'face1.jpg', '', NULL, NULL, 2, NULL, 26, NULL, NULL),
(12, 'new test 123', NULL, 'des', '2022-03-31', '2022-03-31', 'face27.jpg', '', NULL, NULL, 2, NULL, 26, NULL, NULL),
(13, 'yyyyy', NULL, 'des', '2022-03-25', '2022-03-31', '', '', NULL, NULL, 2, NULL, 26, NULL, NULL),
(14, 'RRR', NULL, 'DESSSS', '2022-03-23', '2022-03-31', 'images/face23.jpg', '', NULL, 'assigned', 2, NULL, 26, NULL, NULL),
(15, 'codex', NULL, 'codex des', '2022-03-28', '2022-03-31', 'images/face1_8m9tYzt.jpg', '', NULL, 'completed', 2, NULL, 26, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `base_app_project_taskassign`
--

CREATE TABLE `base_app_project_taskassign` (
  `id` bigint(20) NOT NULL,
  `description` longtext NOT NULL,
  `task` varchar(200) DEFAULT NULL,
  `subtask` varchar(200) DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `files` varchar(100) DEFAULT NULL,
  `extension` int(11) DEFAULT NULL,
  `reason` longtext DEFAULT NULL,
  `extension_status` varchar(200) DEFAULT NULL,
  `extension_date` date DEFAULT NULL,
  `tl_description` varchar(200) DEFAULT NULL,
  `submitted_date` date DEFAULT NULL,
  `employee_files` varchar(100) DEFAULT NULL,
  `employee_description` longtext DEFAULT NULL,
  `designation` varchar(200) DEFAULT NULL,
  `department` varchar(200) DEFAULT NULL,
  `progress` int(11) DEFAULT NULL,
  `projectstatus` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `developer_id` bigint(20) DEFAULT NULL,
  `project_id` bigint(20) DEFAULT NULL,
  `tester_id` bigint(20) DEFAULT NULL,
  `tl_id` bigint(20) DEFAULT NULL,
  `delay` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `base_app_project_taskassign`
--

INSERT INTO `base_app_project_taskassign` (`id`, `description`, `task`, `subtask`, `startdate`, `enddate`, `files`, `extension`, `reason`, `extension_status`, `extension_date`, `tl_description`, `submitted_date`, `employee_files`, `employee_description`, `designation`, `department`, `progress`, `projectstatus`, `status`, `developer_id`, `project_id`, `tester_id`, `tl_id`, `delay`) VALUES
(3, 'Christin', 'christin', NULL, '2022-03-16', '2022-03-16', 'images/Screenshot_1_EMxRRYm.png', 0, NULL, NULL, NULL, NULL, '2022-03-29', 'images/Screenshot_482.png', 'test', NULL, NULL, 0, 'In progress', 'submitted', NULL, 1, NULL, 18, '13'),
(4, 'Core Project', 'christin', 'christin subtask', '2022-03-16', '2022-04-10', 'images/face25.jpg', 13, NULL, 'submitted', '2022-03-23', 'christin subtask des', NULL, '', NULL, NULL, NULL, 14, 'In progress', NULL, 12, 1, 24, 18, ''),
(5, 'New Project Task 1 Chris Description', 'new project task 1 chris', NULL, '2022-03-17', '2022-03-31', 'images/face5_n8DADxF.jpg', 5, NULL, 'submitted', '2022-03-19', NULL, NULL, '', NULL, NULL, NULL, 50, 'In progress', NULL, NULL, 2, NULL, 9, ''),
(6, 'New Project 1 Description', 'new project task 1 chris', 'new project task 1 subtask 1 leya', '2022-03-17', '2022-03-24', 'images/face4_gyw1HpG.jpg', 0, NULL, NULL, NULL, 'new project task 1 subtask 1 leya description', '2022-03-19', 'images/icons8-c-480_0WnDeOS.png', 'jbnm', NULL, NULL, 0, 'In progress', 'submitted', 12, 2, 24, 18, ''),
(7, 'New Project 1 Description', 'new project task 1 chris', 'new project task 1 subtask 1 shajeer', '2022-03-17', '2022-03-24', 'images/face4_YsFENal.jpg', 0, NULL, NULL, NULL, 'new project task 1 subtask 1 shajeer', NULL, '', NULL, NULL, NULL, 0, 'In progress', NULL, 13, 2, 24, 18, ''),
(8, 'New Project 1 Description', 'new project task 1 chris', 'new project task 1 subtask 1 emil', '2022-03-17', '2022-03-24', 'images/face4_4SnFKAB.jpg', 0, NULL, NULL, NULL, 'new project task 1 subtask 1 emil description', NULL, '', NULL, NULL, NULL, 0, 'In progress', NULL, 14, 2, 24, 18, ''),
(9, 'New Project 1457', 'new project task 1 new', 'new project task 1 subtask new', '2022-03-17', '2022-03-24', 'images/face4_4SnFKAB.jpg', 0, NULL, NULL, NULL, 'new project task 1 subtask 1 emil description', '2022-03-29', 'images/Screenshot_482_VKKqq6O.png', 'qqqqqqqqqqqqqqqqqqqqqqqq', NULL, NULL, 80, '', 'submitted', 14, 5, NULL, 18, '5'),
(10, 'New Project 1 Description', 'new project task 1 chris', 'sdfsadf', '2022-03-19', '2022-03-23', 'images/face5_9kTIvi9.jpg', 0, NULL, NULL, NULL, 'sdfsadf', NULL, '', NULL, NULL, NULL, 65, 'in progress', NULL, 21, 2, 24, 9, ''),
(11, 'New Project 1 Description', 'new project task 1 chris', 'reyrty', '2022-03-19', '2022-03-31', 'images/icons8-c-480_Smt6JYc.png', 0, NULL, NULL, NULL, 'retyrety', NULL, '', NULL, NULL, NULL, 0, 'In progress', NULL, 27, 2, 24, 9, ''),
(12, 'New Project 1 Description', 'new project task 1 chris', 'dfgdfg', '2022-03-19', '2022-04-02', 'images/face5_pEWCDPa.jpg', 0, NULL, NULL, NULL, 'dfgsdfg', NULL, '', NULL, NULL, NULL, 0, 'In progress', NULL, 29, 2, 24, 9, ''),
(13, 'New Project 1 Description', 'new project task 1 chris', 'sub task', '2022-03-19', '2022-03-22', 'images/icons8-c-480_QfJjJVn.png', 0, NULL, NULL, NULL, 'sub task', NULL, '', NULL, NULL, NULL, 90, 'In progress', NULL, 13, 2, 24, 9, ''),
(14, 'test', 'test', NULL, '2022-03-19', '2022-03-26', 'images/Screenshot_1_AKULwMy.png', 0, NULL, NULL, NULL, NULL, '2022-03-22', 'images/IMG_20220217_132029_1.jpg', 'h', NULL, NULL, 0, 'In progress', 'submitted', NULL, 3, NULL, 9, ''),
(15, 'New Project 2 description', 'test', 'gjkh', '2022-03-19', '2022-03-23', 'images/icons8-java-150_-_Copy.png', 0, NULL, NULL, NULL, 'khjn', NULL, '', NULL, NULL, NULL, 0, 'In progress', NULL, 13, 3, 24, 9, ''),
(16, 'project5 task', NULL, NULL, '2022-03-25', '2022-03-30', '', 0, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, 0, 'In progress', NULL, NULL, 6, NULL, NULL, ''),
(17, 'Dimension Chris Task description', 'Dimension chris task', NULL, '2022-03-22', '2022-03-31', 'images/face2_mZkS7FT.jpg', 5, NULL, 'submitted', '2022-03-22', NULL, '2022-03-22', 'images/face6_gwrsbwt.jpg', 'dfg', NULL, NULL, 50, 'In progress', 'submitted', 18, 7, 44, 18, ''),
(18, 'Dimension descriptions', 'Dimension chris task', 'Dimension Chris Task  leya subtask', '2022-03-22', '2022-03-31', 'images/face3.jpg', 0, NULL, NULL, NULL, 'Dimension Chris Task  leya subtask description', NULL, '', NULL, NULL, NULL, 22, 'Completed', NULL, 12, 7, 44, 18, ''),
(19, 'Dimension descriptions', 'Dimension chris task', 'Dimension Chris Task  emil subtask', '2022-03-22', '2022-03-31', 'images/face4_o0Ul0PJ.jpg', 0, NULL, NULL, NULL, 'Dimension Chris Task  emil subtask description', NULL, '', NULL, NULL, NULL, 5, 'In progress', NULL, 14, 7, 44, 18, ''),
(20, 'Dimension descriptions', 'Dimension chris task', 'Dimension Chris Task  leya subtask 2', '2022-03-22', '2022-03-30', 'images/face5_1wHa1Ag.jpg', 2, 'reason', 'Rejected', '2022-03-23', 'Dimension Chris Task  leya subtask 2 description', '2022-03-22', 'images/face7_6PjCNzr.jpg', 'qwqeqweqwqwe', NULL, NULL, 10, 'In progress', 'submitted', 12, 7, 44, 18, ''),
(21, 'des', 'new task', NULL, '2022-03-24', '2022-03-24', 'images/face1_SKGxav6.jpg', 0, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, 0, 'In progress', NULL, NULL, 7, NULL, 18, ''),
(22, 'asdasd', 'dsad', NULL, '2022-03-23', '2022-03-24', 'images/face1_AIQ4gtO.jpg', 0, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, 0, 'In progress', NULL, NULL, 10, NULL, 18, ''),
(23, 'DES', 'TASK RRR', NULL, '2022-03-23', '2022-03-24', 'images/face26_BKVrdCT.jpg', 0, NULL, NULL, NULL, NULL, '2022-03-30', 'images/Screenshot_485_HOxil44.png', 'iiiiiiii', NULL, NULL, 0, 'In progress', 'submitted', 14, 14, NULL, 18, '6'),
(24, 'Chris Task Rrr des', 'chris task rrr', NULL, '2022-03-28', '2022-03-31', 'images/face1_GQvP6rN.jpg', 0, NULL, NULL, NULL, NULL, '2022-03-30', 'images/Screenshot_485.png', 'newwwwwwwwww', NULL, NULL, 0, 'In progress', 'submitted', 18, 14, NULL, 18, '0'),
(25, 'Rrr Deschris', 'rrr deschris', NULL, '2022-03-28', '2022-03-31', 'images/face1_k9nCD15.jpg', 0, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, 75, 'In progress', NULL, 18, 14, 44, 18, ''),
(27, 'Codex Task Chris des', 'codex task chris', NULL, '2022-03-28', '2022-03-31', 'images/face1_V3FZPv9.jpg', 0, NULL, NULL, NULL, NULL, '2022-03-29', 'images/Screenshot_482_YxoUkFY.png', '4545', NULL, NULL, 75, 'Completed', 'submitted', 18, 15, 44, 18, '0'),
(28, 'Codex Task1  des', 'codex task1 ', NULL, '2022-03-28', '2022-03-29', 'images/face1_jvJ8SjM.jpg', 0, NULL, NULL, NULL, NULL, '2022-03-31', '', NULL, NULL, NULL, 0, 'In progress', NULL, 9, 15, 44, 9, ''),
(29, 'codex des', 'codex task chris', 'codex subtask emil', '2022-03-28', '2022-03-30', 'images/face2_Kx8c2NL.jpg', 15, 'mmm', 'submitted', '2022-03-28', 'codex subtask emil des', '2022-03-29', 'images/Screenshot_482_mtWvHa0.png', 'qweqwe', NULL, NULL, 98, 'Completed', 'submitted', 14, 15, 44, 18, '0'),
(30, 'codex des', 'codex task chris', 'as sub', '2022-03-28', '2022-03-30', 'images/face1_JYCnjfE.jpg', 0, NULL, NULL, NULL, 'as sub des', NULL, '', NULL, NULL, NULL, 0, 'In progress', NULL, 16, 15, 44, 18, ''),
(31, 'Test', 'test', NULL, '2022-03-29', '2022-04-09', 'images/Screenshot_482_nL1n8QZ.png', 0, NULL, NULL, NULL, NULL, '2022-03-29', 'images/Screenshot_482_5hZeXtf.png', 'teat', NULL, NULL, 0, 'In progress', 'submitted', 18, 15, 44, 18, '-11'),
(32, 'Newtest', 'newtest', NULL, '2022-03-29', '2022-04-03', 'images/Screenshot_482_202ohEr.png', 0, NULL, NULL, NULL, NULL, '2022-03-29', 'images/Screenshot_482_arw0fIO.png', 'asdasd', NULL, NULL, 0, 'In progress', 'submitted', 18, 15, 44, 18, '0'),
(33, 'Newtest', 'newtest', NULL, '2022-03-29', '2022-04-03', 'images/Screenshot_482_pIKDLTk.png', 0, NULL, NULL, NULL, NULL, '2022-03-29', 'images/Screenshot_482_ZQjg95B.png', 'qqqqq', NULL, NULL, 0, 'In progress', 'submitted', 18, 15, 44, 18, '0'),
(34, 'ddfvfvsf', 'khjhbj', NULL, '2022-03-29', '2022-03-29', 'images/Screenshot_482_Mh87ee0.png', 0, NULL, NULL, NULL, NULL, '2022-03-29', 'images/Screenshot_482_UTaXPnI.png', 'gug', NULL, NULL, 0, 'In progress', 'submitted', 18, 15, 44, 18, '0');

-- --------------------------------------------------------

--
-- Table structure for table `base_app_promissory`
--

CREATE TABLE `base_app_promissory` (
  `id` bigint(20) NOT NULL,
  `inital_amount` varchar(1000) DEFAULT NULL,
  `inital_paid_on` date DEFAULT NULL,
  `inital_paid_amount` varchar(1000) DEFAULT NULL,
  `inital_paid_date` date DEFAULT NULL,
  `inital_balance_amount` varchar(1000) DEFAULT NULL,
  `inital_due_date` date DEFAULT NULL,
  `inital_total_payment` varchar(1000) DEFAULT NULL,
  `second_amount` varchar(1000) DEFAULT NULL,
  `second_due_on` date DEFAULT NULL,
  `second_paid_amount` varchar(1000) DEFAULT NULL,
  `second_paid_date` date DEFAULT NULL,
  `second_balance_amount` varchar(1000) DEFAULT NULL,
  `second_due_date` date DEFAULT NULL,
  `second_total_payment` varchar(1000) DEFAULT NULL,
  `final_amount` varchar(1000) DEFAULT NULL,
  `final_due_on` date DEFAULT NULL,
  `final_paid_amount` varchar(1000) DEFAULT NULL,
  `final_paid_date` date DEFAULT NULL,
  `final_balance_amount` varchar(1000) DEFAULT NULL,
  `final_due_date` date DEFAULT NULL,
  `final_total_payment` varchar(1000) DEFAULT NULL,
  `user_id_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_app_promissory`
--

INSERT INTO `base_app_promissory` (`id`, `inital_amount`, `inital_paid_on`, `inital_paid_amount`, `inital_paid_date`, `inital_balance_amount`, `inital_due_date`, `inital_total_payment`, `second_amount`, `second_due_on`, `second_paid_amount`, `second_paid_date`, `second_balance_amount`, `second_due_date`, `second_total_payment`, `final_amount`, `final_due_on`, `final_paid_amount`, `final_paid_date`, `final_balance_amount`, `final_due_date`, `final_total_payment`, `user_id_id`) VALUES
(3, '10000', '2022-04-06', '10000', '2022-04-06', '10000', '2022-04-06', '10000', '10000', '2022-04-06', '10000', '2022-04-08', '10000', '2022-04-07', '10000', '10000', '2022-04-06', '10000', '2022-04-06', '10000', '2022-04-07', '10000', 21);

-- --------------------------------------------------------

--
-- Table structure for table `base_app_qualification`
--

CREATE TABLE `base_app_qualification` (
  `id` bigint(20) NOT NULL,
  `plustwo` varchar(240) DEFAULT NULL,
  `schoolaggregate` varchar(240) DEFAULT NULL,
  `schoolcertificate` varchar(100) DEFAULT NULL,
  `ugdegree` varchar(240) DEFAULT NULL,
  `ugstream` varchar(240) DEFAULT NULL,
  `ugpassoutyr` varchar(240) DEFAULT NULL,
  `ugaggregrate` varchar(240) DEFAULT NULL,
  `backlogs` varchar(240) DEFAULT NULL,
  `ugcertificate` varchar(100) DEFAULT NULL,
  `pg` varchar(240) DEFAULT NULL,
  `status` varchar(100) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `base_app_qualification`
--

INSERT INTO `base_app_qualification` (`id`, `plustwo`, `schoolaggregate`, `schoolcertificate`, `ugdegree`, `ugstream`, `ugpassoutyr`, `ugaggregrate`, `backlogs`, `ugcertificate`, `pg`, `status`, `user_id`) VALUES
(1, 'hse', 'Admin school1', 'images/Ellipse1.png', 'Admin ', 'Admin ', '2019', 'Admin ', 'no', 'images/Screenshot_442_41KIRSE.png', 'Admin ', '', 1),
(2, 'central', '8.9', 'images/face2_XvMFbRR.jpg', 'btech', 'cs', '2020', '7.89', 'yes', 'images/face2_CgQjaro.jpg', 'none', '', 2),
(4, 'vhse', 'none', 'images/face1_33f05Qo.jpg', 'none', 'none', '0', 'none', 'yes', 'images/face1_1JyXOa7.jpg', 'none', '', 4),
(6, 'vhse', '10', 'images/db.PNG', 'mtech', 'csmech', '202011', '7.999', 'no', 'images/db_L0Uht0S.PNG', 'none11111111', '', 6),
(8, 'vhse', '69%', 'images/IMG20220110224009_M9aCClG.jpg', 'computer engineering', 'xcvb', '2021', '70.21', 'no', 'images/ww_1Y8eMmA.jpg', 'no', '', 8),
(9, 'hse', 'xx', 'images/Screenshot_1_wS822RI.png', 'xx', 'xx', '66', '77', 'no', 'images/Screenshot_1_3WG6Fxn.png', 'xx', '', 9),
(10, 'hse', '80', 'images/Screenshot_837.png', 'B. Sc', 'Computer Science ', '2020', '60', 'yes', 'images/Screenshot_837_QJZAifm.png', '-', '', 10),
(12, 'hse', '83%', 'images/82333', 'Btech', 'Computer Science ', '2020', '70%', 'no', 'images/98453', 'nil', '', 12),
(13, 'state', '67.92%', 'images/IMG20220316145742.jpg', 'Batchelor\'s', 'BCA', '2021', '53.29', 'no', 'images/IMG20220316151457.jpg', 'Nill', '', 13),
(14, 'state', 'Null', 'images/2021_08_27_3_50_pm_Office_Lens_2.jpg', 'BCA', 'Computer Application', '2020', 'Null', 'no', 'images/2021_10_22_12_16_pm_Office_Lens_1.jpg', 'Null', '', 14),
(15, 'vhse', '76%', 'images/20210824_113452.jpg', 'Diploma in engineering', 'Computer engineering', '2021', '7.35 CGPA', 'no', 'images/20210824_113452_pk4c1hC.jpg', 'nil', '', 15),
(16, 'state', '60%', 'images/Anandhu-Work_Done_Screenshot.pdf', 'BCA', 'Computer Applications', '2019', '60%', 'no', 'images/Anandhu-Work_Done_Screenshot_AUCUu8F.pdf', 'MCA', '', 16),
(17, 'hse', 'school', 'images/Screenshot_706.png', 'degree', 'degree', '2020', 'degree', 'no', 'images/Screenshot_707.png', 'pg', '', 17),
(18, 'central', '8.4', 'images/db_i2mf8HI.PNG', 'Btech', 'cs', '2020', '10', 'no', 'images/db_8gr3BRv.PNG', 'nil', '', 18),
(19, 'hse', '99', 'images/face2_es212Zc.jpg', 'shornur', 'vnv', '2021', '99', 'no', 'images/face2_Zf6ZEeX.jpg', 'dyjhg', '', 19),
(21, 'state', '70%', 'images/12th_certificate.pdf', 'B.Tech', 'Computer Science', '2021', '78%', 'no', 'images/MZW17CS001_WedSep15_Provisional_Certificate_102520.pdf', 'Nil', '', 21),
(22, 'central', '62.4', 'images/2.pdf', 'B. Tech ', 'Computer Science ', '2021', 'Pending', 'yes', 'images/S7_S8.pdf', 'Nil', '', 22),
(23, 'vhse', '78', 'images/Screenshot_9.png', 'BCA', 'IT', '2021', '80', 'no', 'images/Screenshot_7.png', 'nill', '', 23),
(24, 'vhse', 'test1', 'images/face1_WTbg2WR.jpg', 'test1', 'test1test1', '1322', 'test1', 'yes', 'images/face1_mKyUed5.jpg', 'test1', '', 24),
(25, 'vhse', 'test2', 'images/face1_W07c8qa.jpg', 'test2', 'test2', '12131', 'test2', 'yes', 'images/face1_bcS1jaT.jpg', 'test2', '', 25),
(26, 'state', 'test...', 'images/JR8ilHf_pttV6Mo.jpg', 'test...', 'test...', '2022', 'test...', 'no', 'images/JR8ilHf_0lCVFid.jpg', 'test...', '', 26),
(27, 'state', '83.2', 'images/2_marksheet.pdf', 'B.Tech', 'CSE', '2021', '6.72', 'yes', 'images/full_semester-gradecard.pdf', 'NIL', '', 27),
(28, 'vhse', 'aa', 'images/Screenshot_1_ZnjjUNM.png', 'aa', 'aa', '11', 'aa', 'yes', 'images/Screenshot_1_ulXAte7.png', 'aa', '', 28),
(29, 'state', '86%', 'images/IMG_20201216_172354_1.jpg', 'Bsc', 'Computer Science', '2020', '65.70%', 'no', 'images/IMG_20220316_155202.jpg', 'nill', '', 29),
(30, 'vhse', '78', 'images/IMG_20220316_165433.jpg', 'BCA', 'Computer Application', '2021', '78', 'no', 'images/IMG_20220316_165433_WUdsxXy.jpg', 'nill', '', 30),
(31, 'central', 'xxxxx', 'images/lesly-juarez-RukI4qZGlQs-unsplash_ppmeQ9k.jpg', 'xxxxx', 'xxxxx', '2000', 'xxxxx', 'no', 'images/lesly-juarez-RukI4qZGlQs-unsplash_j1Y4aUc.jpg', 'xxxxx', '', 31),
(33, 'vhse', 'projectmanager', 'images/Screenshot_458.png', 'projectmanager', 'projectmanager', '123', 'projectmanager', 'yes', 'images/Screenshot_458_pMeC4wA.png', 'projectmanager', '', 33),
(34, 'vhse', 'testnewre', 'images/face1_8t6h37Q.jpg', 'testnewre', 'testnewre', '13212', 'testnewre', 'yes', 'images/face1_gV40akY.jpg', 'testnewre', '', 34),
(35, 'state', 'test111111', 'images/face1_5Ihej12.jpg', 'test111111', 'test111111', '111111', 'test111111', 'yes', 'images/face1_7BIl7TF.jpg', 'test111111', '', 35),
(36, 'hse', 'new', 'images/386infox_n67ymaF.png', 'new', 'new', '545', 'new', 'no', 'images/infox_fPKUQGF.jpeg', 'new', '', 36),
(37, 'hse', 'new1', 'images/386infox_fNrTBLF.png', 'new1', 'new1', '4312', 'new1', 'no', 'images/386infox_0UKR9zP.png', 'new1', '', 37),
(38, 'vhse', 'test', 'images/pexels-tabitha-mort-693857_UxKzWdc.jpg', 'test', 'test', '2021', 'test', 'no', 'images/pexels-tabitha-mort-693857_X7k1Jtt.jpg', 'test', '', 39),
(40, 'hse', '76%', 'images/AnwarSadik-Plustwo_cirt.pdf', 'Computer Engineering / Software Engineering', 'Diploma', '2021', '70%', 'yes', 'images/AnwarSadik-_Diploma_Cirt.pdf', 'NO', '', 41),
(41, 'vhse', '69%', 'images/PLUS_TWO.pdf', 'Diploma', 'Computer Engineering', '2021', '7.21 CGPA', 'no', 'images/PLUS_TWO_qLx2Ym4.pdf', 'nil', '', 42),
(42, 'hse', '59', 'images/plus_two_certificate.pdf', 'IPT & GPTC shornur', 'computer engineering', '2021', '6.91', 'no', 'images/diploma_certificate.jpeg', 'Nill', '', 43),
(43, 'vhse', 'aad', 'images/Screenshot_467.png', 'aad', 'aad', '14124', 'aad', 'no', 'images/Screenshot_469.png', 'aad', '', 44),
(44, 'hse', '67', 'images/hse.jpg', 'B.Tech', 'Computer Science And Engineering', '2021', '63', 'yes', 'images/cc.jpg', 'nil', '', 45);

-- --------------------------------------------------------

--
-- Table structure for table `base_app_reported_issue`
--

CREATE TABLE `base_app_reported_issue` (
  `id` bigint(20) NOT NULL,
  `issue` longtext NOT NULL,
  `reported_date` date DEFAULT NULL,
  `reply` longtext NOT NULL,
  `status` varchar(200) NOT NULL,
  `issuestatus` varchar(200) NOT NULL,
  `designation_id` varchar(200) NOT NULL,
  `reported_to_id` bigint(20) DEFAULT NULL,
  `reporter_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `base_app_reported_issue`
--

INSERT INTO `base_app_reported_issue` (`id`, `issue`, `reported_date`, `reply`, `status`, `issuestatus`, `designation_id`, `reported_to_id`, `reporter_id`) VALUES
(1, 'net issue', '2022-03-16', '', '', '1', '7', 2, 9),
(2, 'salary eppo tharum ', '2022-03-16', '', '', '0', '9', 9, 16),
(4, 'Salary vellom kittuo.', '2022-03-16', 'test', '', '1', '9', 20, 10),
(5, 'net issue', '2022-03-16', '', '', '0', '8', 9, 20),
(6, 'net issue', '2022-03-16', '', 'pending', '', '', 9, 21),
(7, '', '2022-03-16', '', 'pending', '', '', 9, 21),
(8, 'test', '2022-03-18', 'testing', '', '1', '8', 23, 20),
(9, 'aaa', '2022-03-18', 'test', '', '1', '8', 23, 20),
(10, 'test', '2022-03-18', 'new', '', '1', '8', 23, 20),
(11, 'aaaaa', '2022-03-18', '', '', '0', '8', 23, 20),
(12, 'ssss', '2022-03-18', '', '', '0', '8', 23, 20),
(13, 'aa', '2022-03-18', 'ok\r\n', '', '1', '8', 23, 20),
(14, 'test', '2022-03-18', 'zzzzzzzzzzzzzzzzzzzz', '', '1', '9', 23, 31),
(15, 'test', '2022-03-18', '', '', '0', '9', 20, 31),
(16, 'new issues one', '2022-03-16', ' report', '', '0', '9', 9, 1),
(17, 'test', '2022-03-21', '', '', '0', '', NULL, 28),
(18, 'network issue.', '2022-03-21', '', '', '0', '9', 20, 31),
(19, 'system damage.', '2022-03-21', '', '', '0', '9', 27, 31),
(20, 'current problem.', '2022-03-21', '', '', '0', '9', 29, 31),
(21, 'network problem.', '2022-03-21', '', '', '0', '9', 30, 31),
(22, 'system maintenance.', '2022-03-21', '', '', '0', '9', 34, 31),
(23, 'system heat.', '2022-03-21', '', '', '0', '9', 20, 31),
(24, 'test', '2022-03-21', ' test', '', '1', '7', 2, 23),
(25, 'qwewerrwe', '2022-03-21', '', '', '0', '', NULL, 28),
(26, 'test', '2022-03-21', '', '', '0', '', NULL, 28),
(27, 'Health issue1', '2022-03-21', '', '', '0', '8', 23, 20),
(28, 'personal issue2', '2022-03-21', '', '', '0', '8', 23, 20),
(29, 'net issue3', '2022-03-21', '', '', '0', '8', 23, 20),
(30, 'fever4', '2022-03-21', '', '', '0', '8', 23, 20),
(31, 'hospitalcase5', '2022-03-21', '', '', '0', '8', 23, 20),
(32, 'code is note clean', '2022-03-21', '', '', '0', '8', 23, 20),
(33, 'frontend error', '2022-03-21', '', '', '0', '8', 23, 20),
(34, 'frontend error', '2022-03-21', '', '', '0', '8', 23, 20),
(35, 'backend note fetching', '2022-03-21', '', '', '0', '8', 23, 20),
(36, 'models error', '2022-03-21', '', '', '0', '8', 23, 20),
(37, 'inspect issue', '2022-03-21', '', '', '0', '8', 23, 20),
(38, 'allignment problem', '2022-03-21', 'testing', '', '1', '8', 23, 20),
(39, 'network problem', '2022-03-21', '', '', '0', '9', 23, 31),
(40, 'net issue', '2022-03-21', 'test', '', '1', '9', 20, 31),
(41, 'server down', '2022-03-21', '', '', '0', '9', 27, 31),
(42, 'system hang', '2022-03-21', '', '', '0', '9', 29, 31),
(43, 'system hang', '2022-03-21', '', '', '0', '9', 29, 31),
(44, 'system break', '2022-03-21', '', '', '0', '9', 30, 31),
(45, 'network issue', '2022-03-21', '', '', '0', '9', 34, 31),
(46, 'server down', '2022-03-21', '', '', '0', '9', 20, 31),
(47, 'server down', '2022-03-21', '', '', '0', '9', 23, 31),
(48, 'server down', '2022-03-21', '', '', '0', '9', 27, 31),
(49, 'server down', '2022-03-21', '', '', '0', '9', 29, 31),
(50, 'server down', '2022-03-21', '', '', '0', '9', 30, 31),
(51, 'server down', '2022-03-21', '', '', '0', '9', 34, 31),
(52, 'test', '2022-03-21', '', '', '0', '8', 23, 20),
(53, 'test', '2022-03-21', '', '', '0', '9', 20, 31),
(54, 'test', '2022-03-21', '', '', '0', '9', 27, 31),
(55, 'server down', '2022-03-21', '', '', '0', '9', 23, 31),
(56, 'server down', '2022-03-21', '', '', '0', '9', 27, 31),
(57, 'ssss', '2022-03-21', '', '', '0', '9', 34, 31),
(58, 'ffff', '2022-03-21', '', '', '0', '9', 23, 31),
(59, 'asddf', '2022-03-21', '', '', '0', '9', 23, 31),
(60, 'backend not fetch', '2022-03-21', '', '', '0', '9', 23, 31),
(61, 'get out', '2022-03-21', '', '', '0', '9', 27, 31),
(62, 'aaaaaaaaaaaa', '2022-03-21', '', '', '0', '9', 27, 31),
(63, 'asdfghjk', '2022-03-21', '', '', '0', '9', 27, 31),
(64, 'testing......', '2022-03-21', '', '', '0', '9', 20, 31),
(65, 'new problem 1', '2022-03-22', ' new solution 1', 'pending', '1', '', 2, 26),
(66, 'newtl problem 1', '2022-03-22', ' tl solution 1', 'pending', '0', '', 26, 18),
(67, 'hai', '2022-03-22', ' hai', 'pending', '', '', 18, 12),
(68, '444', '2022-03-22', '', 'pending', '', '', 18, 12),
(69, 'cvcvcvcv', '2022-03-23', '', 'pending', '', '', NULL, 18),
(70, 'jkl', '2022-03-23', '', 'pending', '', '', NULL, 18),
(71, 'ssssssssssssssssssssssssssssssssssssss', '2022-03-30', '', '', '0', '7', 2, 23);

-- --------------------------------------------------------

--
-- Table structure for table `base_app_tasks`
--

CREATE TABLE `base_app_tasks` (
  `id` bigint(20) NOT NULL,
  `tasks` varchar(240) NOT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `files` varchar(100) DEFAULT NULL,
  `description` longtext NOT NULL,
  `status` varchar(200) NOT NULL,
  `department_id` bigint(20) DEFAULT NULL,
  `designation_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `base_app_tasks`
--

INSERT INTO `base_app_tasks` (`id`, `tasks`, `startdate`, `enddate`, `files`, `description`, `status`, `department_id`, `designation_id`, `user_id`) VALUES
(1, 'test', '2022-03-19', '2022-03-19', 'images/face5_YzKjSA8.jpg', 'test', '1', NULL, 3, 14),
(2, 'test', '2022-03-19', '2022-03-19', 'images/face5_tGgCDdC.jpg', 'test', '1', NULL, 6, 18),
(3, 'teseteteeeettt', '2022-03-30', '2022-03-30', 'images/face1_8AJvY6m.jpg', 'qqqqqqqqqqq', '1', 2, 5, 44);

-- --------------------------------------------------------

--
-- Table structure for table `base_app_tester_status`
--

CREATE TABLE `base_app_tester_status` (
  `id` bigint(20) NOT NULL,
  `date` date DEFAULT NULL,
  `workdone` longtext DEFAULT NULL,
  `files` varchar(100) DEFAULT NULL,
  `progress` int(11) NOT NULL,
  `status` varchar(200) DEFAULT NULL,
  `project_id` bigint(20) DEFAULT NULL,
  `subtask_id` bigint(20) DEFAULT NULL,
  `task_id` bigint(20) DEFAULT NULL,
  `tester_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `base_app_tester_status`
--

INSERT INTO `base_app_tester_status` (`id`, `date`, `workdone`, `files`, `progress`, `status`, `project_id`, `subtask_id`, `task_id`, `tester_id`, `user_id`) VALUES
(1, '2022-03-17', 'subtask work done', 'images/image_2022-03-17_16-09-44.png', 0, NULL, 1, 4, NULL, 24, 12),
(2, NULL, 'test1 wd', 'images/image_2022-03-17_16-09-44_G8qNVyH.png', 0, NULL, 2, 6, NULL, 24, 12),
(3, '2022-03-01', 'test1one', 'images/image_2022-03-17_16-09-44_G8qNVyH.png', 0, NULL, 5, 6, NULL, 24, 14),
(4, NULL, 'gfghv', 'images/icons8-manager-90_aEDLDPw.png', 20, NULL, 1, 4, NULL, 24, 12),
(5, NULL, 'good', 'images/face7_0iKDxAr.jpg', 0, NULL, 7, 18, NULL, 44, 12),
(6, '2022-03-01', 'yyy', 'images/face8_f7MPVKc.jpg', 75, NULL, 7, 18, NULL, 44, 12),
(7, NULL, 'hhfhfgh', 'images/face1_pZDTrDE.jpg', 75, NULL, 7, 18, NULL, 44, 12),
(8, '2022-03-23', 'newwwwwwwwwwwwwwww', 'images/face6_5XikPUi.jpg', 75, NULL, 7, 18, NULL, 44, 12),
(9, '2022-03-23', 'lllllllllllll', 'images/face1_Ul50A14.jpg', 75, NULL, 7, 18, NULL, 44, 12),
(10, '2022-03-28', 'cacacacaa', 'images/face1_iWj0amr.jpg', 0, NULL, 14, 25, NULL, 44, 18),
(11, '2022-03-28', 'tester codex chris w1', 'images/face4_JDSmmzv.jpg', 0, NULL, 15, 27, NULL, 44, 18),
(12, '2022-03-28', 'tester emil w1', 'images/face7_So7eRlH.jpg', 0, NULL, 15, 29, NULL, 44, 14),
(13, '2022-03-28', 'new tester codex chris w2', 'images/face7_RTMCiO4.jpg', 0, NULL, 15, 27, NULL, 44, 18);

-- --------------------------------------------------------

--
-- Table structure for table `base_app_test_status`
--

CREATE TABLE `base_app_test_status` (
  `id` bigint(20) NOT NULL,
  `date` date DEFAULT NULL,
  `workdone` longtext DEFAULT NULL,
  `project_id` bigint(20) DEFAULT NULL,
  `subtask_id` bigint(20) DEFAULT NULL,
  `taskname_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `json_testerscreenshot` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_testerscreenshot`)),
  `json` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `base_app_test_status`
--

INSERT INTO `base_app_test_status` (`id`, `date`, `workdone`, `project_id`, `subtask_id`, `taskname_id`, `user_id`, `json_testerscreenshot`, `json`) VALUES
(1, '2022-03-19', 'kf', 2, 7, NULL, 13, '[\"/media/icons8c480png\", \"/media/icons8java150png\"]', ''),
(2, '2022-03-19', 'bcn ', NULL, 5, NULL, 9, '[\"/media/icons8c480png\", \"/media/icons8java150png\"]', ''),
(3, '2022-03-19', 'bcn ', NULL, 5, NULL, 9, '[\"/media/icons8c480png\", \"/media/icons8java150png\"]', ''),
(4, '2022-03-19', 'ghj', NULL, 5, NULL, 9, '[\"/media/icons8c480png\", \"/media/icons8java150png\"]', ''),
(5, '2022-03-19', 'dsfgdsfgds', NULL, 5, NULL, 9, '[\"/media/icons8manager90png\", \"/media/icons8python150png\"]', ''),
(6, '2022-03-19', 'ghd', NULL, 5, NULL, 9, '[\"/media/icons8c480png\", \"/media/icons8java150png\"]', ''),
(7, '2022-03-19', 'fin', 2, 5, NULL, 9, '[\"/media/icons8c480png\", \"/media/icons8java150png\"]', ''),
(8, '2022-03-19', 'newq', 2, 5, NULL, 9, '[\"/media/icons8java150Copypng\", \"/media/icons8java150png\"]', ''),
(9, '2022-03-19', '', 2, 7, NULL, 13, '[\"/media/icons8c480Copypng\", \"/media/icons8c480png\", \"/media/icons8java150Copypng\"]', ''),
(10, '2022-03-19', 'complte', 2, 13, NULL, 13, '[\"/media/icons8java150Copypng\", \"/media/icons8java150png\"]', ''),
(11, '2022-03-22', 'workdone  1', 7, 17, NULL, 18, '[\"/media/face6jpg\"]', ''),
(12, '2022-03-22', 'fsdfsfsf', 7, 20, NULL, 12, '[\"/media/face8jpg\"]', ''),
(13, '2022-03-23', 'w2', 7, 17, NULL, 18, '[\"/media/face1jpg\"]', ''),
(14, '2022-03-23', 'qwrqewqewq', 1, 4, NULL, 12, '[\"/media/face1jpg\"]', ''),
(15, '2022-03-23', 'eqweqeqw', 7, 17, NULL, 18, '[\"/media/face1jpg\"]', ''),
(16, '2022-03-28', 'codex w1', 15, 27, NULL, 18, '[\"/media/face2jpg\"]', ''),
(17, '2022-03-28', 'task emil w1', 15, 29, NULL, 14, '[\"/media/face2jpg\"]', ''),
(18, '2022-03-28', 'codex w2', 15, 27, NULL, 18, '[\"/media/face3jpg\"]', '');

-- --------------------------------------------------------

--
-- Table structure for table `base_app_topic`
--

CREATE TABLE `base_app_topic` (
  `id` bigint(20) NOT NULL,
  `topic` varchar(240) NOT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `files` varchar(100) DEFAULT NULL,
  `description` longtext NOT NULL,
  `review` longtext NOT NULL,
  `status` varchar(200) NOT NULL,
  `topic_status` varchar(200) NOT NULL,
  `team_id` bigint(20) DEFAULT NULL,
  `trainee_id` bigint(20) DEFAULT NULL,
  `trainer_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `base_app_topic`
--

INSERT INTO `base_app_topic` (`id`, `topic`, `startdate`, `enddate`, `files`, `description`, `review`, `status`, `topic_status`, `team_id`, `trainee_id`, `trainer_id`) VALUES
(1, 'test', '2022-03-23', '2022-03-31', '', '', 'completed', '', '1', 1, NULL, 20),
(2, 'testing', '2022-03-23', '2022-03-23', '', '', 'done\r\n', '', '1', 1, NULL, NULL),
(3, 'client project', '2022-03-21', '2022-03-23', '', '', '', '', '0', 1, NULL, NULL),
(4, 'python project', '2022-03-21', '2022-03-24', '', '', '', '', '0', 1, NULL, NULL),
(5, 'company project', '2022-03-21', '2022-03-24', '', '', 'completed', '', '1', 1, NULL, NULL),
(6, 'infox core main project', '2022-03-24', '2022-03-29', '', '', 'error corrections.', '', '1', 1, NULL, NULL),
(7, 'TCS project', '2022-04-01', '2022-04-09', '', '', 'align code', '', '1', 1, NULL, NULL),
(8, 'java main project', '2022-03-23', '2022-03-30', '', '', 'testing', '', '1', 1, NULL, NULL),
(9, 'react work', '2022-03-23', '2022-03-26', '', '', 'starting', '', '1', 1, NULL, NULL),
(10, 'react work', '2022-03-23', '2022-03-26', '', '', 'working progress.', '', '1', 1, NULL, NULL),
(11, 'aptitude frontend project', '2022-03-30', '2022-04-02', '', '', 'completed', '', '1', 1, NULL, NULL),
(12, 'client project', '2022-03-21', '2022-03-24', '', '', '', '', '0', 2, NULL, NULL),
(13, 'IOT project', '2022-03-22', '2022-03-28', '', '', '', '', '0', 2, NULL, NULL),
(14, 'backend work', '2022-03-23', '2022-03-26', '', '', '', '', '0', 2, NULL, NULL),
(15, 'backend project in c', '2022-03-29', '2022-03-30', '', '', '', '', '0', 2, NULL, NULL),
(16, 'core ', '2022-03-30', '2022-04-02', '', '', '', '', '0', 2, NULL, NULL),
(17, 'backend project in c', '2022-03-29', '2022-03-30', '', '', '', '', '0', 2, NULL, NULL),
(18, 'frontend', '2022-04-07', '2022-04-09', '', '', '', '', '0', 2, NULL, NULL),
(19, 'java main backend work', '2022-03-24', '2022-03-30', '', '', '', '', '0', 3, NULL, NULL),
(20, 'core', '2022-03-24', '2022-03-26', '', '', '', '', '0', 3, NULL, NULL),
(21, 'react based project work', '2022-03-22', '2022-03-30', '', '', '', '', '0', 3, NULL, NULL),
(22, 'final ', '2022-03-30', '2022-03-31', '', '', '', '', '0', 3, NULL, NULL),
(23, 'security based project', '2022-03-23', '2022-03-29', '', '', 'working progress.', '', '1', 1, NULL, NULL),
(24, 'fibonacci', '2022-03-21', '2022-03-25', '', '', '', '', '0', 3, NULL, NULL),
(25, 'sum of n  numbers', '2022-03-21', '2022-03-22', '', '', '', '', '0', 3, NULL, NULL),
(26, 'hacking project', '2022-04-08', '2022-04-11', '', '', 'working progress.', '', '1', 1, NULL, NULL),
(27, 'salary project', '2022-03-21', '2022-03-22', '', '', 'completed', '', '1', 1, NULL, NULL),
(28, 'factors', '2022-03-23', '2022-03-23', '', '', '', '', '0', 3, NULL, NULL),
(29, 'course project', '2022-03-22', '2022-03-24', '', '', 'working progress', '', '1', 1, NULL, NULL),
(30, 'aptitude project', '2022-03-23', '2022-03-24', '', '', 'completed', '', '1', 1, NULL, NULL),
(31, 'pattern project', '2022-03-21', '2022-03-22', '', '', '', '', '0', 2, NULL, NULL),
(32, 'calculation project', '2022-03-22', '2022-03-23', '', '', '', '', '0', 2, NULL, NULL),
(33, 'core project', '2022-03-23', '2022-03-23', '', '', '', '', '0', 2, NULL, NULL),
(34, 'infoxcore project', '2022-03-21', '2022-03-22', '', '', '', '', '0', 3, NULL, NULL),
(35, 'manager module project', '2022-03-22', '2022-03-23', '', '', '', '', '0', 3, NULL, NULL),
(36, 'payment details', '2022-03-23', '2022-03-24', '', '', '', '', '0', 3, NULL, NULL),
(37, 'test', '2022-03-22', '2022-03-30', '', '', '', '', '0', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `base_app_trainer_task`
--

CREATE TABLE `base_app_trainer_task` (
  `id` bigint(20) NOT NULL,
  `taskname` varchar(240) NOT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `submitteddate` date DEFAULT NULL,
  `files` varchar(100) DEFAULT NULL,
  `description` longtext NOT NULL,
  `user_description` longtext NOT NULL,
  `user_files` varchar(100) DEFAULT NULL,
  `status` varchar(200) NOT NULL,
  `task_status` varchar(200) NOT NULL,
  `team_name_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `base_app_trainer_task`
--

INSERT INTO `base_app_trainer_task` (`id`, `taskname`, `startdate`, `enddate`, `submitteddate`, `files`, `description`, `user_description`, `user_files`, `status`, `task_status`, `team_name_id`, `user_id`) VALUES
(1, 'test', '2022-03-24', '2022-03-31', NULL, 'images/Screenshot_1_ba1jkJs.png', 'testing......', '', '', '', '0', 1, 31),
(2, 'testing', '2022-03-18', '2022-03-30', '2022-03-18', 'images/Screenshot_1_p8DpJjC.png', 'testing...', 'test', 'images/Screenshot_1_1FXildO.png', '', '1', 1, 31),
(3, 'Infoxcore frontend work', '2022-03-21', '2022-03-23', '2022-03-21', 'images/a1.PNG', 'work ', 'complete', 'images/backgound2_aUCP5UM.png', '', '1', 1, 31),
(4, 'frontend', '2022-03-21', '2022-03-22', NULL, 'images/Screenshot_3.png', 'neet and commentless code send', '', '', '', '0', 1, 31),
(5, 'infox backend work', '2022-03-24', '2022-03-28', NULL, 'images/a3.PNG', 'assigned', '', '', '', '0', 1, 31),
(6, 'iot based project', '2022-03-23', '2022-03-29', '2022-03-21', 'images/a2.PNG', 'IOT based work', 'done', 'images/Screenshot_7_JhxW6Sp.png', '', '1', 1, 31),
(7, 'ML based project', '2022-03-30', '2022-04-04', '2022-03-21', 'images/a2_WTBOk8S.PNG', 'ML based project work', 'start working', 'images/ecommerce_rr98iww.png', '', '1', 1, 31),
(8, 'backend', '2022-03-23', '2022-03-24', '2022-03-21', 'images/Screenshot_3_jK2CgB6.png', 'using advanced method', 'completed', 'images/phon2_vIkbzmS.png', '', '1', 1, 31),
(9, 'accounts module backend', '2022-04-06', '2022-04-09', '2022-03-21', 'images/a1_WfmjXEo.PNG', 'accounts module backend work', 'completed', 'images/phone1_DXWNitb.png', '', '1', 1, 31),
(10, 'frontend&backend', '2022-03-24', '2022-03-28', '2022-03-21', 'images/Screenshot_3_ZHnEOLe.png', 'neet code', 'completed task.', 'images/phon2_9MGzuRn.png', '', '1', 1, 31),
(11, 'react', '2022-03-21', '2022-03-24', '2022-03-21', 'images/Screenshot_3_oQzzIdM.png', 'urgent work, test personaly', 'completed.', 'images/phon2.png', '', '1', 1, 31),
(12, 'ML based backed work', '2022-03-21', '2022-03-24', NULL, 'images/a2_Kkzfo7Z.PNG', 'ML based backed work', '', '', '', '0', 1, 21),
(13, 'backend in python', '2022-03-24', '2022-03-28', NULL, 'images/a3_w5cEm0h.PNG', 'backend in python', '', '', '', '0', 1, 21),
(14, 'testing', '2022-03-24', '2022-03-26', '2022-03-21', 'images/Screenshot_3_kzV2pdY.png', 'infox core', 'completed', 'images/phon2_CyyfVhh.png', '', '1', 1, 31),
(15, 'trainee module frontend', '2022-03-21', '2022-03-21', NULL, 'images/Screenshot_151.png', 'create html pages', '', '', '', '0', 1, 21),
(16, 'frontend', '2022-03-21', '2022-03-22', NULL, 'images/Screenshot_3_x1wMPWz.png', 'core project', '', '', '', '0', 1, 21),
(17, 'backend', '2022-03-24', '2022-03-26', NULL, 'images/Screenshot_3_HNs17Jv.png', 'main project', '', '', '', '0', 1, 21),
(18, 'account module backend', '2022-03-21', '2022-03-21', NULL, 'images/Screenshot_135.png', 'salary page codes', '', '', '', '0', 1, 36),
(19, 'manager module frontend', '2022-03-21', '2022-03-21', NULL, 'images/Screenshot_191.png', 'manager module html pages', '', '', '', '0', 1, 37),
(20, 'account modue frontend', '2022-03-21', '2022-03-22', NULL, 'images/Screenshot_131.png', 'create corresonpondind html pages', '', '', '', '0', 1, 39),
(21, 'manager backend1', '2022-03-22', '2022-03-23', '2022-03-21', 'images/Screenshot_142.png', 'manager model and codes', 'manager backend completed.', 'images/backgound_hcdDazF.png', '', '1', 1, 31),
(22, 'infoxcore frontend work', '2022-03-22', '2022-03-24', NULL, 'images/a1_4Y1JbXn.PNG', 'frontend work', '', '', '', '0', 1, 6),
(23, 'backend core work', '2022-03-25', '2022-03-29', NULL, 'images/a1_xAmbiLu.PNG', 'backend core work', '', '', '', '0', 1, 6),
(24, 'backend core work', '2022-03-25', '2022-03-29', NULL, 'images/a1_2g3kZ6v.PNG', 'backend core work', '', '', '', '0', 1, 6),
(25, 'test', '2022-03-21', '2022-03-30', NULL, 'images/Screenshot_3_AQDpqCA.png', 'testing', '', '', '', '0', 1, 21);

-- --------------------------------------------------------

--
-- Table structure for table `base_app_user_registration`
--

CREATE TABLE `base_app_user_registration` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(240) DEFAULT NULL,
  `fathername` varchar(240) DEFAULT NULL,
  `mothername` varchar(240) DEFAULT NULL,
  `dateofbirth` date DEFAULT NULL,
  `gender` varchar(240) DEFAULT NULL,
  `presentaddress1` varchar(240) DEFAULT NULL,
  `presentaddress2` varchar(240) DEFAULT NULL,
  `presentaddress3` varchar(240) DEFAULT NULL,
  `pincode` varchar(240) DEFAULT NULL,
  `district` varchar(240) DEFAULT NULL,
  `state` varchar(240) DEFAULT NULL,
  `country` varchar(240) DEFAULT NULL,
  `permanentaddress1` varchar(240) DEFAULT NULL,
  `permanentaddress2` varchar(240) DEFAULT NULL,
  `permanentaddress3` varchar(240) DEFAULT NULL,
  `permanentpincode` varchar(240) DEFAULT NULL,
  `permanentdistrict` varchar(240) DEFAULT NULL,
  `permanentstate` varchar(240) DEFAULT NULL,
  `permanentcountry` varchar(240) DEFAULT NULL,
  `mobile` varchar(240) DEFAULT NULL,
  `alternativeno` varchar(240) DEFAULT NULL,
  `employee_id` varchar(240) DEFAULT NULL,
  `email` varchar(240) DEFAULT NULL,
  `password` varchar(240) DEFAULT NULL,
  `idproof` varchar(100) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `attitude` int(11) NOT NULL,
  `creativity` int(11) NOT NULL,
  `workperformance` int(11) NOT NULL,
  `joiningdate` date DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `status` varchar(240) DEFAULT NULL,
  `tl_id` int(11) DEFAULT NULL,
  `projectmanager_id` int(11) DEFAULT NULL,
  `total_pay` int(11) NOT NULL,
  `payment_balance` int(11) NOT NULL,
  `account_no` varchar(200) DEFAULT NULL,
  `ifsc` varchar(200) DEFAULT NULL,
  `bank_name` varchar(240) DEFAULT NULL,
  `bank_branch` varchar(240) DEFAULT NULL,
  `payment_status` varchar(200) DEFAULT NULL,
  `offerqr` varchar(500) DEFAULT NULL,
  `relieveqr` varchar(500) DEFAULT NULL,
  `expqr` varchar(500) DEFAULT NULL,
  `hrmanager` varchar(500) DEFAULT NULL,
  `branch_id` bigint(20) DEFAULT NULL,
  `course_id` bigint(20) DEFAULT NULL,
  `department_id` bigint(20) DEFAULT NULL,
  `designation_id` bigint(20) DEFAULT NULL,
  `team_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `base_app_user_registration`
--

INSERT INTO `base_app_user_registration` (`id`, `fullname`, `fathername`, `mothername`, `dateofbirth`, `gender`, `presentaddress1`, `presentaddress2`, `presentaddress3`, `pincode`, `district`, `state`, `country`, `permanentaddress1`, `permanentaddress2`, `permanentaddress3`, `permanentpincode`, `permanentdistrict`, `permanentstate`, `permanentcountry`, `mobile`, `alternativeno`, `employee_id`, `email`, `password`, `idproof`, `photo`, `attitude`, `creativity`, `workperformance`, `joiningdate`, `startdate`, `enddate`, `status`, `tl_id`, `projectmanager_id`, `total_pay`, `payment_balance`, `account_no`, `ifsc`, `bank_name`, `bank_branch`, `payment_status`, `offerqr`, `relieveqr`, `expqr`, `hrmanager`, `branch_id`, `course_id`, `department_id`, `designation_id`, `team_id`) VALUES
(1, 'Admin', 'Admin', 'Admin', '2022-03-09', 'Male', 'Admin address1', 'Admin address2', 'Admin address3', '658452', 'Ernakulam', 'kerala', 'india', 'Admin address1', 'Admin address2', 'Admin address3', '658452', 'Ernakulam', 'kerala', 'india', '845789564', '857489547', 'INF0322B1', 'infoxadmin@gmail.com', 'infox@admin123', 'images/face16.jpg', 'images/face18.jpg', 0, 0, 0, '2022-03-01', '2022-03-01', '2022-03-17', 'active', 0, 0, 0, 0, '', '', '', '', '', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//1.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//1.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//1.png', '', 1, NULL, 2, 1, NULL),
(2, 'Manager', 'Manager', 'Manager', '2022-03-03', 'Male', 'Manager address1', 'Manager address2', 'Manager address3', '546123', 'Tcr', 'Kerala', 'India', 'Manager address1', 'Manager address2', 'Manager address3', '546123', 'Tcr', 'Kerala', 'India', '1222122211', '232323232', 'INF0322B2', 'manager@gmail.com', '123', 'images/face2.jpg', 'images/face2_msHH6AZ.jpg', 0, 0, 0, NULL, NULL, NULL, 'active', 0, 0, 0, 0, '', '', '', '', '', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//2.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//2.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//2.png', '', 1, NULL, 2, 2, NULL),
(4, 'Developer2', 'Developer2', 'Developer2', '2022-03-01', 'Female', 'Developer2 address1', 'Developer2 address2', 'Developer2 address3', '345432', 'Ekm', 'kerala', 'India', 'Developer2 address1', 'Developer2 address2', 'Developer2 address3', '345432', 'Ekm', 'kerala', 'India', '345433455', '1123333333', 'INF0322B4', 'developer2@gmail.com', '123', 'images/face5.jpg', 'images/face5_6dyIaNp.jpg', 0, 0, 0, NULL, NULL, NULL, 'active', 0, 0, 0, 0, '', '', '', '', '', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//4.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//4.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//4.png', '', 1, NULL, 3, 4, NULL),
(6, 'Chris', 'Christin', 'Christin', '2022-03-01', 'Male', 'Address 1', 'Address 2', 'Address 3', '123456', 'district', 'state111', 'country', 'Address 1', 'Address 2', 'Address 3', '123456', 'district', 'state111', 'country', '123321123', '234432234', 'INF0322B6', 'chris@gmail.com', '123', 'images/face6.jpg', 'images/face6_TADvHC5.jpg', 80, 90, 70, '2022-03-01', '2022-03-01', '2022-03-15', 'resigned', 0, 0, 0, 0, '0000', 'test1', 'test1', 'test1', '', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//6.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//6.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//6.png', 'Devi Infox', 1, 1, 2, 9, 1),
(8, 'Subeesh.T', 'suresh', 'sreeja', '2000-01-26', 'Male', 'ongallur', 'ongallur', 'ongallur', '679313', 'palakkad', 'kerala', 'india', 'ongallur', 'ongallur', 'ongallur', '679313', 'palakkad', 'kerala', 'india', '7558904357', '9895991269', 'INF0322B8', 'subeesh@gmail.com', '123', 'images/IMG20220110224009.jpg', 'images/ww.jpg', 0, 0, 0, NULL, NULL, NULL, 'active', 0, 0, 0, 0, '', '', '', '', '', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//8.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//8.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//8.png', '', 1, NULL, 2, 9, NULL),
(9, 'Maria', 'xxx', 'xxx', '2022-03-11', 'Female', 'xxx', 'xxx', 'xxx', '11', 'xx', 'xx', 'xx', 'xxx', 'xxx', 'xxx', '11', 'xx', 'xx', 'xx', '00000', '00000', 'INF0322B9', 'tm@gmail.com', '123', 'images/Screenshot_1.png', 'images/face1_RsmErLb.jpg', 70, 20, 70, NULL, NULL, NULL, 'active', 0, 0, 0, 0, '', '', '', '', '', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//9.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//9.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//9.png', '', 1, NULL, 2, 4, NULL),
(10, 'Praveendhar K P', 'Prakash', 'Indira', '1999-05-12', 'Male', 'Goundechirayil(H)', 'Chithirapuram P O', 'Chithirapuram', '685565', 'Idukki', 'KERALA', 'India', 'Goundechirayil(H)', 'Chithirapuram P O', 'Chithirapuram', '685565', 'Idukki', 'KERALA', 'India', '9061536197', '9497678452', 'INF0322B10', 'www.praveendhar@gmail.com', 'praveen123', 'images/IMG_20191122_212832.jpg', 'images/Webp.net-compress-image_1_XZ8EkCT.jpg', 0, 0, 0, NULL, NULL, NULL, 'active', 0, 0, 0, 0, '', '', '', '', '', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//10.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//10.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//10.png', '', 1, NULL, 2, 9, NULL),
(12, 'Leya Kunjumon', 'Kunjumon Y', 'Leena Kunjumon', '1999-03-27', 'Female', 'Thadathivila Veedu, Kizhakketheruvu po Kottarakkara,Kollam', 'nil', 'nil', '691531', 'Kollam', 'Kerala', 'India', 'Thadathivila Veedu, Kizhakketheruvu po Kottarakkara, Kollam', 'nil', 'nil', '691531', 'Kollam', 'Kerala', 'India', '09605156301', '0', 'INF0322B12', 'leyakunjumon99@gmail.com', 'Leya123', 'images/98452', 'images/leya.jpg', 10, 35, 58, NULL, NULL, NULL, 'active', 9, 0, 0, 0, '', '', '', '', '', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//12.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//12.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//12.png', '', 1, NULL, 2, 6, NULL),
(13, 'Shajeer Vattaparambil Ummer ', 'Vm ummer', 'Farida ', '1999-10-08', 'Male', 'vattaparambil house', 'kadangode (P.O)', 'kunnamkulam', '680584', 'Thrissur', 'kerala', 'India', 'vattaparambil house', 'kadangode (P.O)', 'kunnamkulam', '680584', 'Thrissur', 'kerala', 'India', '8714272629', '9074027236', 'INF0322B13', 'shajeervu111@gmail.com', 'shajzz007', 'images/IMG20220316152100.jpg', 'images/Snapchat-647730037.jpg', 0, 0, 0, NULL, NULL, NULL, 'active', 9, 0, 0, 0, '', '', '', '', '', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//13.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//13.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//13.png', '', 1, NULL, 2, 6, NULL),
(14, 'Emil Varghese', 'varghese ua', 'mary varghese', '2000-03-23', 'Male', 'Uthuppan (H)', 'Vilangu p o ,Murivilangu', 'Kizhakkambalam', '683561', 'Ernakulam', 'Kerala', 'India', 'Uthuppan (H)', 'Vilangu p o ,Murivilangu', 'Kizhakkambalam', '683561', 'Ernakulam', 'Kerala', 'India', '9207246885', '9207246885', 'INF0322B14', 'emilvarghese2000@gmail.com', 'emil@123', 'images/WhatsApp_Image_2022-03-16_at_3.31.15_PM.jpeg', 'images/photo.jpeg', 90, 60, 10, NULL, NULL, NULL, 'active', 18, 0, 0, 0, '', '', '', '', '', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//14.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//14.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//14.png', '', 1, NULL, 2, 6, NULL),
(15, 'Maneesh Manoharan', 'Manoharan', 'Nisha', '2000-08-21', 'Male', 'Kunnumpurath', 'Cherpulassery', 'Kulukkallur', '679337', 'palakkad', 'Kerala', 'india', 'Kunnumpurath', 'Cherpulassery', 'Kulukkallur', '679337', 'palakkad', 'Kerala', 'india', '8075410560', '9400506701', 'INF0322B15', 'manuz940050@gmail.com', 'Maneesh123', 'images/black.jpg', 'images/black_AWcP4lj.jpg', 0, 0, 0, NULL, NULL, NULL, 'active', 0, 0, 0, 0, '', '', '', '', '', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//15.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//15.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//15.png', '', 1, NULL, 2, 9, NULL),
(16, 'Anandhu Shaji', 'Shaji P.B', 'Jaya P.S', '1998-03-24', 'Male', 'Pandari Parambil House', 'Krishnapuram,Gurudev Nagar', 'Kalathode, Ollukara P O', '680655', 'Thrissur', 'Kerala', 'India', 'Pandari Parambil House', 'Krishnapuram,Gurudev Nagar', 'Kalathode, Ollukara P O', '680655', 'Thrissur', 'Kerala', 'India', '9567071642', '8086234629', 'INF0322B16', 'anandhusj864@gmail.com', 'anandhu123', 'images/icons8-manager-90.png', 'images/icons8-manager-90_nXLJOdx.png', 0, 0, 0, NULL, NULL, NULL, 'active', 18, 0, 0, 0, '', '', '', '', '', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//16.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//16.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//16.png', '', 1, NULL, 2, 6, NULL),
(17, 'Amal  c s', 'amal', 'amal', '2012-11-16', 'Male', 'address1', 'address1', 'address1', '686670', 'Ernakulam', 'Kerala', 'India', 'address1', 'address1', 'address1', '686670', 'Ernakulam', 'Kerala', 'India', '8975485956', '9854785485', 'INF0322B17', 'amalcs0006@gmail.com', 'amal123', 'images/face2_uQJ9JxI.jpg', 'images/face2_I9dTK7l.jpg', 30, 40, 90, NULL, NULL, NULL, 'active', 0, 0, 0, 0, '', '', '', '', '', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//17.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//17.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//17.png', '', 1, NULL, 3, 4, NULL),
(18, 'christin kj', 'christinf', 'christinm', '1995-11-06', 'Male', 'mupliyam house', 'mupliyam p.o', 'Thrissur', '680312', 'Thrissur', 'Kerala', 'India', 'mupliyam house', 'mupliyam p.o', 'Thrissur', '680312', 'Thrissur', 'Kerala', 'India', '000000000', '1111111111', 'INF0322B18', 'christin@gmail.com', '123', 'images/face21.jpg', 'images/face21_f4R5j8g.jpg', 90, 90, 80, '2022-03-01', '2022-03-02', '2022-03-09', 'active', 26, 0, 0, 0, '', '', '', '', '', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//18.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//18.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//18.png', '', 1, NULL, 2, 4, NULL),
(19, 'Akhil PT', 'ashokan', 'sini', '2001-05-07', 'Male', 'muthuthala', 'muthuthala', 'muthuthala', '67303', 'palakkad', 'kerala', 'India', 'muthuthala', 'muthuthala', 'muthuthala', '67303', 'palakkad', 'kerala', 'India', '8943129951', '8943129951', 'INF0322B19', 'akhil@gmail.com', 'akhil123', 'images/face2_tGtGuIM.jpg', 'images/face2_HsavyMp.jpg', 0, 0, 0, NULL, NULL, NULL, 'active', 0, 0, 0, 0, '', '', '', '', '', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//19.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//19.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//19.png', '', 1, NULL, 2, 9, NULL),
(20, 'Trainer1', 'xxxx', 'xxxx', '2022-03-02', 'Male', 'xxxx', 'xxxx', 'xxxx', '1574896', 'xxxx', 'xxxx', 'xxxx', 'xxxx', 'xxxx', 'xxxx', '1574896', 'xxxx', 'xxxx', 'xxxx', '1489562347', '4578956835', 'INF0322B20', 'trainer1@gmail.com', '123', 'images/mateo-avila-chinchilla-x_8oJhYU31k-unsplash.jpg', 'images/face1_vPW3FyH.jpg', 0, 0, 0, NULL, NULL, NULL, 'active', 0, 0, 0, 0, '', '', '', '', '', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//20.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//20.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//20.png', '', 1, NULL, 2, 8, NULL),
(21, 'Kripa Mariam Shaji', 'Shaji Oommen', 'Beena Shaji', '1998-05-30', 'Female', 'Panamkuttiyil kripalayam , Neduvaremcode po , Chengannur ,Alappuzha ,Kerala , 689508', 'nil', 'nil', '689508', 'Alappuzha', 'kerala', 'India', 'Panamkuttiyil kripalayam , Neduvaremcode po , Chengannur ,Alappuzha ,Kerala , 689508', 'nil', 'nil', '689508', 'nil', 'kerala', 'India', '8594066362', '0', 'INF0322B21', 'kripamariamshaji@gmail.com', 'kripa123', 'images/Adobe_Scan_16_Mar_2022.pdf', 'images/WhatsApp_Image_2022-03-16_at_5.58.34_AM_kgIB2Fj.jpeg', 70, 90, 80, NULL, NULL, NULL, 'active', 9, 26, 30000, 25000, '123', '123', 'test', 'test', '', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//21.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//21.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//21.png', '', 1, 1, 2, 9, 1),
(22, 'Jensin Thomas', 'Easo Thomas ', 'Jessy Thomas ', '1998-03-25', 'Male', 'Ennakkalil House ', 'Mattathur P. O', 'Moonnumury ', '680684', 'Thrissur ', 'Kerala', 'India', 'Ennakkalil House ', 'Mattathur P. O', 'Moonnumury ', '680684', 'Thrissur ', 'Kerala', 'India', '8157010150', '0', 'INF0322B22', 'jensinthomas98@gmail.com', 'jensin@123', 'images/jensin_adhar.pdf', 'images/IMG_20201123_200349.jpg', 10, 10, 10, NULL, NULL, NULL, 'active', 18, 0, 0, 0, '', '', '', '', '', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//22.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//22.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//22.png', '', 1, NULL, 2, 6, 1),
(23, 'Trainer2', 'xxxxxx', 'xxxxxx', '2000-03-16', 'Male', 'xxxxxxxxxxxx', 'nill', 'nill', '665544', 'xxxxxx', 'xxxxxx', 'xxxxxx', 'xxxxxxxxxxxx', 'nill', 'nill', '665544', 'xxxxxx', 'xxxxxx', 'xxxxxx', '9988776655', '9988776655', 'INF0322B23', 'trainer2@gmail.com', '123', 'images/Screenshot_6.png', 'images/R_2.jfif', 0, 0, 0, NULL, NULL, NULL, 'active', 0, 0, 0, 0, '', '', '', '', '', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//23.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//23.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//23.png', '', 1, NULL, 2, 7, NULL),
(24, 'test1', 'test1', 'test1', '2022-03-03', 'Male', 'test1', 'test1', 'test1', '123213', 'test1', 'test1', 'test1', 'test1', 'test1', 'test1', '123213', 'test1', 'test1', 'test1', '12321', '234', 'INF0322B24', 'test1@gmail.com', '123', 'images/face1_2mm12v4.jpg', 'images/face1_xof0v0h.jpg', 0, 0, 0, NULL, NULL, NULL, 'active', 0, 0, 0, 0, '', '', '', '', '', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//24.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//24.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//24.png', '', 1, NULL, 2, 9, NULL),
(25, 'test2', 'test2', 'test2', '2022-03-11', 'Female', 'test2', 'test2', 'test2', '132131', 'v', 'test2', 'test2', 'test2', 'test2', 'test2', '132131', 'v', 'test2', 'test2', '4234234', '234234', 'INF0322B25', 'test2@gmail.com', '123', 'images/face1_siCPFJv.jpg', 'images/face1_fEqwJ19.jpg', 0, 0, 0, '2022-03-01', '2022-03-02', '2022-03-16', 'resigned', 0, 0, 0, 0, '', '', '', '', '', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//offer25.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//25.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//exp25.png', '', 1, NULL, 2, 9, NULL),
(26, 'AKHIL RAJ M R', 'test...', 'test...', '2022-03-16', 'Male', '53, MALIKAPARAMBIL HOUSE', 'MUNDURUTHI, MANNAM P O', 'NORTH PARAVUR, ERNAKULAM', '683520', 'ekm', 'KERALA', 'Ekm', '53, MALIKAPARAMBIL HOUSE', 'MUNDURUTHI, MANNAM P O', 'NORTH PARAVUR, ERNAKULAM', '683520', 'ekm', 'KERALA', 'Ekm', '6238310487', '8086856648', 'INF0322B26', 'akhi.akhilraj18@gmail.com', 'akhi@1999', 'images/JR8ilHf_phzeqbE.jpg', 'images/IMG_20190203_195434.jpg', 8, 7, 9, NULL, NULL, NULL, 'active', 0, 0, 0, 0, '', '', '', '', '', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//offer26.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//re26.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//exp26.png', '', 1, NULL, 2, 3, NULL),
(27, 'FUAD SANIN', 'Siddique ', 'Jesia ', '1999-02-09', 'Male', 'Kunnath(ho),Nadapuram (po), Vadakara, Kozhikode, Kerala', 'Kunnath(ho),Nadapuram (po), Vadakara, Kozhikode, Kerala', 'Kunnath(ho),Nadapuram (po), Vadakara, Kozhikode, Kerala', '673504', 'Kozhikode', 'Kerala', 'India', 'Kunnath(ho),Nadapuram (po), Vadakara, Kozhikode, Kerala', 'Kunnath(ho),Nadapuram (po), Vadakara, Kozhikode, Kerala', 'Kunnath(ho),Nadapuram (po), Vadakara, Kozhikode, Kerala', '673504', 'Kozhikode', 'Kerala', 'India', '9846045308', '9846045308', 'INF0322B27', 'fuadsanin221.fs@gmail.com', 'fuad123', 'images/licence.jpg', 'images/new.jpg', 0, 0, 0, NULL, NULL, NULL, '', 9, 0, 0, 0, '', '', '', '', '', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//offer27.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//re27.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//exp27.png', '', 1, NULL, 2, 8, NULL),
(28, 'accounts', 'xx', 'xx', '2022-03-03', 'Female', 'zz', 'zz', 'zz', '11', 'nn', 'mm', 'mm', 'zz', 'zz', 'zz', '11', 'nn', 'mm', 'mm', '111', '111', 'INF0322B28', 'account@gmail.com', '123', 'images/Screenshot_1_k7XryZg.png', 'images/kirill-balobanov-2rIs8OH5ng0-unsplash.jpg', 0, 0, 0, NULL, NULL, NULL, 'active', 0, 0, 0, 0, '', '', '', '', '', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//offer28.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//re28.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//exp28.png', '', 1, NULL, 2, 10, NULL),
(29, 'Ajay Joseph', 'Thankachan k k', 'Viji Thankachan', '2000-04-01', 'Male', 'Kollamparambil House', 'Valavayal Post', 'Moonnanakuzhi', '673596', 'Wayanad', 'kerala', 'India', 'Kollamparambil House', 'Valavayal Post', 'Moonnanakuzhi', '673596', 'Wayanad', 'kerala', 'India', '9961943595', '9605856322', 'INF0322B29', 'ajaythankachan01@gmail.com', '01042000', 'images/IMG_20220316_165503.jpg', 'images/IMG-20210202-WA0003.jpg', 0, 0, 0, NULL, NULL, NULL, '', 9, 0, 0, 0, '', '', '', '', '', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//offer29.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//re29.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//exp29.png', '', 1, NULL, 2, 8, NULL),
(30, 'Jishnu K Satheesh', 'Satheesan K N', 'Jaya Satheesan', '1999-11-17', 'Male', 'Kollamparambil (h), kozha po, kuravilangad', 'nill', 'ill', '686633', 'kottayam', 'kerala', 'india', 'Kollamparambil (h), kozha po, kuravilangad', 'nill', 'ill', '686633', 'kottayam', 'kerala', 'india', '7306214171', '7306214171', 'INF0322B30', 'jishnuksatheeshsj143@gmail.com', 'jishnu123', 'images/IMG_20220316_165628.jpg', 'images/IMG_20220311_110113_1.jpg', 0, 0, 0, NULL, NULL, NULL, '', 9, 0, 0, 0, '', '', '', '', '', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//offer30.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//re30.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//exp30.png', '', 1, NULL, NULL, 8, NULL),
(31, 'Training Manager', 'xxxxx', 'xxxxx', '2022-03-17', 'Other', 'xxxxx', 'xxxxx', 'xxxxx', '123456', 'xxxxx', 'xxxxx', 'xxxxx', 'xxxxx', 'xxxxx', 'xxxxx', '1234589', 'xxxxx', 'xxxxx', 'xxxxx', '1278964896', '4859675621', 'INF0322B31', 'tm1@gmail.com', '1234', 'images/lesly-juarez-RukI4qZGlQs-unsplash.jpg', 'images/face6_J63HrM7.jpg', 40, 50, 60, NULL, NULL, NULL, 'active', 0, 0, 44000, -4000, '00', 'aa00', 'test', 'test', '', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//offer31.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//re31.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//exp31.png', '', 1, 1, 2, 9, 1),
(33, 'projectmanager', 'projectmanager', 'projectmanager', '2022-03-01', 'Male', 'projectmanager', 'projectmanager', 'projectmanager', '123', 'projectmanager', 'projectmanager', 'projectmanager', 'projectmanager', 'projectmanager', 'projectmanager', '123', 'projectmanager', 'projectmanager', 'projectmanager', '123123123', '123123123', 'INF0322B33', 'projectmanager@gmail.com', '123', 'images/face4.jpg', 'images/face2_JUwoiG7.jpg', 0, 0, 0, '2022-03-01', '2022-03-01', '2022-03-17', 'active', 0, 0, 0, 0, '', '', '', '', '', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//offer33.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//re33.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//exp33.png', '', 1, NULL, NULL, 3, NULL),
(34, 'testnewre', 'testnewre', 'testnewre', '2022-03-10', 'Male', 'testnewre', 'testnewre', 'testnewre', '113123', 'testnewre', 'testnewre', 'testnewre', 'testnewre', 'testnewre', 'testnewre', '113123', 'testnewre', 'testnewre', 'testnewre', '123123123', '213123132', 'INF0322B34', 'testnew@gmail.com', '123', 'images/face1_Chp4Uu6.jpg', 'images/face1_XJ8iqys.jpg', 0, 0, 0, '2022-03-18', '2022-03-18', '2022-03-18', '', 0, 0, 0, 0, '', '', '', '', '', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//offer34.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//re34.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//exp34.png', '', 1, NULL, NULL, 8, NULL),
(35, 'test111111', 'test111111', 'test111111', '2022-03-12', 'Female', 'test111111', 'test111111', 'test111111', '31231', 'test111111', 'test111111', 'test111111', 'test111111', 'test111111', 'test111111', '31231', 'test111111', 'test111111', 'test111111', '32131', '123123', 'INF0322B35', 'testre@gmail.com', '123', 'images/face1_va4FrdX.jpg', 'images/face1_F5YqrmG.jpg', 0, 0, 0, '2022-03-18', '2022-03-18', '2022-03-18', 'resigned', 0, 0, 0, 0, '', '', '', '', '', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//offer35.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//re35.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//exp35.png', '', 1, NULL, NULL, 3, NULL),
(36, 'new', 'new', 'new', '2022-03-09', 'Male', 'new', 'new', 'new', '5421', 'new', 'new', 'new', 'new', 'new', 'new', '5421', 'new', 'new', 'new', '56423', '56413', 'INF0322B36', 'new@gmail.com', '123', 'images/infox_2aVT9SB.jpeg', 'images/infox_KuMbaP4.jpeg', 0, 0, 0, '2022-03-19', '2022-03-19', '2022-03-19', 'active', 0, 0, 0, 0, '', '', '', '', '', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//offer36.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//re36.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//exp36.png', '', 1, 1, NULL, 9, 1),
(37, 'new1', 'new1', 'new1', '2022-03-08', 'Male', 'new1', 'new1', 'new1', '542', 'new1', 'new1', 'new1', 'new1', 'new1', 'new1', '542', 'new1', 'new1', 'new1', '543', '5413', 'INF0322B37', 'new1@gmail.com', '123', 'images/386infox_C0Vh5Xc.png', 'images/386infox_sbUvlxW.png', 0, 0, 0, '2022-03-19', '2022-03-19', '2022-03-19', 'active', 0, 0, 0, 0, '', '', '', '', '', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//offer37.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//re37.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//exp37.png', '', 1, 1, NULL, 9, 1),
(39, 'trainetest', 'abcf', 'abcm', '2008-01-01', 'Male', 'test', 'test', 'test', '678009', 'pkd', 'kl', 'india', 'test', 'test', 'test', '678009', 'pkd', 'kl', 'india', '8569859696', '2536985623', 'INF0322B39', 'trainetest@gmail.com', 'trainetest123', 'images/pexels-tabitha-mort-693857.jpg', 'images/pexels-tabitha-mort-693857_otvF6b4.jpg', 0, 0, 0, '2022-03-21', '2022-03-21', '2022-03-21', 'active', 0, 0, 0, 0, '', '', '', '', '', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//offer39.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//re39.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//exp39.png', '', 1, 1, NULL, 9, 1),
(41, 'Anwar Sadik', 'Ali E', 'Kadeeja', '2000-08-23', 'Male', 'ELAMBULAKKATTU (h), koppam', 'Pattambi', 'Melmuri (PO)', '679307', 'Palakkad', 'Kerala', 'India', 'ELAMBULAKKATTU (h), koppam', 'Pattambi', 'Melmuri (PO)', '679307', 'Palakkad', 'Kerala', 'India', '9744161462', '9633191462', 'INF0322B41', '6285anwarsadik@gmail.com', 'anwar@6285', 'images/Anwar_Sadik-_ID_proof_1_1.jpg', 'images/20210922_215411.jpg', 0, 0, 0, '2022-03-22', '2022-03-22', '2022-03-22', 'active', 0, 0, 0, 0, '', '', '', '', '', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//offer41.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//re41.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//exp41.png', '', 1, NULL, NULL, 9, NULL),
(42, 'Subeesh.T', 'Suresh.T', 'Sreeja.P', '2000-01-26', 'Male', 'tharayil house', 'Kalladippatta PO', 'Ongallur', '679313', 'Palakkad', 'Kerala', 'India', 'tharayil house', 'Kalladippatta PO', 'Ongallur', '679313', 'Palakkad', 'Kerala', 'India', '7558904357', '9946072725', 'INF0322B42', 'subeeshsubi7558@gmail.com', 'subeeshsubi7558', 'images/WhatsApp_Image_2022-03-21_at_2.53.06_PM.jpeg', 'images/IMG_20220217_132029.jpg', 0, 0, 0, '2022-03-22', '2022-03-22', '2022-03-22', 'active', 0, 0, 0, 0, '', '', '', '', '', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//offer42.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//re42.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//exp42.png', '', 1, NULL, 2, 9, NULL),
(43, 'Akhil', 'Ashokan', 'sini', '2001-05-08', 'Male', 'plachithodi(H)', 'muthuthala', 'pattambi', '679303', 'palakkad', 'kerala', 'India', 'plachithodi(H)', 'muthuthala', 'pattambi', '679303', 'palakkad', 'kerala', 'India', '8943129951', '9895427359', 'INF0322B43', 'akhilmtl8943@gmail.com', 'Akhil123', 'images/akhil_license.pdf', 'images/akhil_image.jpg', 0, 0, 0, '2022-03-22', '2022-03-22', '2022-03-22', 'active', 0, 0, 0, 0, '', '', '', '', '', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//offer43.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//re43.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//exp43.png', '', 1, NULL, 2, 9, NULL),
(44, 'tester', 'tester', 'tester', '2022-02-28', 'Male', 'aad', 'aad', 'aad', '123', 'aad', 'aad', 'aad', 'aad', 'aad', 'aad', '123', 'aad', 'aad', 'aad', '123123123', '12312312', 'INF0322B44', 'tester@gmail.com', '123', 'images/face7.jpg', 'images/face7_Jy7NmE6.jpg', 0, 0, 0, '2022-03-22', '2022-03-22', '2022-03-22', 'active', 0, 0, 0, 0, '', '', '', '', '', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//offer44.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//re44.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//exp44.png', '', 1, NULL, 2, 5, NULL),
(45, 'Krishna Santhosh', 'Santhosh T K', 'Mini Mol Santhosh', '1999-10-21', 'Female', 'Thekkanal Thakidiyil', 'Ithithanam P O', 'Changanacherry', '686535', 'Kottayam', 'Kerala', 'India', 'Thekkanal Thakidiyil', 'Ithithanam P O', 'Changanacherry', '686535', 'Kottayam', 'Kerala', 'India', '9544951407', '7893221142', 'INF0322B45', 'krishnasanthosh101999@gmail.com', 'Krishna21@kichu', 'images/adahar.jpg', 'images/pic.jpg', 0, 0, 0, '2022-03-29', '2022-03-29', '2022-03-29', 'active', 0, 0, 0, 0, '', '', '', '', '', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//offer45.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//re45.png', '/home/apgbadgk6j6n/public_html/managezone.in/infox-main/media/images//exp45.png', '', 1, NULL, 2, 9, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(7, 'base_app', 'acntexpensest'),
(29, 'base_app', 'acntspayslip'),
(28, 'base_app', 'attendance'),
(8, 'base_app', 'branch_registration'),
(9, 'base_app', 'conditions'),
(10, 'base_app', 'course'),
(11, 'base_app', 'create_team'),
(12, 'base_app', 'department'),
(13, 'base_app', 'designation'),
(27, 'base_app', 'extracurricular'),
(26, 'base_app', 'internship'),
(25, 'base_app', 'leave'),
(24, 'base_app', 'paymentlist'),
(14, 'base_app', 'project'),
(15, 'base_app', 'project_taskassign'),
(30, 'base_app', 'promissory'),
(23, 'base_app', 'qualification'),
(22, 'base_app', 'reported_issue'),
(21, 'base_app', 'tasks'),
(19, 'base_app', 'tester_status'),
(20, 'base_app', 'test_status'),
(18, 'base_app', 'topic'),
(17, 'base_app', 'trainer_task'),
(16, 'base_app', 'user_registration'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-03-15 07:45:10.295169'),
(2, 'auth', '0001_initial', '2022-03-15 07:45:10.544307'),
(3, 'admin', '0001_initial', '2022-03-15 07:45:10.616040'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-03-15 07:45:10.625895'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-03-15 07:45:10.634604'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-03-15 07:45:10.675415'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-03-15 07:45:10.688144'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-03-15 07:45:10.700896'),
(9, 'auth', '0004_alter_user_username_opts', '2022-03-15 07:45:10.708498'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-03-15 07:45:10.730775'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-03-15 07:45:10.732052'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-03-15 07:45:10.739654'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-03-15 07:45:10.753364'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-03-15 07:45:10.763793'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-03-15 07:45:10.775260'),
(16, 'auth', '0011_update_proxy_permissions', '2022-03-15 07:45:10.782792'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-03-15 07:45:10.793054'),
(18, 'base_app', '0001_initial', '2022-03-15 07:45:12.597087'),
(19, 'sessions', '0001_initial', '2022-03-15 07:45:12.616222'),
(20, 'base_app', '0002_alter_user_registration_branch', '2022-03-15 09:43:02.443051'),
(21, 'base_app', '0003_auto_20220317_1459', '2022-03-17 09:29:44.677181'),
(22, 'base_app', '0004_auto_20220317_1521', '2022-03-17 09:51:46.119907'),
(23, 'base_app', '0005_auto_20220317_1712', '2022-03-17 11:42:22.009843'),
(24, 'base_app', '0006_auto_20220318_1226', '2022-03-18 06:56:46.990108'),
(25, 'base_app', '0007_alter_user_registration_status', '2022-03-18 07:38:41.883384'),
(26, 'base_app', '0008_auto_20220318_1702', '2022-03-18 11:32:47.923714'),
(27, 'base_app', '0009_auto_20220319_1624', '2022-03-19 10:55:11.427329'),
(28, 'base_app', '0010_auto_20220319_1645', '2022-03-19 11:15:49.768108'),
(29, 'base_app', '0011_auto_20220319_1649', '2022-03-19 11:19:13.820150'),
(30, 'base_app', '0012_project_taskassign_delay', '2022-03-29 10:35:34.336420'),
(31, 'base_app', '0013_promissory', '2022-04-05 09:23:14.447003'),
(32, 'base_app', '0014_alter_promissory_final_amount_and_more', '2022-04-05 11:09:47.060152'),
(33, 'base_app', '0015_alter_promissory_final_amount_and_more', '2022-04-05 11:27:45.855588'),
(34, 'base_app', '0016_rename_final_paid_on_promissory_final_due_on_and_more', '2022-04-05 18:36:02.340612');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('3odz2lxeozizkr8evdgnyg4qs1r6yr19', '.eJyrVnJMyY3PTFGyMtRRKi1OLcpLzE0tKTZUsgJJZOYpIUQzioyAqmoBoiwQfA:1nUPFT:ONRlfwyu2SncGvLqwfcx90KHVF6EE0KY2_6aDTmULa8', '2022-03-30 08:43:15.219540'),
('6t8wexj0hl3euqdnmhymmx8msxq2lmnr', '.eJyrVnJMyY3PTFGyMtRRKi1OLcpLzE0tKTZUslLyTcxLTE8tUkKIZxQZgdVBNBghJBKT80qAMgaoIiBDEpOT80vzSoqVUKWA5hhZ1AIAJMoppQ:1naUq4:o-lWXO7BNJwSY0d3HZZ1xLwPGPej0u00rd9TPKLzvsk', '2022-04-16 03:54:12.846462'),
('7y79moxi14pbnd8pyg17d5y42afrdzkx', '.eJyrViotTi3KS8xNLSnKK1aystRBETBUslIKKUrMzMvMS1fwTcxLTE8tUkJVYqRkZWyIKmSsZIUqUqRkZYEqADc4FchElQIaaGRQCwBUwjWH:1nWFBd:R6L739fAoDoB2yNLFMYfoFFl999q0vCgt7s6hNI4FE8', '2022-04-04 10:22:53.544511'),
('8ltv7s8j7ei74abwdx3poryfitwc9h33', 'eyJkZXZpZCI6MTJ9:1nURtL:D65a8mNo7-d56UaRGlgVklJ0gqLp0HRlr0xr7OTx36I', '2022-03-30 11:32:35.828853'),
('9ksspqb1tp37ly7shnexm94t475ox6p8', '.eJyrViotTi3KS8xNLSnKK1aystRBETBUslLyLsoszshLVAhOzCvJyC_OUEJVYqRkZWKKKmSsZJVXmpNTCwAr8CGA:1nZQCd:c5vVtpIn6do2SGCltH8PpCG4t2CngfgNg98PgfQzs3o', '2022-04-13 04:45:03.053525'),
('aj0ix0jdo8vx2i8ldrq9x3sboga0obe3', '.eJyrViotTi3KS8xNLSnKK1aystRBETBUslIKKUrMzMvMS1fwTcxLTE8tUkJVYqRkZWyIKmSsZIUkkpicVwIUMEAVAZmcmJycX5pXUqyEKgU00ciiFgB9OTWy:1nZPWE:Kgk-Pg5JofG92FHRNmCcmhuaiobNdrPHp3UeZPlh1RQ', '2022-04-13 04:01:14.519587'),
('ak0fbaa3xd8z46t7pmozizo6saafj8re', 'eyJTQWRtX2lkIjoxfQ:1nVEhG:05BX9YqSVG0w4vmof27HoZiQBsB267ZxNoXaHjXGea0', '2022-04-01 15:39:22.348120'),
('drr6ha6ggex0hco3qfnz7t17yunpmq9q', '.eJyrVnJMyY3PTFGyMtRRKi1OLcpLzE0tKTZUsgJJZOYpIUQzioyAqmoBoiwQfA:1nUFHC:VoSsh0Q8XbHDBtX-SDoPdQjjFhmxAg-aoPq_k6GMw-4', '2022-03-29 22:04:22.742944'),
('f99ndr1kvy9gz4hsshh4z481xp1d54hc', '.eJyrViotTi3KS8xNLSnKK1KystBBETBUslIKKUrMzEsFMlGljJSsjAx0lFJSyzJTlKwMTWoB-VMZnw:1nUjMF:H_9AGrgJhcdryfLlFd5uRaqhrR32TBctNtDXFOplpJ0', '2022-03-31 06:11:35.819762'),
('fw0s1b9qnp94m49lu61e0ayvtwf3sqqx', '.eJyrViotTi3KS8xNLSnKK1aystRBETBUslJyzCtPLFIITkzJzFZClTVSsjIxRBUyVrLKK83JqQUAdKAfSQ:1nZQb7:C-1NovHNk8_g_oz4TpdEyWfurv4ddohEwiLh3mZOId8', '2022-04-13 05:10:21.641460'),
('g24ql4aamgphrky5thzioeyvtgj8qfvt', '.eJyrViotTi3KS8xNLSnKK1aystRBETBUslJyzM7IzFFCFTdSsjIxRhUyVrLKK83JqQUAvuIdLw:1nZnCi:35XwxQZqhVR2PlbuoG_wv_y-Ic6l6ZDXX5I1To5BZ80', '2022-04-14 05:18:40.688368'),
('icy11wvbnj8ddte2utkf8spdghwzyxnr', '.eJyrVnJMyY3PTFGyMtRRKi1OLcpLzE0tKTZUsgJJZOYpIUQzioxQVCUm55UABQxQRUA6E5OT80vzSoqVUKWA2o0sagGHZiZe:1nbnhA:2Mylpj4kd64GfN_kbryZAPmKD3nxxLpxX-G5ECTPIr0', '2022-04-19 18:14:24.429503'),
('isn0qptbdqds0yx7kt8wxav0cssqcl6a', '.eJyrViotTi3KS8xNLclVsjLXQeIaKlkphRQlZualFhkpIUsYKVkZGdcCAFowE9g:1naBBw:B7sXlXvYRhkVTHo-pCX68V5OHRw2DOP_vt1nNxPyBDE', '2022-04-15 06:55:28.546804'),
('ohdnses3tkr93gj2df8vdcttsdexrjlf', 'eyJ0bGlkIjoxOH0:1nV8U0:6SeXxcdgTYIRnUJ4TMXbqqK3Ol_E5dVgGVUcz3x_J8o', '2022-04-01 09:01:16.770907'),
('oveivf1ehj5j1hu36zvvnjvn1lhmqo72', '.eJyrVsqNz0xRsjLSUSotTi3KS8xNLSk2VLJS8k3MS0xPLVJCiGcUGSlZGeooleSANFjWAgBHthM6:1nZpB1:Pm6wCd1SFP1kP3djt7AvtauTv8xlcJrnD4p5iPQOpuE', '2022-04-14 07:25:03.138372'),
('pc8y6v3zenycz5ndvdbnkv3jlp88ezg5', '.eJyrViotTi3KS8xNLSnKK1aystRBETBUslLySs0rzsxTCMnIz00sVkKVN1KyMjJCFTJWssorzcmpBQC-xiA2:1nUQj2:zlgjM3fUqOZ71pl2n4oXERNBsva1bsXAlkmNZtHvKw4', '2022-03-30 10:17:52.450114'),
('r6hhmxlok1yqctpfneoxtta4czd5iwee', '.eJxdzDEKgDAMBdCryJ8dtC41d3DzAqEU6WCEtE7i3W0XJW7h_fx_4cxRhfdYVDJo7g2MIKzKSZJs3cLCW1TYFweaRksTyIqCvIV3ONbTRnXQDR9xkFL3ftL6HMJxSsmwUev7-wF9Q0tp:1nWGzU:0GhGKgIaRaTCtyOVp4eLThCCxyLbd22YOSzJIOvwaZs', '2022-04-04 12:18:28.035096'),
('rxvp8xorg9uh217wmhyg1lhh713ou1p2', '.eJyrViotTi3KS8xNLSnKK1aystRBETBUslIKzkjMSk0tUghLLClJLEgsSsxNysxRCM3NBYopoSo3UrIyNEYVMlayyivNyakFANiUJbM:1nUQMZ:7xg0mnfs3jnGNM6qra6eYt0DMAhNZj23DAQ-0qY9zXg', '2022-03-30 09:54:39.539367'),
('u3cu4jmmjn0hq3aqnl0tnfbd2johwfih', '.eJyrViotTi3KS8xNLSnKK1aystRBETBUslJyzCtPLFIITkzJzFZClTVSsjIxRBUyVrLKK83JqQUAdKAfSQ:1nWXfv:Xnx8m8T3WFWHXOJhBX7aXQRMT_XslnRuAkEYuPSFLL8', '2022-04-05 06:07:23.402872'),
('uc1al7r8u7zrhgt55yqcaufm288xrbf9', '.eJyrViotTi3KS8xNTUzOK1GyMjTQQRExVLJSSkxOzi_NKylWQpUyUrIysqgFAPn8Fq8:1nV60q:EKtkjnASmwtcm1Tm1DwSAjBjxjvxc0Xk3bQTF-UaITs', '2022-04-01 06:23:00.590885'),
('udj2ceuwowijwrgj1j0oo6ky4nzebhpo', '.eJyrViotTi3KS8xNLclVsjLXQeIaKlkphRQlZualFhkpIUsYKVkZGSMEEpPzSpSsDA1QRUC6E5OT80vzSoqVUKVA-i1qARZ5Kbo:1nbI4i:vVVGgbvA6OmdRPFpgXV06P5GfmRLnrZ5Y3r9MYHXpA0', '2022-04-18 08:28:36.560047'),
('v5iitkzcbrbnfiq5q240lmqhuih7oymh', 'eyJTQWRtX2lkIjoxfQ:1nVnhv:mwFySdOGm9F8BjwPbzkcmOCHt6Y94qdoZOOcxs_kR7g', '2022-04-03 05:02:23.283544'),
('vokw5dgse09roqh4ov4989r040wlp0dn', '.eJyrViotTi3KS8xNLSnKK1KystBBETBUslIKKUrMzEsFMlGljJSsjAxqAfCIFoQ:1nWFG0:qaRmABonM4tjwqc5kOzElfG3UOXQZaK2QPyZiuhfh7E', '2022-04-04 10:27:24.215889'),
('wyjiy7jwfym2kp3kvzolsw5tzkefsbfe', '.eJyrViotTi3KS8xNTUzOK1GyMjTQQRExVLJSSkxOzi_NKylWQpUyUrIyskAIleQqWZkjc0FaQ4oSM_NSi4yUkCVAGo1rATMLKbo:1nXh3v:-VAuiWLokbwhHUP7epJcAkNCjsXvqffuK516yg9dkTA', '2022-04-08 10:20:55.669881'),
('xj77o6lv2ildr2fwn8hgivsj05lqxkrh', '.eJyrViotTi3KS8xNLSnKK1aystRBETBUslIKLk1KTS3O0AtRQpUzUrIyMUIVMlayyivNyakFADfHHpY:1nWjmT:aMDZDj74rzU7Vd_VAuZhq3ehBc2sjlxxgAx88cJRX5w', '2022-04-05 19:02:57.547652');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `base_app_acntexpensest`
--
ALTER TABLE `base_app_acntexpensest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `base_app_acntspayslip`
--
ALTER TABLE `base_app_acntspayslip`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_app_acntspaysli_department_id_21ada824_fk_base_app_` (`department_id`),
  ADD KEY `base_app_acntspaysli_designation_id_00bcb706_fk_base_app_` (`designation_id`),
  ADD KEY `base_app_acntspaysli_user_id_id_fce5649e_fk_base_app_` (`user_id_id`);

--
-- Indexes for table `base_app_attendance`
--
ALTER TABLE `base_app_attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_app_attendance_user_id_430c8040_fk_base_app_` (`user_id`);

--
-- Indexes for table `base_app_branch_registration`
--
ALTER TABLE `base_app_branch_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `base_app_conditions`
--
ALTER TABLE `base_app_conditions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `base_app_course`
--
ALTER TABLE `base_app_course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `base_app_create_team`
--
ALTER TABLE `base_app_create_team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `base_app_department`
--
ALTER TABLE `base_app_department`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_app_department_branch_id_eabcf909_fk_base_app_` (`branch_id`);

--
-- Indexes for table `base_app_designation`
--
ALTER TABLE `base_app_designation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_app_designation_branch_id_1fc335cd_fk_base_app_` (`branch_id`),
  ADD KEY `base_app_designation_department_id_ea1e17c4_fk_base_app_` (`department_id`);

--
-- Indexes for table `base_app_extracurricular`
--
ALTER TABLE `base_app_extracurricular`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_app_extracurric_user_id_75f4c404_fk_base_app_` (`user_id`);

--
-- Indexes for table `base_app_internship`
--
ALTER TABLE `base_app_internship`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_app_internship_branch_id_8aeb0fa1_fk_base_app_` (`branch_id`);

--
-- Indexes for table `base_app_leave`
--
ALTER TABLE `base_app_leave`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_app_leave_user_id_864afd43_fk_base_app_user_registration_id` (`user_id`);

--
-- Indexes for table `base_app_paymentlist`
--
ALTER TABLE `base_app_paymentlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_app_paymentlist_course_id_8d28f5e6_fk_base_app_course_id` (`course_id`),
  ADD KEY `base_app_paymentlist_user_id_id_671cce29_fk_base_app_` (`user_id_id`);

--
-- Indexes for table `base_app_project`
--
ALTER TABLE `base_app_project`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_app_project_projectmanager_id_25eb49b5_fk_base_app_` (`projectmanager_id`),
  ADD KEY `base_app_project_tester_id_681675aa_fk_base_app_` (`tester_id`),
  ADD KEY `base_app_project_department_id_ab5a9426_fk_base_app_` (`department_id`),
  ADD KEY `base_app_project_designation_id_b5dff45f_fk_base_app_` (`designation_id`),
  ADD KEY `base_app_project_branch_id_f9216934_fk_base_app_` (`branch_id`);

--
-- Indexes for table `base_app_project_taskassign`
--
ALTER TABLE `base_app_project_taskassign`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_app_project_tas_developer_id_edc30710_fk_base_app_` (`developer_id`),
  ADD KEY `base_app_project_tas_project_id_11045022_fk_base_app_` (`project_id`),
  ADD KEY `base_app_project_tas_tester_id_7758f59d_fk_base_app_` (`tester_id`),
  ADD KEY `base_app_project_tas_tl_id_7d2cff4b_fk_base_app_` (`tl_id`);

--
-- Indexes for table `base_app_promissory`
--
ALTER TABLE `base_app_promissory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_app_promissory_user_id_id_ba5996db_fk_base_app_` (`user_id_id`);

--
-- Indexes for table `base_app_qualification`
--
ALTER TABLE `base_app_qualification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_app_qualificati_user_id_28baad2d_fk_base_app_` (`user_id`);

--
-- Indexes for table `base_app_reported_issue`
--
ALTER TABLE `base_app_reported_issue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_app_reported_is_reported_to_id_071dd663_fk_base_app_` (`reported_to_id`),
  ADD KEY `base_app_reported_is_reporter_id_ecf00692_fk_base_app_` (`reporter_id`);

--
-- Indexes for table `base_app_tasks`
--
ALTER TABLE `base_app_tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_app_tasks_department_id_2002c7b1_fk_base_app_department_id` (`department_id`),
  ADD KEY `base_app_tasks_designation_id_5a0cbfdc_fk_base_app_` (`designation_id`),
  ADD KEY `base_app_tasks_user_id_727f88c7_fk_base_app_user_registration_id` (`user_id`);

--
-- Indexes for table `base_app_tester_status`
--
ALTER TABLE `base_app_tester_status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_app_tester_stat_project_id_95868a63_fk_base_app_` (`project_id`),
  ADD KEY `base_app_tester_stat_subtask_id_c145ec1d_fk_base_app_` (`subtask_id`),
  ADD KEY `base_app_tester_stat_task_id_4e683dd3_fk_base_app_` (`task_id`),
  ADD KEY `base_app_tester_stat_tester_id_da5cd3da_fk_base_app_` (`tester_id`),
  ADD KEY `base_app_tester_stat_user_id_c8214431_fk_base_app_` (`user_id`);

--
-- Indexes for table `base_app_test_status`
--
ALTER TABLE `base_app_test_status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_app_test_status_project_id_8790b454_fk_base_app_project_id` (`project_id`),
  ADD KEY `base_app_test_status_subtask_id_f2f2d90f_fk_base_app_` (`subtask_id`),
  ADD KEY `base_app_test_status_taskname_id_6f61b503_fk_base_app_` (`taskname_id`),
  ADD KEY `base_app_test_status_user_id_84ffa638_fk_base_app_` (`user_id`);

--
-- Indexes for table `base_app_topic`
--
ALTER TABLE `base_app_topic`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_app_topic_team_id_a0c5e7a1_fk_base_app_create_team_id` (`team_id`),
  ADD KEY `base_app_topic_trainee_id_1cdbdb38_fk_base_app_` (`trainee_id`),
  ADD KEY `base_app_topic_trainer_id_eb6a13e5_fk_base_app_` (`trainer_id`);

--
-- Indexes for table `base_app_trainer_task`
--
ALTER TABLE `base_app_trainer_task`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_app_trainer_tas_team_name_id_d201e56b_fk_base_app_` (`team_name_id`),
  ADD KEY `base_app_trainer_tas_user_id_d13a5c2d_fk_base_app_` (`user_id`);

--
-- Indexes for table `base_app_user_registration`
--
ALTER TABLE `base_app_user_registration`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_app_user_regist_course_id_5a1e7dc3_fk_base_app_` (`course_id`),
  ADD KEY `base_app_user_regist_department_id_f8ffba2f_fk_base_app_` (`department_id`),
  ADD KEY `base_app_user_regist_designation_id_1a35907e_fk_base_app_` (`designation_id`),
  ADD KEY `base_app_user_regist_team_id_82d71bbf_fk_base_app_` (`team_id`),
  ADD KEY `base_app_user_regist_branch_id_14a07e3d_fk_base_app_` (`branch_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `base_app_acntexpensest`
--
ALTER TABLE `base_app_acntexpensest`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `base_app_acntspayslip`
--
ALTER TABLE `base_app_acntspayslip`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `base_app_attendance`
--
ALTER TABLE `base_app_attendance`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `base_app_branch_registration`
--
ALTER TABLE `base_app_branch_registration`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `base_app_conditions`
--
ALTER TABLE `base_app_conditions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `base_app_course`
--
ALTER TABLE `base_app_course`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `base_app_create_team`
--
ALTER TABLE `base_app_create_team`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `base_app_department`
--
ALTER TABLE `base_app_department`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `base_app_designation`
--
ALTER TABLE `base_app_designation`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `base_app_extracurricular`
--
ALTER TABLE `base_app_extracurricular`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `base_app_internship`
--
ALTER TABLE `base_app_internship`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `base_app_leave`
--
ALTER TABLE `base_app_leave`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `base_app_paymentlist`
--
ALTER TABLE `base_app_paymentlist`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `base_app_project`
--
ALTER TABLE `base_app_project`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `base_app_project_taskassign`
--
ALTER TABLE `base_app_project_taskassign`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `base_app_promissory`
--
ALTER TABLE `base_app_promissory`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `base_app_qualification`
--
ALTER TABLE `base_app_qualification`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `base_app_reported_issue`
--
ALTER TABLE `base_app_reported_issue`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `base_app_tasks`
--
ALTER TABLE `base_app_tasks`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `base_app_tester_status`
--
ALTER TABLE `base_app_tester_status`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `base_app_test_status`
--
ALTER TABLE `base_app_test_status`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `base_app_topic`
--
ALTER TABLE `base_app_topic`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `base_app_trainer_task`
--
ALTER TABLE `base_app_trainer_task`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `base_app_user_registration`
--
ALTER TABLE `base_app_user_registration`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `base_app_acntspayslip`
--
ALTER TABLE `base_app_acntspayslip`
  ADD CONSTRAINT `base_app_acntspaysli_department_id_21ada824_fk_base_app_` FOREIGN KEY (`department_id`) REFERENCES `base_app_department` (`id`),
  ADD CONSTRAINT `base_app_acntspaysli_designation_id_00bcb706_fk_base_app_` FOREIGN KEY (`designation_id`) REFERENCES `base_app_designation` (`id`),
  ADD CONSTRAINT `base_app_acntspaysli_user_id_id_fce5649e_fk_base_app_` FOREIGN KEY (`user_id_id`) REFERENCES `base_app_user_registration` (`id`);

--
-- Constraints for table `base_app_attendance`
--
ALTER TABLE `base_app_attendance`
  ADD CONSTRAINT `base_app_attendance_user_id_430c8040_fk_base_app_` FOREIGN KEY (`user_id`) REFERENCES `base_app_user_registration` (`id`);

--
-- Constraints for table `base_app_department`
--
ALTER TABLE `base_app_department`
  ADD CONSTRAINT `base_app_department_branch_id_eabcf909_fk_base_app_` FOREIGN KEY (`branch_id`) REFERENCES `base_app_branch_registration` (`id`);

--
-- Constraints for table `base_app_designation`
--
ALTER TABLE `base_app_designation`
  ADD CONSTRAINT `base_app_designation_branch_id_1fc335cd_fk_base_app_` FOREIGN KEY (`branch_id`) REFERENCES `base_app_branch_registration` (`id`),
  ADD CONSTRAINT `base_app_designation_department_id_ea1e17c4_fk_base_app_` FOREIGN KEY (`department_id`) REFERENCES `base_app_department` (`id`);

--
-- Constraints for table `base_app_extracurricular`
--
ALTER TABLE `base_app_extracurricular`
  ADD CONSTRAINT `base_app_extracurric_user_id_75f4c404_fk_base_app_` FOREIGN KEY (`user_id`) REFERENCES `base_app_user_registration` (`id`);

--
-- Constraints for table `base_app_internship`
--
ALTER TABLE `base_app_internship`
  ADD CONSTRAINT `base_app_internship_branch_id_8aeb0fa1_fk_base_app_` FOREIGN KEY (`branch_id`) REFERENCES `base_app_branch_registration` (`id`);

--
-- Constraints for table `base_app_leave`
--
ALTER TABLE `base_app_leave`
  ADD CONSTRAINT `base_app_leave_user_id_864afd43_fk_base_app_user_registration_id` FOREIGN KEY (`user_id`) REFERENCES `base_app_user_registration` (`id`);

--
-- Constraints for table `base_app_paymentlist`
--
ALTER TABLE `base_app_paymentlist`
  ADD CONSTRAINT `base_app_paymentlist_course_id_8d28f5e6_fk_base_app_course_id` FOREIGN KEY (`course_id`) REFERENCES `base_app_course` (`id`),
  ADD CONSTRAINT `base_app_paymentlist_user_id_id_671cce29_fk_base_app_` FOREIGN KEY (`user_id_id`) REFERENCES `base_app_user_registration` (`id`);

--
-- Constraints for table `base_app_project`
--
ALTER TABLE `base_app_project`
  ADD CONSTRAINT `base_app_project_branch_id_f9216934_fk_base_app_` FOREIGN KEY (`branch_id`) REFERENCES `base_app_branch_registration` (`id`),
  ADD CONSTRAINT `base_app_project_department_id_ab5a9426_fk_base_app_` FOREIGN KEY (`department_id`) REFERENCES `base_app_department` (`id`),
  ADD CONSTRAINT `base_app_project_designation_id_b5dff45f_fk_base_app_` FOREIGN KEY (`designation_id`) REFERENCES `base_app_designation` (`id`),
  ADD CONSTRAINT `base_app_project_projectmanager_id_25eb49b5_fk_base_app_` FOREIGN KEY (`projectmanager_id`) REFERENCES `base_app_user_registration` (`id`),
  ADD CONSTRAINT `base_app_project_tester_id_681675aa_fk_base_app_` FOREIGN KEY (`tester_id`) REFERENCES `base_app_user_registration` (`id`);

--
-- Constraints for table `base_app_project_taskassign`
--
ALTER TABLE `base_app_project_taskassign`
  ADD CONSTRAINT `base_app_project_tas_developer_id_edc30710_fk_base_app_` FOREIGN KEY (`developer_id`) REFERENCES `base_app_user_registration` (`id`),
  ADD CONSTRAINT `base_app_project_tas_project_id_11045022_fk_base_app_` FOREIGN KEY (`project_id`) REFERENCES `base_app_project` (`id`),
  ADD CONSTRAINT `base_app_project_tas_tester_id_7758f59d_fk_base_app_` FOREIGN KEY (`tester_id`) REFERENCES `base_app_user_registration` (`id`),
  ADD CONSTRAINT `base_app_project_tas_tl_id_7d2cff4b_fk_base_app_` FOREIGN KEY (`tl_id`) REFERENCES `base_app_user_registration` (`id`);

--
-- Constraints for table `base_app_promissory`
--
ALTER TABLE `base_app_promissory`
  ADD CONSTRAINT `base_app_promissory_user_id_id_ba5996db_fk_base_app_` FOREIGN KEY (`user_id_id`) REFERENCES `base_app_user_registration` (`id`);

--
-- Constraints for table `base_app_qualification`
--
ALTER TABLE `base_app_qualification`
  ADD CONSTRAINT `base_app_qualificati_user_id_28baad2d_fk_base_app_` FOREIGN KEY (`user_id`) REFERENCES `base_app_user_registration` (`id`);

--
-- Constraints for table `base_app_reported_issue`
--
ALTER TABLE `base_app_reported_issue`
  ADD CONSTRAINT `base_app_reported_is_reported_to_id_071dd663_fk_base_app_` FOREIGN KEY (`reported_to_id`) REFERENCES `base_app_user_registration` (`id`),
  ADD CONSTRAINT `base_app_reported_is_reporter_id_ecf00692_fk_base_app_` FOREIGN KEY (`reporter_id`) REFERENCES `base_app_user_registration` (`id`);

--
-- Constraints for table `base_app_tasks`
--
ALTER TABLE `base_app_tasks`
  ADD CONSTRAINT `base_app_tasks_department_id_2002c7b1_fk_base_app_department_id` FOREIGN KEY (`department_id`) REFERENCES `base_app_department` (`id`),
  ADD CONSTRAINT `base_app_tasks_designation_id_5a0cbfdc_fk_base_app_` FOREIGN KEY (`designation_id`) REFERENCES `base_app_designation` (`id`),
  ADD CONSTRAINT `base_app_tasks_user_id_727f88c7_fk_base_app_user_registration_id` FOREIGN KEY (`user_id`) REFERENCES `base_app_user_registration` (`id`);

--
-- Constraints for table `base_app_tester_status`
--
ALTER TABLE `base_app_tester_status`
  ADD CONSTRAINT `base_app_tester_stat_project_id_95868a63_fk_base_app_` FOREIGN KEY (`project_id`) REFERENCES `base_app_project` (`id`),
  ADD CONSTRAINT `base_app_tester_stat_subtask_id_c145ec1d_fk_base_app_` FOREIGN KEY (`subtask_id`) REFERENCES `base_app_project_taskassign` (`id`),
  ADD CONSTRAINT `base_app_tester_stat_task_id_4e683dd3_fk_base_app_` FOREIGN KEY (`task_id`) REFERENCES `base_app_project_taskassign` (`id`),
  ADD CONSTRAINT `base_app_tester_stat_tester_id_da5cd3da_fk_base_app_` FOREIGN KEY (`tester_id`) REFERENCES `base_app_user_registration` (`id`),
  ADD CONSTRAINT `base_app_tester_stat_user_id_c8214431_fk_base_app_` FOREIGN KEY (`user_id`) REFERENCES `base_app_user_registration` (`id`);

--
-- Constraints for table `base_app_test_status`
--
ALTER TABLE `base_app_test_status`
  ADD CONSTRAINT `base_app_test_status_project_id_8790b454_fk_base_app_project_id` FOREIGN KEY (`project_id`) REFERENCES `base_app_project` (`id`),
  ADD CONSTRAINT `base_app_test_status_subtask_id_f2f2d90f_fk_base_app_` FOREIGN KEY (`subtask_id`) REFERENCES `base_app_project_taskassign` (`id`),
  ADD CONSTRAINT `base_app_test_status_taskname_id_6f61b503_fk_base_app_` FOREIGN KEY (`taskname_id`) REFERENCES `base_app_user_registration` (`id`),
  ADD CONSTRAINT `base_app_test_status_user_id_84ffa638_fk_base_app_` FOREIGN KEY (`user_id`) REFERENCES `base_app_user_registration` (`id`);

--
-- Constraints for table `base_app_topic`
--
ALTER TABLE `base_app_topic`
  ADD CONSTRAINT `base_app_topic_team_id_a0c5e7a1_fk_base_app_create_team_id` FOREIGN KEY (`team_id`) REFERENCES `base_app_create_team` (`id`),
  ADD CONSTRAINT `base_app_topic_trainee_id_1cdbdb38_fk_base_app_` FOREIGN KEY (`trainee_id`) REFERENCES `base_app_user_registration` (`id`),
  ADD CONSTRAINT `base_app_topic_trainer_id_eb6a13e5_fk_base_app_` FOREIGN KEY (`trainer_id`) REFERENCES `base_app_user_registration` (`id`);

--
-- Constraints for table `base_app_trainer_task`
--
ALTER TABLE `base_app_trainer_task`
  ADD CONSTRAINT `base_app_trainer_tas_team_name_id_d201e56b_fk_base_app_` FOREIGN KEY (`team_name_id`) REFERENCES `base_app_create_team` (`id`),
  ADD CONSTRAINT `base_app_trainer_tas_user_id_d13a5c2d_fk_base_app_` FOREIGN KEY (`user_id`) REFERENCES `base_app_user_registration` (`id`);

--
-- Constraints for table `base_app_user_registration`
--
ALTER TABLE `base_app_user_registration`
  ADD CONSTRAINT `base_app_user_regist_branch_id_14a07e3d_fk_base_app_` FOREIGN KEY (`branch_id`) REFERENCES `base_app_branch_registration` (`id`),
  ADD CONSTRAINT `base_app_user_regist_course_id_5a1e7dc3_fk_base_app_` FOREIGN KEY (`course_id`) REFERENCES `base_app_course` (`id`),
  ADD CONSTRAINT `base_app_user_regist_department_id_f8ffba2f_fk_base_app_` FOREIGN KEY (`department_id`) REFERENCES `base_app_department` (`id`),
  ADD CONSTRAINT `base_app_user_regist_designation_id_1a35907e_fk_base_app_` FOREIGN KEY (`designation_id`) REFERENCES `base_app_designation` (`id`),
  ADD CONSTRAINT `base_app_user_regist_team_id_82d71bbf_fk_base_app_` FOREIGN KEY (`team_id`) REFERENCES `base_app_create_team` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
