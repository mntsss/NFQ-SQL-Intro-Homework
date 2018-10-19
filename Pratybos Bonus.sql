SELECT  `news`.`date` as 'newsDate', `news`.`text` as 'newsText', `comments`.`date` as 'commentDate', `comments`.`text` as 'commentText'
FROM `news`
INNER JOIN (SELECT MAX(`comments`.`commentId`) as `lastId`, `comments`.`newsId` FROM `comments` GROUP BY `newsId`) AS `commentsLast` ON (`commentsLast`.`newsId` = `news`.`newsId`)
INNER JOIN `comments` ON (`comments`.`commentId` = `commentsLast`.`lastId`);