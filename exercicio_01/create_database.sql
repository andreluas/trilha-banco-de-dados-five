CREATE TABLE livros (
    livro_id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    ano INTEGER NOT NULL,
    maximo_tempo_reserva INTEGER NOT NULL,
    prateleira INTEGER NOT NULL
);

INSERT INTO livros (nome, ano, maximo_tempo_reserva, prateleira) VALUES ('Senhor dos Anéis', 1954, 12, 23);
INSERT INTO livros (nome, ano, maximo_tempo_reserva, prateleira) VALUES ('Harry Potter e a Pedra Filosofal', 1997, 9, 23);
INSERT INTO livros (nome, ano, maximo_tempo_reserva, prateleira) VALUES ('O Hobbit', 1937, 18, 26);
INSERT INTO livros (nome, ano, maximo_tempo_reserva, prateleira) VALUES ('Duna', 1984, 5, 26);