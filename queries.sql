-- all the users that commented on ia single post (ex. post id 1)
SELECT DISTINCT users.name FROM users INNER JOIN comments ON author_id=users.id WHERE post_id=17;

-- all the comments for post 39
SELECT content FROM comments WHERE post_id=39;

-- all the users that commented on their own post

SELECT DISTINCT users.name FROM ((posts INNER JOIN comments ON posts.author_id=comments.author_id) INNER JOIN users ON users.id=posts.author_id);

-- create a join table for post and user to store likes 
--( a post can have many likes, a user can like many posts )

-- create a query to get all the likes a user has made
SELECT post_id FROM users INNER JOIN likes ON users.id=likes.user_id WHERE users.id=1;

-- create a query to get all users that like a post

SELECT name FROM users INNER JOIN likes ON users.id=likes.user_id WHERE post_id=1;


-- create a query to get all the posts a user has liked
SELECT post_id FROM likes WHERE user_id=1;