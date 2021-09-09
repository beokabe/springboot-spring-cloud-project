CREATE TABLE tb_user
(
    id       INT PRIMARY KEY AUTO_INCREMENT,
    name     VARCHAR(30) NOT NULL,
    email    VARCHAR(50) UNIQUE,
    password VARCHAR(15) UNIQUE
);

CREATE TABLE tb_role
(
    id       INT PRIMARY KEY AUTO_INCREMENT,
    role_name VARCHAR(30) NOT NULL
);

CREATE TABLE tb_user_role
(
    user_id INT,
    role_id INT,
    FOREIGN KEY (user_id) REFERENCES tb_user (id),
    FOREIGN KEY (role_id) REFERENCES tb_role (id)
);
