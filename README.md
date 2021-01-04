```sql
CREATE TABLE users (
  id serial,
  email varchar(255) not null,
  encrypted_password varchar(255) not null
)

SELECT * FROM users;

INSERT INTO users (email, encrypted_password) VALUES ('kiara@gmail.com', '123')

UPDATE users SET encrypted_password = '1234' WHERE id = 1
```



```sql
CREATE TABLE photos (
  id serial,
  user_id integer not null, 
  url varchar(255) not null
)
INSERT INTO photos (user_id, url) VALUES (1,'http://lorempixel.com.br/500/400/?2')

SELECT * FROM photos;


```