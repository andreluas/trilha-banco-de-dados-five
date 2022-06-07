SELECT mentores.sala_de_aula, curtidas.post_id 
FROM mentores 
INNER JOIN curtidas ON curtidas.mentor_id = mentores.mentor_id 
GROUP BY 1, 2 
ORDER BY 2