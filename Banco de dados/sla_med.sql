INSERT INTO pacientes  (nome, data_nascimento, telefone, email)
VALUES ('Ana Silva', '1990-05-15', '(11) 99999-8888', 'ana@email.com');
SELECT * FROM pacientes WHERE email = 'ana@email.com';

INSERT INTO ESPECIALIDADE (nome) VALUES ('Cardiologia');
INSERT INTO ESPECIALIDADE (nome) VALUES ('Pediatria');

INSERT INTO medicos  (nome, CRM, id_especialidade)
VALUES ('Dr. Carlos Souza', 'CRM/SP-12345', 1);

INSERT INTO consultas (data_hora, status, id_paciente, id_medico)
VALUES ('2024-10-05 14:30:00', 'agendada', 1, 1);


INSERT INTO exames (tipo, resultado, id_consulta)
VALUES ('Sangue', 'Colesterol total: 180 mg/dL', 1);
