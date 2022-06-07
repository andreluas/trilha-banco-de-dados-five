SELECT livro_id, nome, maximo_tempo_reserva 
FROM livros
WHERE maximo_tempo_reserva > (
    SELECT AVG(maximo_tempo_reserva)::NUMERIC(10,2) as media_de_tempo 
    FROM livros 
    GROUP BY prateleira
    LIMIT 1
) ORDER BY livro_id;