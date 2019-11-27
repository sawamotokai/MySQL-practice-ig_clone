-- q1
-- SELECT * FROM users
-- ORDER BY created_at 
-- LIMIT 5;


-- q2
-- SELECT DAYNAME(created_at) AS day, COUNT(*) as total FROM users
-- GROUP BY day
-- ORDER BY total DESC
-- LIMIT 1;


-- 3
-- SELECT users.username FROM users
-- LEFT JOIN photos ON users.id = photos.user_id
-- WHERE photos.id IS NULL;


-- 4
-- SELECT photos.id, photos.image_url, COUNT(*) as total
-- FROM photos
-- JOIN likes ON likes.photo_id = photos.id;
-- GROUP BY photos.id

-- SELECT 
--     username,
--     photos.id,
--     photos.image_url, 
--     COUNT(*) AS total
-- FROM photos
-- INNER JOIN likes
--     ON likes.photo_id = photos.id
-- INNER JOIN users
--     ON photos.user_id = users.id
-- GROUP BY photos.id
-- ORDER BY total DESC
-- LIMIT 1;

-- 5
-- SELECT (SELECT COUNT(*) FROM photos)/ (SELECT COUNT(*) FROM users) AS avg;


-- 6
-- SELECT
--   tags.tag_name,
--   COUNT(*) AS total
-- FROM photo_tags
-- INNER JOIN tags
--   on tags.id = photo_tags.tag_id
-- GROUP BY tags.id
-- ORDER BY total DESC
-- LIMIT 5;

-- 7
SELECT username, COUNT(*) AS numLiked 
FROM users
JOIN likes 
  ON users.id = likes.user_id
GROUP BY likes.user_id
HAVING numLiked = (SELECT COUNT(*) FROM photos);