-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 03, 2021 at 11:35 AM
-- Server version: 5.7.26
-- PHP Version: 7.0.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `new_quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

DROP TABLE IF EXISTS `admin_login`;
CREATE TABLE IF NOT EXISTS `admin_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `username`, `password`) VALUES
(1, 'admin@ssinfotech.org.in', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `answerd_category`
--

DROP TABLE IF EXISTS `answerd_category`;
CREATE TABLE IF NOT EXISTS `answerd_category` (
  `userID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`) VALUES
(1, 'PHP'),
(2, 'HTML'),
(3, 'JS'),
(4, 'Bootstrap');

-- --------------------------------------------------------

--
-- Table structure for table `graph`
--

DROP TABLE IF EXISTS `graph`;
CREATE TABLE IF NOT EXISTS `graph` (
  `category_name` varchar(200) NOT NULL,
  `percentage` double NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
CREATE TABLE IF NOT EXISTS `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(254) NOT NULL,
  `ans1` varchar(254) NOT NULL,
  `ans2` varchar(254) NOT NULL,
  `ans3` varchar(254) NOT NULL,
  `ans4` varchar(254) NOT NULL,
  `ans` varchar(254) NOT NULL,
  `category_id` int(11) NOT NULL,
  `no_answer` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `ans1`, `ans2`, `ans3`, `ans4`, `ans`, `category_id`, `no_answer`) VALUES
(1, 'Who became the fastest bowler to get to 250 wickets in the test matches ?', 'K  Rabada', 'R  Ashwin', 'T G Southee', 'Jadeja', 'R  Ashwin', 1, NULL),
(2, 'The National Game of India is', 'Cricket', 'Football', 'Tennis', 'Hockey', 'Hockey', 1, NULL),
(3, 'Boat race is a famous festival game of', 'Tamil Nadu', 'Kerala', 'Goa', 'Assam', 'Kerala', 1, NULL),
(4, 'Oval stadium in England is associated with', 'polo', 'Cricket', 'Hockey', 'Football', 'Cricket', 1, NULL),
(5, 'Worldâ€™s most ancient game is', 'Boxing', 'Running', 'Wrestling', 'Swimming', 'Wrestling', 1, NULL),
(6, '2010 Commonwealth Games held in', 'Canada', 'India', 'Britian', 'Malaysia', 'India', 1, NULL),
(7, 'The termâ€œGooglyâ€ is associated with', 'Cricket', 'Football', 'Badminton', 'Hockey', 'Cricket', 1, NULL),
(8, 'Krishna Poonia is associated with', 'Football', 'Hockey', 'Chess', 'Athletics', 'Chess', 1, NULL),
(9, 'In 1924 the first winter Olympics was held in', 'Italy', 'Franc', 'Austria', 'Canada', 'Franc', 1, NULL),
(10, '2014 FIFA World Cup will be held in', 'India', 'Brazil', 'Germany', 'London', 'Brazil', 1, NULL),
(11, 'Ranji Trophy is associated with', 'Hockey', 'Tennis', 'Cricket', 'Football', 'Cricket', 1, NULL),
(12, 'Iccâ€™s 2007, the World Cup Cricket was held in', 'Australia', 'West Indies', 'New Zealand', 'South Africa', 'West Indies', 1, NULL),
(13, 'Pullela Gopichand is associated with', 'Hockey', 'Badminton', 'Football', 'Cricket', 'Badminton', 1, NULL),
(14, 'In 2011 India won the World Cup. Who was adjudicated as the man of the series in the tournament?', 'Rahul Dravid', 'Zaheer Khan', 'Yuvaraj Singh', 'Sachin Tendulkar', 'Yuvaraj Singh', 1, NULL),
(15, 'Viswanath Anand is associated with', 'Chess', 'Hockey', 'Volley ball', 'Carrom', 'Chess', 1, NULL),
(16, 'Who is Master Blaster?', 'Rahul Dravid', 'Sourav Ganguly', 'Irfan Pathan', 'Sachin Tendulkar', 'Sachin Tendulkar', 1, NULL),
(17, 'Mahesh Bhupathi is associated with', 'Chess', 'Cricket', 'Lawn Tennis', 'Table Tennis', 'Lawn Tennis', 1, NULL),
(18, 'Who hit six sixes in an over off Stuart Broad in a match against England in Twenty20 World Cup 2007?', 'Ricky Ponting', 'Stephen Fleming', 'Adam Gilchrist', 'Yuvraj Singh', 'Yuvraj Singh', 1, NULL),
(19, 'Which Indian batsman made three consecutive centures in his first three test matches?', 'Vinoo Mankad', 'GR Vishwanath', 'Mohd  Azharuddin', 'Sm Gavaskar', 'Mohd  Azharuddin', 1, NULL),
(20, 'Which country won the World Cup in 2011?', 'Australia', 'India', 'Pakistan', 'Srilanka', 'India', 1, NULL),
(21, 'HTML stands for?', 'Hyper Text Markup Language', 'High Text Markup Language', 'Hyper Tabular Markup Language', 'None of these', 'Hyper Text Markup Language', 2, NULL),
(22, ' which of the following tag is used to mark a begining of paragraph ?', 'p', 'h', 'tr', 'td', 'p', 2, NULL),
(23, 'Heading ranges in HTML in between ', 'h1 to h6', 'h1 to h7', 'h5 to h10', 'None of the mentioned', 'h1 to h6', 2, NULL),
(24, 'www is based on which model?', 'Local-server', 'Client-server', '3 tier', 'None of these', 'Client-server', 2, NULL),
(25, '  Which of the following attributes of text box control allow to limit the maximum character?', 'size', 'len', 'maxlength', 'all of these', 'maxlength', 2, NULL),
(26, 'The attribute, which define the relationship between current document and HREF\'ed URL is', 'REL', 'URL', 'REV', 'all of these', 'REL', 2, NULL),
(27, 'In HTML UL stands for ', 'Unlimited', 'Unordered List', 'Underline List', 'None of the above', 'Unordered List', 2, NULL),
(28, 'URI stands for ?', 'Uniform Research identifier', 'Uniform Resource Informer', 'Uniform Remote Identifier', 'Uniform Resource Identifier', 'Uniform Resource Identifier', 2, NULL),
(29, 'The latest HTML standard is', 'XML', 'SGML', 'HTML 4.0', 'HTML 5.0', 'HTML 5.0', 2, NULL),
(30, 'The body tag usually used after', 'Title tag', 'HEAD tag', 'EM tag', 'FORM tag', 'HEAD tag', 2, NULL),
(31, 'In HTML id is called with', '$', '%', '#', '@', '#', 2, NULL),
(32, 'In img src \"SRC \" stands for ', 'Source', 'Structure', 'Service', 'None of the above', 'Source', 2, NULL),
(33, 'CSS stands for?', 'Cascading Stylesheet', 'Cascading standard Sheet', 'Cascading Styles', 'None ', 'Cascading Stylesheet', 2, NULL),
(34, 'In CSS  * (Astring) is called', 'Element Selector', 'Content Selector', 'Universal Selector', 'None of the above', 'Universal Selector', 2, NULL),
(35, 'Total Number of CSS type is', '4', '3', '2', '1', '3', 2, NULL),
(36, 'For applying CSS on multiple element we use ', 'Slash sign ', 'Comma', 'forward slash', 'Back slash', 'Comma', 2, NULL),
(37, 'Input type \"Checkbox \" is used for ', 'Checking form data ', 'checking url ', 'creating checkbox', 'None of the above', 'creating checkbox', 2, NULL),
(38, 'Bootstrap is library of ?', 'HTML', 'Java', 'C', 'Javascript', 'HTML', 3, NULL),
(39, 'For making small buttons class we use  class', 'Small', 'Small Button', 'sm', 'None of the above', 'sm', 3, NULL),
(40, 'The Bootstrap grid system is based on how many columns?', '3', '12', '9', '6', '12', 3, NULL),
(41, 'Which class adds zebra-stripes to a table?', '.table-striped', '.table-zebra', '.table-bordered', '.even and .odd', '.table-striped', 3, NULL),
(42, 'Which class shapes an image to a circle?', '.img-thumbnail', '.img-rounded', '.img-round', '.img-circle', '.img-circle', 3, NULL),
(43, 'Which class is used to create a black navigation bar?', '.navbar-dark', '.navbar-black', '.navbar-default', '.navbar-inverse', '.navbar-inverse', 3, NULL),
(44, 'Which of the following class is required to be added to form tag to make it horizontal?', '.horizontal', '.form-horizontal', '.horizontal', 'None of the above.', '.form-horizontal', 3, NULL),
(45, 'Which of the following is correct about Bootstrap?', 'Bootstrap responsive CSS adjusts to Desktops,Tablets and Mobiles.', 'Provides a clean and uniform solution for building an interface for developers.', 'It contains beautiful and functional built-in components which are easy to customize.', 'All of the above.', 'All of the above.', 3, NULL),
(46, 'Which of the following bootstrap style of button indicates caution should be taken with this action?', '.btn-warning', '.btn-danger', '.btn-link', '.btn-info', '.btn-warning', 3, NULL),
(47, 'Which plugin is used to cycle through elements, like a slideshow?', 'orbit', 'slideshow', 'scrollspy', 'carousel', 'carousel', 3, NULL),
(48, 'Which plugin is used to create a modal window?', 'modal', 'window', 'dialog Box', 'popup', 'modal', 3, NULL),
(49, ' Which plugin is used to create a tooltip?', 'popup', 'tooltip', 'modal', 'dialog Box', 'tooltip', 3, NULL),
(50, 'Default size of H5 bootstrap heading', '14px', '16px', '18px', '20px', '14px', 3, NULL),
(51, 'Default size of H3 bootstrap heading', '18px', '30px', '26px', '24px', '24px', 3, NULL),
(52, 'Default size of H2 bootstrap heading', '20px', '24px', '30px', '36px', '30px', 3, NULL),
(53, 'WWW stands for ?', 'World Whole Web', 'Wide World Web', 'Web World Wide', 'World Wide Web', 'World Wide Web', 4, NULL),
(54, 'Which among following first generation of computers had ?', 'Vaccum Tubes and Magnetic Drum', 'Integrated Circuits', 'Magnetic Tape and Transistors', 'All of above', 'Vaccum Tubes and Magnetic Drum', 4, NULL),
(55, 'Where is RAM located ?', 'Expansion Board', 'External Drive', 'Mother Board', 'All of above', 'Mother Board', 4, NULL),
(56, 'In which of the following form, data is stored in computer ?', 'Decimal', 'Binary', 'HexaDecimal', 'Octal', 'Binary', 4, NULL),
(57, 'Which level language is Assembly Language ?', 'high-level programming language', 'medium-level programming language', 'low-level programming language', 'machine language', 'low-level programming language', 4, NULL),
(58, 'Computer word derived from ?', 'calculate', 'compute', 'compile', 'None of The Above', 'compute', 4, NULL),
(59, 'Mouse is a device', 'Pointing', 'output', 'both', 'None of The Above', 'Pointing', 4, NULL),
(60, 'Who is the father of computer?', 'Tim bernerlee', 'Charles babbage', 'Vint Cerf', 'Steve Jobs', 'Charles babbage', 4, NULL),
(61, 'RAM stands for ?', 'Random access machine', 'Random access memory', 'Random address memory', 'None of the above', 'Random access memory', 4, NULL),
(62, 'Rom stands for ?', 'Read only machine', 'Read only memory', 'Retrive only memory', 'None of the above', 'Read only memory', 4, NULL),
(63, 'Full form of CPU is', 'Central Point Unit', 'Central Processing Unit', 'Central Programming Unit', 'Central Power Unit', 'Central Processing Unit', 4, NULL),
(64, 'The Brain of computer is ?', 'Keyboard', 'Mouse', 'CPU', 'None of the above', 'CPU', 4, NULL),
(65, 'What is the full form of CU?', 'Compound Unit', 'Control unit', 'Central Unit', 'Communication unit', 'Control unit', 4, NULL),
(66, 'What is the full form of ALU?', 'Arithmetic Logic Unit', 'Arithmetic Local Unit', 'Advance Logical Unit', 'None of the above', 'Arithmetic Logic Unit', 4, NULL),
(67, 'What is the full form of MICR?', 'Magnetic Inkjet Character Reader', 'Magnetic Isolated Character Responsive', 'Magnetic Ink Character Reader', 'None of the above', 'Magnetic Ink Character Reader', 4, NULL),
(68, 'Smallest Memory size is ?', 'KB', 'GB', 'MB', 'TB', 'KB', 4, NULL),
(69, 'How many MB in One GB ?', '1000 MB', '1024 MB', '10000 MB', 'None of the above', '1024 MB', 4, NULL),
(70, 'What is the full form of USB?', 'Unique Synchronised Bus', 'Universal Synchronised Bus', 'Universal Serial Bus', 'Unlimited Sending Buffer', 'Universal Serial Bus', 4, NULL),
(71, 'What does an Operating System do?', 'Memory Management', 'File Management', 'Application Management', 'All of the above', 'All of the above', 4, NULL),
(72, 'Which is not an Operating System?', 'Windows', 'Macintosh', 'Linux', 'Open Office', 'Open Office', 4, NULL),
(73, 'What is the full form of LAN?', 'Local Access Network', 'Local Area Network', 'Local Accelerator Network', 'Logical Area Network', 'Local Area Network', 4, NULL),
(74, 'IP stands for ?', 'Internet Progress', 'Internet Protocol', 'Internet Pass', 'Internet Password', 'Internet Protocol', 4, NULL),
(75, 'What is the name of first super computer of India ?', 'Saga ', 'PARAM', 'ENIAC', 'None of the above', 'PARAM', 4, NULL),
(76, 'What is full form CMOS ?', 'Content Metal Oxide Semiconductor', 'Complementary Metal Oxide Semiconductor', 'Complementary Metal Oxygen Semiconductor', 'Complementary Metal Oscilator Semiconductor', 'Complementary Metal Oxide Semiconductor', 4, NULL),
(77, 'What is full form of SMPS ?', 'Switch Mode Power Supply', 'Simple Mode Power Supply', 'Storage Mode Power Supply', 'Storage Mode Power Shortage', 'Switch Mode Power Supply', 4, NULL),
(78, 'HTML is what type of language ?', 'Scripting Language', 'Markup Language', 'Programming Language', 'None of the above', 'Markup Language', 4, NULL),
(79, 'What is the full form of CD ?', 'Computer Directory', 'Compile Disk', 'Compact Disk', 'Compiler Directory', 'Compact Disk', 4, NULL),
(80, 'Shortcut key of Copy is ?', ' ctrl + c', 'ctrl+ v', 'ctrl + x', 'ctrl + z', ' ctrl + c', 4, NULL),
(81, 'Shortcut key of Paste is ?', 'ctrl + c', 'ctrl + p', 'ctrl+ v', 'None of the above', 'ctrl+ v', 4, NULL),
(82, 'How to open task manager in computer ?', 'ctrl + alt + window', ' ctrl + alt + shift', 'ctrl + alt + delete', 'None of the above', 'ctrl + alt + delete', 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

DROP TABLE IF EXISTS `register`;
CREATE TABLE IF NOT EXISTS `register` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `cpass` varchar(100) NOT NULL,
  `upload_img` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `fname`, `lname`, `email`, `pass`, `cpass`, `upload_img`) VALUES
(1, 'goutam', 'Mishra', 'goutam@gmail.com', '1234', '1234', ''),
(2, 'surbhi', 'biswal', 'sur@gmail.com', '1234', '1234', ''),
(3, 'demo', 'sutar', 'demo@ssinfotech.org.in', 'Pass@1234', 'Pass@1234', ''),
(4, 'Aman', 'Khan', 'amankhan@ssinfotech.org.in', 'Pass@1234', 'Pass@1234', 'upload/202104031617448501.png');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

DROP TABLE IF EXISTS `result`;
CREATE TABLE IF NOT EXISTS `result` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  `category` varchar(30) NOT NULL,
  `total_questions` int(11) NOT NULL,
  `right_ans` int(11) NOT NULL,
  `wrong_ans` int(11) NOT NULL,
  `not_attempt` int(11) NOT NULL,
  `percentage` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`id`, `name`, `category`, `total_questions`, `right_ans`, `wrong_ans`, `not_attempt`, `percentage`, `status`, `date`) VALUES
(35, 'demo', '2', 4, 0, 4, 0, 0, 'status', '2021-04-03'),
(36, 'demo', '2', 4, 0, 4, 0, 0, 'status', '2021-04-03'),
(37, 'demo', '2', 4, 0, 4, 0, 0, 'status', '2021-04-03'),
(38, 'demo', '2', 4, 0, 4, 0, 0, 'status', '2021-04-03'),
(39, 'demo', '2', 4, 0, 4, 0, 0, 'status', '2021-04-03'),
(40, 'demo', '2', 4, 0, 4, 0, 0, 'status', '2021-04-03'),
(41, 'Aman', '2', 4, 0, 4, 0, 0, 'status', '2021-04-03'),
(42, 'demo', '2', 4, 0, 4, 0, 0, 'status', '2021-04-03'),
(43, 'demo', '2', 17, 3, 14, 0, 18, 'status', '2021-04-03'),
(44, 'demo', '2', 17, 1, 2, 14, 6, 'status', '2021-04-03');

-- --------------------------------------------------------

--
-- Table structure for table `user_ans_details`
--

DROP TABLE IF EXISTS `user_ans_details`;
CREATE TABLE IF NOT EXISTS `user_ans_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer` varchar(200) NOT NULL,
  `category_id` int(11) NOT NULL,
  `session` varchar(250) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_ans_details`
--

INSERT INTO `user_ans_details` (`id`, `name`, `question_id`, `answer`, `category_id`, `session`, `date`) VALUES
(21, 'demo', 5, 'HTML', 2, '9825', '2021-04-03'),
(22, 'demo', 7, 'h1', 2, '9825', '2021-04-03'),
(23, 'demo', 6, 'not defined', 2, '9825', '2021-04-03'),
(24, 'demo', 8, 'h6', 2, '9825', '2021-04-03'),
(25, 'Aman', 7, 'h1', 2, '398', '2021-04-03'),
(26, 'Aman', 5, 'HTML', 2, '398', '2021-04-03'),
(27, 'Aman', 8, 'h6', 2, '398', '2021-04-03'),
(28, 'Aman', 6, 'tag ', 2, '398', '2021-04-03'),
(29, 'demo', 5, 'HTML', 2, '4739', '2021-04-03'),
(30, 'demo', 6, 'tag ', 2, '4739', '2021-04-03'),
(31, 'demo', 7, 'h1', 2, '4739', '2021-04-03'),
(32, 'demo', 8, 'h4', 2, '4739', '2021-04-03'),
(33, 'demo', 21, 'High Text Markup Language', 2, '8528', '2021-04-03'),
(34, 'demo', 31, 'no_answer ', 2, '8528', '2021-04-03'),
(35, 'demo', 29, 'HTML 5.0', 2, '8528', '2021-04-03'),
(36, 'demo', 28, 'Uniform Research identifier', 2, '8528', '2021-04-03'),
(37, 'demo', 26, 'no_answer ', 2, '8528', '2021-04-03'),
(38, 'demo', 33, 'Cascading Stylesheet', 2, '8528', '2021-04-03'),
(39, 'demo', 24, 'Client-server', 2, '8528', '2021-04-03'),
(40, 'demo', 35, 'no_answer ', 2, '8528', '2021-04-03'),
(41, 'demo', 23, 'no_answer ', 2, '8528', '2021-04-03'),
(42, 'demo', 34, 'no_answer ', 2, '8528', '2021-04-03'),
(43, 'demo', 36, 'no_answer ', 2, '8528', '2021-04-03'),
(44, 'demo', 25, 'no_answer ', 2, '8528', '2021-04-03'),
(45, 'demo', 32, 'no_answer ', 2, '8528', '2021-04-03'),
(46, 'demo', 30, 'no_answer ', 2, '8528', '2021-04-03'),
(47, 'demo', 37, 'no_answer ', 2, '8528', '2021-04-03'),
(48, 'demo', 22, 'no_answer ', 2, '8528', '2021-04-03'),
(49, 'demo', 27, 'no_answer ', 2, '8528', '2021-04-03'),
(50, 'demo', 27, 'Unlimited', 2, '3025', '2021-04-03'),
(51, 'demo', 37, 'no_answer', 2, '3025', '2021-04-03'),
(52, 'demo', 24, 'no_answer', 2, '3025', '2021-04-03'),
(53, 'demo', 34, 'no_answer', 2, '3025', '2021-04-03'),
(54, 'demo', 35, '4', 2, '3025', '2021-04-03'),
(55, 'demo', 29, 'no_answer', 2, '3025', '2021-04-03'),
(56, 'demo', 31, 'no_answer', 2, '3025', '2021-04-03'),
(57, 'demo', 33, 'no_answer', 2, '3025', '2021-04-03'),
(58, 'demo', 30, 'HEAD tag', 2, '3025', '2021-04-03'),
(59, 'demo', 21, 'no_answer', 2, '3025', '2021-04-03'),
(60, 'demo', 22, 'no_answer', 2, '3025', '2021-04-03'),
(61, 'demo', 26, 'no_answer', 2, '3025', '2021-04-03'),
(62, 'demo', 32, 'no_answer', 2, '3025', '2021-04-03'),
(63, 'demo', 36, 'no_answer', 2, '3025', '2021-04-03'),
(64, 'demo', 23, 'no_answer', 2, '3025', '2021-04-03'),
(65, 'demo', 28, 'no_answer', 2, '3025', '2021-04-03'),
(66, 'demo', 25, 'no_answer', 2, '3025', '2021-04-03');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
