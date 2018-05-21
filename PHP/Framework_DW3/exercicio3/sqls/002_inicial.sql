CREATE DATABASE exercicio2 COLLATE 'utf8mb4_unicode_ci';

CREATE TABLE lanches (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT ,
    nome VARCHAR(255) NOT NULL ,

)
ENGINE = InnoDB;

ALTER TABLE lanches ADD COLUMN lanche_id INT NOT NULL;

ALTER TABLE lanches ADD CONSTRAINT lanche_id FOREIGN KEY (lanche_id) REFERENCES pedidos(id)
