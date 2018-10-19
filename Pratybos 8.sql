
/* Sukuriame lentelę */

CREATE TABLE book_authors
(
    `bookId` int,
    `authorId` int 
);

/* Panaikiname stulpelį authorId */
ALTER TABLE `books` DROP COLUMN `authorId`;

/* Pakeičiam lentelės collation, kad veiktų lietuviškos raidės */

ALTER TABLE `books` convert to character set utf8 collate utf8_unicode_ci;