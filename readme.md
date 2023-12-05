```
ssh baadalvm@10.17.6.13
cop290@mauve
cd mauve_cop290_newerer/
python3 app.py

mysql -uroot
USE mauve
SHOW TABLES;
+-----------------+
| Tables_in_mauve |
+-----------------+
| chats           |
| comments        |
| friends         |
| posts           |
| users           |
+-----------------+
SELECT * FROM users;
+---------------+------------+----------------+------------+------------------------------+--------+----------+
| username      | password   | name           | phone      | email                        | otp    | verified |
+---------------+------------+----------------+------------+------------------------------+--------+----------+
| H             | 1          | h              | 1          | harshvora.iitdelhi@gmail.com | 560588 | 1        |
| harshvora64   | apple1     | Harsh Vora     | 9967492737 | harshvora64@gmail.com        | 386605 | 1        |
| Khush         | 123456     | Khush          | 9876543234 | harshvora.iitd@gmail.com     | 156098 | 1        |
| KushagraGupta | qwertyuiop | Kushagra Gupta | 9876565431 | guptakushagra343@gmail.com   | 114559 | 1        |
| Rajat         | qwerty     | Rajat Golechha | 9876765431 | rajatgolechha13@gmail.com    | 449647 | 1        |
| sheetal       | apple5     | Sheetal        | 9892962466 | sheetalvora46@gmail.com      | 202167 | 1        |
| Suren         | 123456     | Suren Suren    | 9876543210 | suren1234245@gmail.com       | 960563 | 1        |
| twinkle       | babli      | twinkle        | 9820869402 | tjdedhia@gmail.com           | 718643 | 1        |
+---------------+------------+----------------+------------+------------------------------+--------+----------+
mysqldump -uroot -pcop290@Mauve mauve > mydatabase.sql
mysqldump -uroot -pcop290@Mauve mauve < mydatabase.sql
SHOW COLUMNS FROM users;
CREATE TABLE posts ( post_ID INT UNSIGNED PRIMARY KEY AUTO_INCREMENT, postedBy VARCHAR(100), likes INT, title VARCHAR(100), content VARCHAR(1000));
ALTER TABLE users ADD COLUMN verified varchar(1) AFTER otp;
ALTER TABLE users DROP COLUMN verified;
```
