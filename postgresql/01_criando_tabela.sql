-- Criação da primeira tabela do banco de estudos
CREATE TABLE contatos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    telefone VARCHAR(20),
    cidade VARCHAR(50)
);
