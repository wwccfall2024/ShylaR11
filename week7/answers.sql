-- Create your tables, views, functions and procedures here!
CREATE SCHEMA destruction;
USE destruction;
CREATE TABLE players (
  player_id INT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  email VARCHAR(50) NOT NULL
);

CREATE TABLE characters (
  character_id INT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
  player_id INT UNSIGNED NOT NULL,
  name VARCHAR(30) NOT NULL,
  level TINYINT UNSIGNED NOT NULL DEFAULT 1,
  FOREIGN KEY (player_id) REFERENCES players (player_id)
);

CREATE TABLE winner (
  character_id INT UNSIGNED PRIMARY KEY NOT NULL,
  name VARCHAR(30) NOT NULL,
  FOREIGN KEY (character_id) REFERENCES characters(character_id) ON DELETE CASCADE
  );
CREATE TABLE character_stats (
  character_id INT UNSIGNED PRIMARY KEY NOT NULL,
  health IN unsigned NOT NULL DEFAULT 100,
  armor INT UNSIGNED NOT NULL DEFAULT 0,
  FOREIGN KEY (character_id) REFERENCES characters(character_id) ON DELETE CASCADE
  );
