-- Create your tables, views, functions and procedures here!
CREATE SCHEMA social;
USE social;
CREATE TABLE user (
  user_id INT AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  email VARCHAR(50) NOT NULL,
  created_on DATETIME DEFAULT CURRENT_TIMESTAMP
  );
