CREATE DATABASE wordpress;
CREATE USER 'jsubel'@'%' IDENTIFIED BY 'Blueberry';
-- For GRANT ALL privileges for me giving this user full control over the wordpress database
-- These privileges are for wordpress and apply to all tables in this database,
-- which is denoted by .* as follows
GRANT ALL PRIVILEGES ON wordpress.* TO 'jsubel'@'%';
-- Saving your changes
FLUSH PRIVILEGES;

-- To change the authentication or database resource characteristics of a database user
-- To allow a proxy server to connect as a client without authentication
ALTER USER 'root'@'localhost' IDENTIFIED BY 'RootBlueberry';


-- for command help: http://g2pc1.bu.edu/~qzpeng/manual/MySQL%20Commands.htm
-- for login:
-- docker exec -it mariadb bash
-- mysql; (will not work)
-- mysql -u jsubel -pBLueberry;
-- show databases;
-- use wordpress;
-- show tables;
-- exit;