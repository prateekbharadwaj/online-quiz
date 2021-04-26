-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2021 at 06:42 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oq`
--

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(3) NOT NULL,
  `no` int(3) NOT NULL,
  `question` varchar(250) NOT NULL,
  `option1` varchar(250) NOT NULL,
  `option2` varchar(250) NOT NULL,
  `option3` varchar(250) NOT NULL,
  `option4` varchar(250) NOT NULL,
  `answer` int(3) NOT NULL,
  `sub` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `no`, `question`, `option1`, `option2`, `option3`, `option4`, `answer`, `sub`) VALUES
(1, 1, 'RAD stands for?', 'Relative Application Development', ' Rapid Application Development', ' Rapid Application Document', 'None of the mentioned', 2, 'se'),
(2, 2, 'Which one of the following models is not suitable for accommodating any change?', 'Build & Fix Model', 'Prototyping Model', 'RAD Model', 'Waterfall Model', 4, 'se'),
(3, 3, ' Which one of the following is not a phase of Prototyping Model?', 'Quick Design', 'Coding', 'Prototype Refinement', 'Engineer Product', 2, 'se'),
(4, 4, 'RAD Model has', '2 phases', '3 phase', '5 phases', '6 phases', 3, 'se'),
(5, 5, 'SDLC stands for', 'Software Development Life Cycle', 'System Development Life cycle', 'Software Design Life Cycle', 'System Design Life Cycle', 1, 'se'),
(6, 6, '“Software engineers should not use their technical skills to misuse other people’s computers.”Here the term misuse refers to:', 'Unauthorized access to computer material', 'Unauthorized modification of computer material', 'Dissemination of viruses or other malware', 'All of the mentioned', 4, 'se'),
(7, 7, 'Choose the correct option in terms of Issues related to professional responsibility', 'Confidentiality', 'Intellectual property rights', 'Both Confidentiality & Intellectual property rights', 'Managing Client Relationships', 3, 'se'),
(8, 8, ' Identify the correct statement: “Software engineers shall', 'act in a manner that is in the best interests of his expertise and favour.”', 'act consistently with the public interest.”', 'ensure that their products only meet the SRS.”', 'all of the mentioned\"', 2, 'se'),
(9, 9, 'The reason for software bugs and failures is due to', 'Software companies', 'Software Developers', 'Both Software companies and Developers', 'All of the mentioned', 3, 'se'),
(10, 10, 'Structured programming codes includes ?', 'alteration & iteration', ' multiple exit from loops', 'sequencing', 'both 1 and 3', 4, 'se'),
(11, 1, 'What is an operating system?', 'collection of programs that manages hardware resources', 'system service provider to the application programs', 'interface between the hardware and application programs', 'all of the mentioned', 4, 'os'),
(12, 2, 'To access the services of operating system, the interface is provided by the ___________', 'System calls', 'API', 'Library', 'Assembly instructions', 1, 'os'),
(13, 3, 'Which one of the following is not true?', 'kernel is the program that constitutes the central core of the operating system', 'kernel is the first part of operating system to load into memory during booting', 'kernel is made of various modules which can not be loaded in running operating system', 'kernel remains in the memory during the entire computer session', 3, 'os'),
(14, 4, 'Which one of the following error will be handle by the operating system?', 'power failure', 'lack of paper in printer', 'connection failure in the network', 'all of the mentioned', 4, 'os'),
(15, 5, 'What is the main function of the command interpreter?', 'to get and execute the next user-specified command', 'to provide the interface between the API and application program', 'to handle the files in operating system', 'none of the mentioned', 1, 'os'),
(16, 6, 'In Operating Systems, which of the following is/are CPU scheduling algorithms?', 'Round Robin', 'Shortest Job First', 'Priority', 'All of the mentioned', 4, 'os'),
(17, 7, 'If a process fails, most operating system write the error information to a ______', 'log file', 'another running process', 'new file', 'none of the mentioned', 1, 'os'),
(18, 8, 'Which facility dynamically adds probes to a running system, both in user processes and in the kernel?', 'DTrace', 'DLocate', 'DMap', 'DAdd', 1, 'os'),
(19, 9, ' Which one of the following is not a real time operating system?', 'VxWorks', 'QNX', 'RTLinux', 'Palm OS', 4, 'os'),
(20, 10, 'The OS X has ____________', 'monolithic kernel', 'hybrid kernel', 'microkernel', 'monolithic kernel with modules', 2, 'os'),
(21, 1, 'The IETF standards documents are called ________', 'RFC', 'RCF', 'ID', 'DFC', 1, 'cn'),
(22, 2, 'In the layer hierarchy as the data packet moves from the upper to the lower layers, headers are ___________', 'Added', 'Removed', 'Rearranged', 'Modified', 1, 'cn'),
(23, 3, 'The structure or format of data is called ___________', 'Syntax', 'Semantics', 'Struct', 'Formatting', 1, 'cn'),
(24, 4, 'Communication between a computer and a keyboard involves ______________ transmission.', 'Automatic', 'Half-duplex', 'Full-duplex', 'Simplex', 4, 'cn'),
(25, 5, 'The first Network was called ________', 'CNNET', 'NSFNET', 'ASAPNET', 'ARPANET', 4, 'cn'),
(26, 6, 'A _______ is the physical path over which a message travels.', 'Path', 'Medium', 'Protocol', 'Route', 2, 'cn'),
(27, 7, 'Which organization has authority over interstate and international commerce in the communications field?', 'ITU-T', 'IEEE', 'FCC', 'ISOC', 3, 'cn'),
(28, 8, 'Which of this is not a network edge device?', 'PC', 'Smartphones', 'Servers', 'Switch', 4, 'cn'),
(29, 9, 'A _________ set of rules that governs data communication.', 'Protocols', 'Standards', 'RFCs', 'Servers', 1, 'cn'),
(30, 10, 'Three or more devices share a link in ________ connection.', 'Unipoint', 'Multipoint', 'Point to point', 'Simplex', 2, 'cn'),
(31, 1, 'Which of the factors affect the performance of learner system does not include?', 'Representation scheme used', 'Training scenario', 'Type of feedback', 'Good data structures', 4, 'ai'),
(32, 2, 'Different learning methods does not include?', 'Memorization', ' Analogy', 'Deduction', 'Introduction', 4, 'ai'),
(33, 3, 'In language understanding, the levels of knowledge that does not include?', 'Phonological', 'Syntactic', ' Empirical', 'Logical', 3, 'ai'),
(34, 4, 'A model of language consists of the categories which does not include?', 'Language units', 'Role structure of units', 'System constraints', 'Structural units', 4, 'ai'),
(35, 5, 'Among the following which is not a horn clause?', 'p', 'Øp V q', 'p ? q', 'p ? Øq', 4, 'ai'),
(36, 6, 'What is the rule of simple reflex agent?', 'Simple-action rule', 'Condition-action rule', 'Simple & Condition-action rule', 'None of the mentioned', 2, 'ai'),
(37, 7, 'What are the composition for agents in artificial intelligence?', ' Program', 'Architecture', 'Both Program & Architecture', 'None of the mentioned', 3, 'ai'),
(38, 8, 'In which agent does the problem generator is present?', 'Learning agent', 'Observing agent', 'Reflex agent', 'None of the mentioned', 1, 'ai'),
(39, 9, 'Which is used to improve the agents performance?', 'Perceiving', 'Learning', 'Observing', 'None of the mentioned', 2, 'ai'),
(40, 10, 'Which agent deals with happy and unhappy states?', 'Simple reflex agent', 'Model based agent', 'Learning agent', 'Utility based agent', 4, 'ai'),
(41, 1, 'What is Machine learning?', 'The autonomous acquisition of knowledge through the use of computer programs', 'The autonomous acquisition of knowledge through the use of manual programs', 'The selective acquisition of knowledge through the use of computer programs', 'The selective acquisition of knowledge through the use of manual programs', 1, 'ml'),
(42, 2, 'What is a top-down parser?', 'Begins by hypothesizing a sentence (the symbol S) and successively predicting lower level constituents until individual preterminal symbols are written', 'Begins by hypothesizing a sentence (the symbol S) and successively predicting upper level constituents until individual preterminal symbols are written', 'Begins by hypothesizing lower level constituents and successively predicting a sentence (the symbol S)', 'Begins by hypothesizing upper level constituents and successively predicting a sentence (the symbol S)', 1, 'ml'),
(43, 3, 'In LISP, the atom that stands for “true” is _____________', 't', 'ml', 'y', 'time', 1, 'ml'),
(44, 4, 'Natural language understanding is used in _____________', 'natural language interfaces', 'natural language front end', 'text understanding systems', 'all of the mentioned', 4, 'ml'),
(45, 5, 'Claude Shannon described the operation of electronic switching circuits with a system of mathematical logic called _____________', 'LISP', 'XLISP', 'Neural networking', 'Boolean algebra', 3, 'ml'),
(46, 6, 'What is the term used for describing the judgmental or commonsense part of problem solving?', 'Heuristic', 'Critical', 'Value based', 'Analytical', 1, 'ml'),
(47, 7, 'What was originally called the “imitation game” by its creator?', 'The Turing Test', 'LISP', 'The Logic Theorist', 'Cybernetics', 4, 'ml'),
(48, 8, 'Which company offers the LISP machine considered “the most powerful symbolic processor available”?', 'LMI', 'Symbolics', 'Xerox', 'Texas Instruments', 2, 'ml'),
(49, 9, 'A bidirectional feedback loop links computer modeling with _____________', 'artificial science', 'heuristic processing', 'human intelligence', 'cognitive science', 3, 'ml'),
(50, 10, 'In LISP, the function evaluates both and is _____________', 'set', 'setq', 'add', 'eva', 1, 'ml');

-- --------------------------------------------------------

--
-- Table structure for table `regd`
--

CREATE TABLE `regd` (
  `email` varchar(299) NOT NULL,
  `sub` varchar(299) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `regd`
--

INSERT INTO `regd` (`email`, `sub`) VALUES
('77777@gmail.com', 'ml');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `name` varchar(40) NOT NULL,
  `email` varchar(30) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(5) NOT NULL,
  `mobile` int(12) NOT NULL,
  `password` varchar(30) NOT NULL,
  `institute` varchar(50) NOT NULL,
  `course` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`name`, `email`, `dob`, `gender`, `mobile`, `password`, `institute`, `course`) VALUES
('kapil', '77777@gmail.com', '2019-02-03', 'male', 2147483647, 'password', '', 'Mca'),
('Prateek Bharadwaj', 'pppp@gmail.com', '0111-11-11', 'male', 2147483647, '123456789', 'sili', 'abc'),
('Prateek Bharadwaj', 'prat@gmail.com', '0022-02-22', 'male', 2147483647, '147258369', 'sili', 'abc'),
('pppp', 'prateek@gmail.com', '2222-02-22', 'male', 2147483647, '147258369', 'jjjjjj', 'abc'),
('Prateek Bharadwaj', 'prateekb@gmail.com', '2001-05-24', 'male', 2147483647, '123456789', 'mkmm', 'abc'),
('Prateek Bharadwaj', 'prateekbharadwaj2533@gmail.com', '2000-07-20', 'male', 2147483647, '123456789', 'mkmm', 'abc');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `email` varchar(40) NOT NULL,
  `one` int(11) NOT NULL,
  `two` int(11) NOT NULL,
  `three` int(11) NOT NULL,
  `four` int(11) NOT NULL,
  `five` int(11) NOT NULL,
  `six` int(11) NOT NULL,
  `seven` int(11) NOT NULL,
  `eight` int(11) NOT NULL,
  `nine` int(11) NOT NULL,
  `ten` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`email`, `one`, `two`, `three`, `four`, `five`, `six`, `seven`, `eight`, `nine`, `ten`) VALUES
('77777@gmail.com', 2, 3, 0, 0, 0, 0, 0, 0, 0, 0),
('prateekbharadwaj2533@gmail.com', 3, 3, 3, 3, 3, 3, 3, 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
