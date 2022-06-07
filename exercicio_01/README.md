# Exercício 01

Seu desafio é criar uma query que retorne as seguintes colunas:

* livro_id
* nome
* maximo_tempo_reserva

AND retornar apenas os livros que podem ser reservados por um tempo de reserva maior que a média de tempo 
de reserva de uma mesma prateleira.

<br>

## Resposta

---

PRATELEIRA 23. Média = 10,5 <br>
PRATELEIRA 26. Média = 11,5 <br>

```
SELECT livro_id, nome, maximo_tempo_reserva 
FROM livros
WHERE maximo_tempo_reserva > (
    SELECT AVG(maximo_tempo_reserva)::NUMERIC(10,2) as media_de_tempo 
    FROM livros 
    GROUP BY prateleira
    LIMIT 1
) ORDER BY livro_id;
```

---
<br>
* arquivo "create_database.sql" contém código SQL para criação da base, para facilitar na simulação do exercício. 