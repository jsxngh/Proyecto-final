-- Base de datos: 'blog'

-- --------------------------------------------------------

-- Estructura de tabla para la tabla 'comments'

CREATE TABLE IF NOT EXISTS 'comments' (
  'postID' int(11) NOT NULL,
  'commentID' int(11) NOT NULL,
  'commentDesc' varchar(500) NOT NULL,
  'commentAuthor' varchar(500) NOT NULL,
  'commentTime' timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcado de datos para la tabla 'comments'

INSERT INTO 'comments' ('postID', 'commentID', 'commentDesc', 'commentAuthor', 'commentTime')
VALUES
  (2, 3, 'yuppy', 'qt', '2015-08-22 12:36:50'),
  (2, 4, 'nice :-)', 'qt', '2015-08-22 12:36:59'),
  (2, 5, 'nice op you are great !!', 'qt', '2015-08-22 12:37:21'),
  (6, 7, 'nice :P', 'qt', '2015-08-22 12:41:19'),
  (6, 8, 'cuteee :P', 'qt', '2015-08-22 12:55:13'),
  (6, 9, 'Very good line The college has well-established Central Learning resource centers like Central library, Central Computer Centre, Entrepreneurship Development Cell, Continuing Education Centre and Physical Education Section. The college also has a very active Training & Placement section. ', 'qt', '2015-08-22 13:05:11'),
  (6, 10, 'My comment', 'qt', '2015-08-22 13:14:45'),
  (6, 11, '          Really appriciable _/\\_', 'rtkasodariya', '2015-08-22 13:17:38'),
  (0, 12, 'dklvn', 'qt', '2015-08-22 13:34:42'),
  (6, 13, '          test comment', 'rtkasodariya', '2015-08-23 08:10:05'),
  (6, 14, '          opps', 'rtkasodariya', '2015-08-23 16:30:09'),
  (6, 15, '          I am witness', 'qt', '2015-08-30 13:36:24'),
  (7, 16, '    Thanks', 'qt', '2015-09-02 08:00:32'),
  (7, 17, '          Nice Explanation :-)', 'rtkasodariya', '2015-09-02 08:01:13'),
  (2, 18, '          Very well... Good start..', 'rtkasodariya', '2015-09-02 08:05:22');

-- --------------------------------------------------------

-- Estructura de tabla para la tabla 'messages'

CREATE TABLE IF NOT EXISTS 'messages' (
  'id' int(11) NOT NULL,
  'name' varchar(100) NOT NULL,
  'email' varchar(100) NOT NULL,
  'message' varchar(500) NOT NULL,
  'time' datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcado de datos para la tabla 'messages'

INSERT INTO 'messages' ('id', 'name', 'email', 'message', 'time')
VALUES
  (1, ' rtkasodariya', 'kasodariyarajan@gmail.com', 'dfvd', '2015-09-06 20:03:55'),
  (2, ' spy_007', 'yashgolechha@ymail.com', 'popat', '2015-09-06 20:03:55');

-- Create table 'posts'
CREATE TABLE IF NOT EXISTS 'posts' (
  'postID' int(11) NOT NULL,
  'postTitle' varchar(200) NOT NULL,
  'postDesc' varchar(10000) NOT NULL,
  'postTime' timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  'postTag' varchar(40) NOT NULL,
  'postAuthor' varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Insert data into 'posts'
INSERT INTO 'posts' ('postID', 'postTitle', 'postDesc', 'postTime', 'postTag', 'postAuthor')
VALUES
(2, 'op', 'op', '2015-08-12 09:51:46', 'dp', 'sai'),
(5, 'Hello', '<p>Recently I made one&nbsp;one blog expcode.wordpress.com...</p>', '2015-08-21 14:24:13', 'blog', 'expcode'),
(6, 'ACM NIT Surat', '<p>Sardar Vallabhbhai National Institute Of Technology, Surat is one of the 17 Regional Engineering Colleges...</p>', '2015-08-22 09:55:25', 'acm', 'qt'),
(7, 'GIVEN', '<p><strong>Problem Statement :&nbsp;</strong><br />\r\nGiven an array of stock prices for each day...</p>', '2015-09-06 15:08:35', 'DP', 'qt'),
(16, 'qt1', '<p>qt2</p>\r\n', '2015-09-06 13:44:27', 'qt3', 'qt');

-- Create table 'posts_buffer'
CREATE TABLE IF NOT EXISTS 'posts_buffer' (
  'postID' int(11) NOT NULL,
  'postTitle' varchar(100) NOT NULL,
  'postDesc' varchar(5000) NOT NULL,
  'postTime' timestamp NOT NULL DEFAULT current_timestamp(),
  'postTag' varchar(20) NOT NULL,
  'postAuthor' varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Create table 'users'
CREATE TABLE IF NOT EXISTS 'users' (
  'id' int(11) NOT NULL,
  'username' varchar(40) NOT NULL,
  'firstname' varchar(40) NOT NULL,
  'password' varchar(40) NOT NULL,
  'emailid' varchar(40) NOT NULL,
  'createdon' timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  'usertype' varchar(50) NOT NULL DEFAULT 'normal'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Insert data into 'users'
INSERT INTO 'users' ('id', 'username', 'firstname', 'password', 'emailid', 'createdon', 'usertype')
VALUES
(1, 'qt', 'Rajan Kasodariya', 'qt', 'qt@gmail.com', '2015-08-19 12:57:02', 'normal'),
(2, 'rtkasodariya', 'Rajan', '123', '123@gmail.com', '2015-08-12 18:00:05', 'normal'),
(5, 'expcode', 'Expert Code', 'rajan', 'expcode@gmail.com', '2015-08-21 14:01:26', 'normal'),
(6, 'admin', 'admin', 'admin', 'admin@admin.com', '2015-08-22 13:34:00', 'admin');

-- Create table 'users_buffer'
CREATE TABLE IF NOT EXISTS 'users_buffer' (
  'id' int(11) NOT NULL,
  'username' varchar(20) NOT NULL,
  'firstname' varchar(40) NOT NULL,
  'password' varchar(40) NOT NULL,
  'emailid' varchar(40) NOT NULL,
  'createdon' timestamp NOT NULL DEFAULT current_timestamp(),
  'usertype' varchar(20) NOT NULL DEFAULT 'normal'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Create table 'user_post'
CREATE TABLE IF NOT EXISTS `user_post` (
  `postAuthor` varchar(40) NOT NULL,
  `postID` int(11) NOT NULL,
  `postLikes` int(11) NOT NULL DEFAULT 0,
  `postDisLikes` int(11) NOT NULL,
  `postComments` int(11) NOT NULL DEFAULT 0,
  `postViews` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Insert data into 'user_post'
INSERT INTO `user_post` (`postAuthor`, `postID`, `postLikes`, `postDisLikes`, `postComments`, `postViews`) VALUES
('qt', 1, 4, 0, 0, 20),
('sai', 2, 0, 0, 0, 7),
('expcode', 5, 0, 0, 0, 48),
('qt', 6, 0, 0, 0, 127),
('qt', 7, 0, 0, 0, 10),
('qt', 16, 0, 0, 0, 1);

-- Alter table 'comments' to add a unique key
ALTER TABLE `comments`
  ADD UNIQUE KEY `commentID` (`commentID`);

-- Alter table 'messages' to add a primary key
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

-- Alter table 'posts' to add a primary key and a unique key
ALTER TABLE `posts`
  ADD PRIMARY KEY (`postID`),
  ADD UNIQUE KEY `postTitle` (`postTitle`);

-- Alter table 'posts_buffer' to add a primary key
ALTER TABLE `posts_buffer`
  ADD PRIMARY KEY (`postID`);

-- Alter table 'users' to add a primary key and a unique key
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

-- Alter table 'users_buffer' to add a primary key and a unique key
ALTER TABLE `users_buffer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`,`emailid`);

-- Alter table 'user_post' to add a primary key and a unique key
ALTER TABLE `user_post`
  ADD PRIMARY KEY (`postID`),
  ADD UNIQUE KEY `postID` (`postID`);

-- Alter table 'comments' to modify 'commentID' column with AUTO_INCREMENT
ALTER TABLE `comments`
  MODIFY `commentID` int(11) NOT NULL AUTO_INCREMENT;

-- Set AUTO_INCREMENT value for table 'comments'
ALTER TABLE `comments`
  AUTO_INCREMENT=19;

-- Alter table 'messages' to modify 'id' column with AUTO_INCREMENT
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

-- Set AUTO_INCREMENT value for table 'messages'
ALTER TABLE `messages`
  AUTO_INCREMENT=3;

-- Alter table 'posts' to modify 'postID' column with AUTO_INCREMENT
ALTER TABLE `posts`
  MODIFY `postID` int(11) NOT NULL AUTO_INCREMENT;

-- Set AUTO_INCREMENT value for table 'posts'
ALTER TABLE `posts`
  AUTO_INCREMENT=17;

-- Alter table 'posts_buffer' to modify 'postID' column with AUTO_INCREMENT
ALTER TABLE `posts_buffer`
  MODIFY `postID` int(11) NOT NULL AUTO_INCREMENT;

-- Set AUTO_INCREMENT value for table 'posts_buffer'
ALTER TABLE `posts_buffer`
  AUTO_INCREMENT=10;

-- Alter table 'users' to modify 'id' column with AUTO_INCREMENT
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

-- Set AUTO_INCREMENT value for table 'users'
ALTER TABLE `users`
  AUTO_INCREMENT=8;

-- Alter table 'users_buffer' to modify 'id' column with AUTO_INCREMENT
ALTER TABLE `users_buffer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

-- Set AUTO_INCREMENT value for table 'users_buffer'
ALTER TABLE `users_buffer`
  AUTO_INCREMENT=5;

-- COMMIT statement
COMMIT;



