INSERT INTO `Authors` (`name`) VALUES ('George Stalinski'), ('Carl Goldman');
INSERT INTO `Books` (`authorId`, `title`, `year`) VALUES (8, 'Introduction to M52', '2014'), (8, 'Rebuilding VANOS from scratch', '1998'), (9, 'PHP 7.2 introduction', '2017');
UPDATE `Books` SET `authorId` = 9 WHERE `bookId` = 5;

