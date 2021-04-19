

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `regd` (
  `1` varchar(299) NOT NULL,
  `2` varchar(299) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `question` (
  `id` int(3) NOT NULL,
  `question` varchar(250) NOT NULL,
  `option1` varchar(250) NOT NULL,
  `option2` varchar(250) NOT NULL,
  `option3` varchar(250) NOT NULL,
  `option4` varchar(250) NOT NULL,
  `answer` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


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



ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `registration`
  ADD PRIMARY KEY (`email`);


ALTER TABLE `result`
  ADD PRIMARY KEY (`email`);

