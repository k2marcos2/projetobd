-- Tabela de Pacientes
CREATE TABLE Pacientes (
    id_paciente SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE,
    telefone VARCHAR(20),
    email VARCHAR(100) UNIQUE
);

-- Tabela de Médicos
CREATE TABLE Medicos (
    id_medico SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    especialidade VARCHAR(100),
    CRM VARCHAR(20) UNIQUE NOT NULL
);

-- Tabela de Consultas
CREATE TABLE Consultas (
    id_consulta SERIAL PRIMARY KEY,
    data_hora TIMESTAMP NOT NULL,
    status VARCHAR(20) CHECK (status IN ('agendada', 'realizada', 'cancelada')),
    id_paciente INTEGER REFERENCES Pacientes(id_paciente),
    id_medico INTEGER REFERENCES Medicos(id_medico)
);

-- Tabela de Exames
CREATE TABLE Exames (
    id_exame SERIAL PRIMARY KEY,
    tipo VARCHAR(50),
    resultado TEXT,
    id_consulta INTEGER REFERENCES Consultas(id_consulta)
);

-- Tabela de Agendamentos (Opcional, separando da consulta)
CREATE TABLE Agendamentos (
    id_agendamento SERIAL PRIMARY KEY,
    data_solicitacao TIMESTAMP NOT NULL,
    id_paciente INTEGER REFERENCES Pacientes(id_paciente),
    id_medico INTEGER REFERENCES Medicos(id_medico)
);

-- Tabela de Prontuário Eletrônico
CREATE TABLE ProntuariosEletronicos (
    id_prontuario SERIAL PRIMARY KEY,
    historico TEXT,
    id_paciente INTEGER REFERENCES Pacientes(id_paciente)
);
CREATE TABLE especialidade (
    id_especialidade SERIAL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL UNIQUE
);
ALTER TABLE medicos
ADD COLUMN id_especialidade INT,
ADD FOREIGN KEY (id_especialidade) REFERENCES ESPECIALIDADE(id_especialidade);






