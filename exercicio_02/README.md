# Exercício 02
## Parte 01
Construa uma query que retorne o nome dos mentores e o número de curtidas totais que cada mentor recebeu por todos os seus posts.

```
SELECT mentores.nome, COUNT(curtidas.mentor_id) AS curtidas 
FROM mentores 
INNER JOIN curtidas ON curtidas.mentor_id = mentores.mentor_id 
GROUP BY 1 
ORDER BY 1
```

---

## Parte 02
Construa uma query que retorna a sala de aula e o post_id para cada uma das curtidas que foi dada. 
O post_id é o identificador da postagem e a sala de aula é onde o mentor que deu a curtida trabalha.

```
SELECT mentores.sala_de_aula, curtidas.post_id 
FROM mentores 
INNER JOIN curtidas ON curtidas.mentor_id = mentores.mentor_id 
GROUP BY 1, 2 
ORDER BY 2
```

---

## Parte 03
Utilizando com base a query da Parte 02, construa uma query que retorna uma média de número de curtidas por post em cada sala de aula.

```
SELECT mentores.sala_de_aula, AVG(curtidas.post_id)::NUMERIC(10,1) as media
FROM mentores 
INNER JOIN curtidas ON curtidas.mentor_id = mentores.mentor_id 
GROUP BY mentores.sala_de_aula
```

---
<br>
* arquivo "create_database.sql" contém código SQL para criação da base, para facilitar na simulação do exercício. 