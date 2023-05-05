# USE join_test_db;
#
# SHOW TABLES;
#
# SELECT * FROM users;
#
# ALTER TABLE users ADD COLUMN password VARCHAR(225);
#
# DESCRIBE users;
#
# INSERT INTO users (name, email, role_id, password) VALUES
# ('password1'),
# ('password12'),
# ('password123'),
# ('password1234'),
# ('password12345'),
# ('password4321'),
# ('password321'),
# ('password21'),
# ('password10'),
# ('password101'),
# ('password102'),
# ('password103'),
# ('password104'),
# ('password105'),
# ('password501'),
# ('password401'),
# ('password301'),
# ('password201'),
# ('password000'),
# ('password111');
#
# 'bob', 'bob@example.com', 1, NULL
# 'joe', 'joe@example.com', 2, NULL
# 'sally', 'sally@example.com', 3, NULL
# 'adam', 'adam@example.com', 3, NULL
# 'jane', 'jane@example.com', NULL, NULL
# 'mike', 'mike@example.com', NULL, NULL
# 'john_doe', 'john_doe@example.com', 3, NULL
# 'jane_smith', 'jane_smith@example.com', 2, NULL
# 'sam_jones', 'sam_jones@example.com', 1, NULL
# 'joe_brown', 'joe_brown@example.com', NULL, NULL
# 'mary_white', 'mary_white@example.com', 1, NULL
# 'david_kim', 'david_kim@example.com', 3, NULL
# 'lisa_green', 'lisa_green@example.com', NULL, NULL
# 'steve_taylor', 'steve_taylor@example.com', 2, NULL
# 'amy_harris', 'amy_harris@example.com', NULL, NULL
# 'jack_smith', 'jack_smith@example.com', 3, NULL
# 'katie_lee', 'katie_lee@example.com', 3, NULL
# 'mike_johnson', 'mike_johnson@example.com', 3, NULL
# 'sara_davis', 'sara_davis@example.com', 1, NULL
# 'chris_wilson', 'chris_wilson@example.com', 1, 'password000')
# 'jessica_lee', 'jessica_lee@example.com', 1, 'password111');