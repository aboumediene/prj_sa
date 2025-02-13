CREATE DATABASE worddb;
USE worddb;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    INDEX (username),
    UNIQUE (email)
);

INSERT INTO users (username, email) VALUES ('moi', 'said@actar.fr');
