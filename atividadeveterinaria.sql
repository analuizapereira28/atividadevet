SELECT * FROM VETERINARIO 
WHERE ESPECIALIDADE = 'Dermatologista';

SELECT * FROM PACIENTE p
WHERE idade BETWEEN 2 AND 5;

SELECT * FROM AGENDAMENTO a 
WHERE a.DATA_HORA  BETWEEN '2024/01/01' AND '2024/03/31';

SELECT * FROM MEDICAMENTOS m 
WHERE m.PRECO >25;

SELECT * FROM  RECEITA r 
WHERE r.DATA_EMISSAO >'2024-06-01'
 AND r.ID_AGENDAMENTO = (SELECT a.id_agendamento
                         FROM AGENDAMENTO a
                         WHERE a.id_veterinario = (SELECT v.id_veterinario
                                                     FROM VETERINARIO v
                                                     WHERE v.nome = 'Dr. Ana Souza'))

SELECT * FROM PACIENTE p 
WHERE p.ID_TUTOR = (SELECT t.ID_TUTOR FROM TUTOR t
                    WHERE t.nome = 'Maria Silva')
                    
                    
SELECT * FROM MEDICAMENTOS m 
WHERE m.ID_MEDICAMENTO = (SELECT t.id_receita FROM TUTOR t
                    WHERE t.nome = 'Maria Silva')