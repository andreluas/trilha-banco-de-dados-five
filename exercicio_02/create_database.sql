CREATE TABLE posts (
    post_id SERIAL PRIMARY KEY,
    mentor_id SERIAL,
    descricao VARCHAR(255) NOT NULL,
    
    FOREIGN KEY (mentor_id) REFERENCES mentores (mentor_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
);

CREATE TABLE curtidas (
    mentor_id SERIAL,
    post_id SERIAL,
    
    PRIMARY KEY (mentor_id, post_id),
    FOREIGN KEY (mentor_id) REFERENCES mentores (mentor_id),
    FOREIGN KEY (post_id) REFERENCES posts (post_id)
);

INSERT INTO mentores (nome, sala_de_aula) VALUES ('Warren Buffett', 'Sala de Aula Torvalds');
INSERT INTO mentores (nome, sala_de_aula) VALUES ('Steven Spielberg', 'Sala de Aula Gates');
INSERT INTO mentores (nome, sala_de_aula) VALUES ('Socrates', 'Sala de Aula Jobs');

INSERT INTO posts (mentor_id, descricao) VALUES (1, 'Post 01');
INSERT INTO posts (mentor_id, descricao) VALUES (1, 'Post 02');
INSERT INTO posts (mentor_id, descricao) VALUES (3, 'Post 03');

INSERT INTO curtidas (mentor_id, post_id) VALUES (1, 1);
INSERT INTO curtidas (mentor_id, post_id) VALUES (3, 2);
INSERT INTO curtidas (mentor_id, post_id) VALUES (3, 3);