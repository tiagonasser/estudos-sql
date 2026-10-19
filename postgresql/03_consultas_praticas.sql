-- SELECT básico
SELECT * FROM contatos;

-- Filtros
SELECT nome, telefone FROM contatos WHERE cidade = 'Recife';
SELECT nome FROM contatos WHERE nome LIKE 'M%';
SELECT nome FROM contatos WHERE cidade IN ('Olinda', 'Paulista');

-- Ordenação e paginação
SELECT nome, cidade FROM contatos ORDER BY nome ASC;
SELECT nome FROM contatos ORDER BY nome LIMIT 3;
SELECT nome FROM contatos ORDER BY nome LIMIT 3 OFFSET 3;

-- Agrupamento
SELECT cidade, COUNT(*) FROM contatos GROUP BY cidade;
SELECT cidade, COUNT(*) AS total FROM contatos GROUP BY cidade
HAVING COUNT(*) > 2;

-- UPDATE com conferência prévia (cerimônia profissional)
SELECT * FROM contatos WHERE id = 5;
UPDATE contatos SET cidade = 'Recife' WHERE id = 5;

-- Confirmação final (ORDER BY garante a ordem lógica)
SELECT * FROM contatos ORDER BY id;
