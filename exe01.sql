CREATE DATABASE db_empresarh;

USE db_empresarh;

CREATE TABLE tb_colaboradores(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    data_nascimento DATE NOT NULL,
    cpf VARCHAR(11) NOT NULL UNIQUE,
    salario DECIMAL(10,2) NOT NULL,
    cargo VARCHAR(255) NOT NULL,
    ativo BOOLEAN NOT NULL
);

INSERT INTO tb_colaboradores (nome, data_nascimento, cpf, salario, cargo, ativo)
VALUES ("José da Silva", "1998-12-18", "12345678901", 4500.00, "DBA", true),
("Maria Souza", "1977-09-20", "12345678902", 3000.00, "Desenvolvedora Frontend Sr.", true),
("Silvia Machado", "1999-02-02", "12345678903", 1500.00, "Desenvolvedora Backend Jr.", true),
("Marcos Paulo", "1985-07-11", "12345678904", 8000.00, "Tech Lead", true),
("Muriel Sanches", "1998-09-27", "12345678905", 6000.00, "Desenvolvedora Backend Sr.", true);

SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET salario = 1900.00 WHERE id = 3;

