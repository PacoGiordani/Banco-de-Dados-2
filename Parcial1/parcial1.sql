


select professores.nome, titulacoes.descricao, turmas.descricao, disciplinas.descricao,
	disciplinas.cargaHoraria
FROM professores, titulacoes, turmas, disciplinas, professor_disciplina
WHERE
	professores.id = professor_disciplina.idProfessor AND
    disciplinas.id = professor_disciplina.idDisciplina AND
    turmas.id = professor_disciplina.idTurma AND
    titulacoes.id = professores.idTitulacao
ORDER BY professores.nome, turmas.descricao;