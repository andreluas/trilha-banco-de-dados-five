SELECT mentores.sala_de_aula, AVG(curtidas.post_id)::NUMERIC(10,1) as media
FROM mentores 
INNER JOIN curtidas ON curtidas.mentor_id = mentores.mentor_id 
GROUP BY mentores.sala_de_aula