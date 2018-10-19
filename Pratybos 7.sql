CREATE TABLE book_authors
(
    `bookId` int,
    `authorId` int 
);
INSERT INTO `book_authors` SELECT `bookId`, `authorId` FROM `books` WHERE `authorId` IS NOT NULL;
ALTER TABLE `books` DROP COLUMN `authorId`;
DELETE `book_authors` FROM `book_authors` LEFT JOIN `authors` ON (`authors`.`authorId` = `book_authors`.`authorId`) WHERE `authors`.`authorId` IS NULL;

SELECT `books`.`title`, GROUP_CONCAT(`authors`.`name`) as `authorList` FROM `book_authors` LEFT JOIN `books` ON `book_authors`.`bookId` = `books`.`bookId`
LEFT JOIN `authors` ON `book_authors`.`authorId` = `authors`.`authorId`
GROUP BY `books`.`title`;

ALTER TABLE `books` convert to character set utf8 collate utf8_unicode_ci;