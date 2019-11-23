CREATE TABLE `users` (
  `user_id` int PRIMARY KEY,
  `name` varchar(255),
  `email` varchar(255),
  `nofriends` varchar(255),
  `DOB` datetime,
  `continent_name` varchar(255)
);

CREATE TABLE `posts` (
  `posts_id` int PRIMARY KEY,
  `user_id` int,
  `post_timestamp` timestamp,
  `post_data` ENUM ('varchar', 'imagetype', 'videotype'),
  `no_likes` int,
  `no_comments` int
);

CREATE TABLE `comments` (
  `comment_id` int PRIMARY KEY,
  `comment_post_id` int,
  `comment_user_id` int,
  `comment_timestamp` timestamp,
  `comment_data` ENUM ('varchar', 'imagetype', 'videotype'),
  `comment_likes` int,
  `comment_like_id` int,
  `replies` int
);

CREATE TABLE `likes` (
  `like_id` int PRIMARY KEY,
  `like_user_id` int,
  `like_post_id` int,
  `like_comment_id` int,
  `like_timestamp` timestamp
);

CREATE TABLE `replies` (
  `replies_id` int PRIMARY KEY,
  `replies_user_id` int,
  `replies_comment_id` int,
  `replies_timestamp` timestamp,
  `replies_type` ENUM ('varchar', 'imagetype', 'videotype')
);

ALTER TABLE `posts` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

ALTER TABLE `comments` ADD FOREIGN KEY (`comment_post_id`) REFERENCES `posts` (`posts_id`);

ALTER TABLE `comments` ADD FOREIGN KEY (`comment_user_id`) REFERENCES `users` (`user_id`);

ALTER TABLE `comments` ADD FOREIGN KEY (`comment_like_id`) REFERENCES `likes` (`like_id`);

ALTER TABLE `likes` ADD FOREIGN KEY (`like_user_id`) REFERENCES `users` (`user_id`);

ALTER TABLE `likes` ADD FOREIGN KEY (`like_post_id`) REFERENCES `posts` (`posts_id`);

ALTER TABLE `likes` ADD FOREIGN KEY (`like_comment_id`) REFERENCES `comments` (`comment_id`);

ALTER TABLE `replies` ADD FOREIGN KEY (`replies_user_id`) REFERENCES `users` (`user_id`);

ALTER TABLE `replies` ADD FOREIGN KEY (`replies_comment_id`) REFERENCES `comments` (`comment_id`);
