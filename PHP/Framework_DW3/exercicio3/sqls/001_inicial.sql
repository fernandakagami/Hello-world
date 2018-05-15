CREATE DATABASE exercicio2 COLLATE 'utf8mb4_unicode_ci';

CREATE TABLE pedidos (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT ,
    mesa VARCHAR(255) NOT NULL ,
    quantidade INT NOT NULL     
)
ENGINE = InnoDB;
