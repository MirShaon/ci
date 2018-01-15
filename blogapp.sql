-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2018 at 04:02 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blogapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `user_id`, `name`, `created_at`) VALUES
(2, 2, 'Technology', '2017-12-18 17:57:11'),
(6, 0, 'Blog', '2017-12-20 18:22:40');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `name`, `email`, `body`, `created_at`) VALUES
(1, 18, 'Mir Mosraki Shaon', 'mosraki@gmail.com', 'Thus What', '2017-12-19 15:55:11'),
(2, 16, 'Mir Mosraki Shaon', 'mosraki@gmail.com', 'This is Test Comment', '2017-12-20 10:24:22'),
(3, 16, 'Nandan', 'admin@gmail.com', 'This is Another Test  Comment', '2017-12-20 10:25:00'),
(4, 16, 'Nandan', 'komolasundori@gmail.com', 'This is Test Comment By Nandan From Mymensingh\r\n', '2017-12-20 10:26:04'),
(5, 14, 'Mir Mosraki Shaon', 'mosraki@gmail.com', 'This is test Comment', '2017-12-20 11:04:27');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `post_image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `body`, `post_image`, `created_at`) VALUES
(1, 1, 1, 'Xerone IT ', 'Xerone-IT', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam in lacus vel sem laoreet porttitor. Ut sed mattis erat. Nullam viverra rutrum orci, ac hendrerit quam luctus ut. Integer ullamcorper ante et tellus facilisis iaculis. In a convallis turpis. Aenean accumsan vel magna sit amet congue. Sed quis consectetur enim. Ut aliquet lacus id lorem sodales tristique. Aliquam ut dui commodo, accumsan magna et, pharetra sem.', '', '2017-12-18 11:00:48'),
(2, 1, 1, 'Create Post ', 'Create-Post', ' Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dolore quis eligendi aliquid explicabo voluptatem adipisci quisquam. Quam, quibusdam harum, iste debitis, nam nisi est doloremque veniam ipsum quod exercitationem cumque.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dolore quis eligendi aliquid explicabo voluptatem adipisci quisquam. Quam, quibusdam harum, iste debitis, nam nisi est doloremque veniam ipsum quod exercitationem cumque.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dolore quis eligendi aliquid explicabo voluptatem adipisci quisquam. Quam, quibusdam harum, iste debitis, nam nisi est doloremque veniam ipsum quod exercitationem cumque.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dolore quis eligendi aliquid explicabo voluptatem adipisci quisquam. Quam, quibusdam harum, iste debitis, nam nisi est doloremque veniam ipsum quod exercitationem cumque.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dolore quis eligendi aliquid explicabo voluptatem adipisci quisquam. Quam, quibusdam harum, iste debitis, nam nisi est doloremque veniam ipsum quod exercitationem cumque.', '', '2017-12-18 11:45:07'),
(3, 2, 1, 'This is something', 'This-is-something', 'This has been edited. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dolore quis eligendi aliquid explicabo voluptatem adipisci quisquam. Quam, quibusdam harum, iste debitis, nam nisi est doloremque veniam ipsum quod exercitationem cumque.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dolore quis eligendi aliquid explicabo voluptatem adipisci quisquam. Quam, quibusdam harum, iste debitis, nam nisi est doloremque veniam ipsum quod exercitationem cumque.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dolore quis eligendi aliquid explicabo voluptatem adipisci quisquam. Quam, quibusdam harum, iste debitis, nam nisi est doloremque veniam ipsum quod exercitationem cumque. ', '', '2017-12-18 11:45:41'),
(14, 1, 1, 'Post', 'Post', '<p>Simple blog built on CodeigniterSimple blog built on CodeigniterSimple blog built on CodeigniterSimple blog built on CodeigniterSimple blog built on CodeigniterSimple blog built on CodeigniterSimple blog built on CodeigniterSimple blog built on CodeigniterSimple blog built on CodeigniterSimple blog built on CodeigniterSimple blog built on Codeigniter</p>\r\n\r\n<p>thisakdaksdjsd</p>\r\n', '', '2017-12-18 18:05:02'),
(16, 2, 1, 'Testing Post', 'Testing-Post', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque metus magna, vehicula vitae tincidunt in, porta sit amet est. Suspendisse iaculis sapien quis fringilla pulvinar. Maecenas dignissim erat sit amet gravida ultricies. Ut a nisi purus. In eget nisi augue. Vestibulum tellus ipsum, tincidunt non velit in, commodo efficitur dui. Nullam risus velit, ultrices sed scelerisque in, dignissim sed nulla. Phasellus id molestie sapien. In tortor leo, rutrum et sapien a, molestie pretium metus. Donec quam felis, consequat sit amet quam quis, scelerisque pretium nisi.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque metus magna, vehicula vitae tincidunt in, porta sit amet est. Suspendisse iaculis sapien quis fringilla pulvinar. Maecenas dignissim erat sit amet gravida ultricies. Ut a nisi purus. In eget nisi augue. Vestibulum tellus ipsum, tincidunt non velit in, commodo efficitur dui. Nullam risus velit, ultrices sed scelerisque in, dignissim sed nulla. Phasellus id molestie sapien. In tortor leo, rutrum et sapien a, molestie pretium metus. Donec quam felis, consequat sit amet quam quis, scelerisque pretium nisi.</p>\r\n', 'GP-19-Minutes-7-TK-Offer.jpg', '2017-12-19 05:20:07'),
(18, 5, 1, 'Developer Post ', 'Developer-Post', '<p>Every one of this list has its pros and cons, but we choose the first one because it was easy to implement and understand, also it is most popular with many developers.</p>\r\n\r\n<p>It is matter also to know that hierarchal data has many variety usages not just threaded comments but you can use the drop-down menus and&nbsp;<a href=\"http://webeasystep.com/blog/view_article/codeigniter_nested_categories\">nested product categories</a>.</p>\r\n\r\n<p>Every one of this list has its pros and cons, but we choose the first one because it was easy to implement and understand, also it is most popular with many developers.</p>\r\n\r\n<p>It is matter also to know that hierarchal data has many variety usages not just threaded comments but you can use the drop-down menus and&nbsp;<a href=\"http://webeasystep.com/blog/view_article/codeigniter_nested_categories\">nested product categories</a>.</p>\r\n', '1505289718101.jpg', '2017-12-19 11:44:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `register_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `zipcode`, `email`, `username`, `password`, `register_date`) VALUES
(1, 'Mir Mosraki Shaon', '434343', 'mosraki@gmail.com', 'MirShaon', '5b623c0ce4b599a02186a717acf22427', '2017-12-20 17:15:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
