SELECT mentores.nome, COUNT(curtidas.mentor_id) AS curtidas 
FROM mentores 
INNER JOIN curtidas ON curtidas.mentor_id = mentores.mentor_id 
GROUP BY 1 
ORDER BY 1