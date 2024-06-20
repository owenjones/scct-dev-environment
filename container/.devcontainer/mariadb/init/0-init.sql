-- phpmyadmin configuration user and database
CREATE USER 'phpmyadmin'@'%' IDENTIFIED BY '60cfd180192e88712c3d1d638bba67730ce5';
GRANT SELECT, INSERT, UPDATE, DELETE ON `phpmyadmin`.* TO 'phpmyadmin'@'%';

-- setup scct user privileges
GRANT ALL PRIVILEGES ON `scct\_%`.* TO 'scct'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON `sakila`.* TO 'scct'@'%';
GRANT ALL PRIVILEGES ON `studentsreg`.* TO 'scct'@'%';