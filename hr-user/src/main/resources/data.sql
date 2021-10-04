-- CREATE TABLE tb_user
-- (
--     id       INT PRIMARY KEY AUTO_INCREMENT,
--     name     VARCHAR(30) NOT NULL,
--     email    VARCHAR(50) NOT NULL UNIQUE,
--     password VARCHAR(100)
-- );
--
-- CREATE TABLE tb_role
-- (
--     id       INT PRIMARY KEY AUTO_INCREMENT,
--     role_name VARCHAR(30) NOT NULL
-- );
--
-- CREATE TABLE tb_user_role
-- (
--     user_id INT,
--     role_id INT,
--     FOREIGN KEY (user_id) REFERENCES tb_user (id),
--     FOREIGN KEY (role_id) REFERENCES tb_role (id)
-- );

INSERT INTO tb_user (name, email, password) VALUES ('Nina Brown', 'nina@gmail.com', '$2a$10$NYFZ/8WaQ3Qb6FCs.00jce4nxX9w7AkgWVsQCG6oUwTAcZqP9Flqu');
INSERT INTO tb_user (name, email, password) VALUES ('Leia Red', 'leia@gmail.com', '$2a$10$NYFZ/8WaQ3Qb6FCs.00jce4nxX9w7AkgWVsQCG6oUwTAcZqP9Flqu');

INSERT INTO tb_role (role_name) VALUES ('ROLE_OPERATOR');
INSERT INTO tb_role (role_name) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
