

------------------------------------RECOMPENSAS--------------------------------------------------

--Criacao da tabela recompensas

CREATE TABLE byteBusters.recompensas (
                id_recompensa NUMERIC(38) NOT NULL,
                meta VARCHAR NOT NULL,
                nome_recompensa VARCHAR NOT NULL,
                CONSTRAINT recompensas_pk PRIMARY KEY (id_recompensa)
);

--Comentario da tabela recompensas

COMMENT ON TABLE byteBusters.recompensas IS 'Tabela de recompensas após o aluno completar um objetivo.';

--Comentario da coluna id_recompensa

COMMENT ON COLUMN byteBusters.recompensas.id_recompensa IS 'Primary Key da tabela de recompensas.';

--Comentario da coluna meta

COMMENT ON COLUMN byteBusters.recompensas.meta IS 'Objetivo/meta que o aluno precisa completar para ganhar a recompensa. (Normalmente em quantidade de pontos.)';

--Comentario da coluna nome_recompensa

COMMENT ON COLUMN byteBusters.recompensas.nome_recompensa IS 'Nome da recompensa que você conseguiu.';

--------------------------------------EMAIL----------------------------------------------------

--Criar a tabela email

CREATE TABLE byteBusters.email (
    id_email NUMERIC(38) NOT NULL, 
    nome VARCHAR NOT NULL,
    CONSTRAINT email_pk PRIMARY KEY (id_email)
);

--Comentario da tabela

COMMENT ON TABLE byteBusters.email IS 'Tabela com todos os emails da faculdade (nao foi aplicado a desnormalizacao)';

--Comentario da coluna id_email

COMMENT ON COLUMN byteBusters.email.id_email IS 'Primary Key da tabela Email';

--Comentario da coluna nome

COMMENT ON COLUMN byteBusters.email.nome IS 'Nome do email (email em si)';

------------------------------------ENDERECOS--------------------------------------------------

--Criacao da tabela endrecos

CREATE TABLE byteBusters.enderecos (
                id_endereco NUMERIC(38) NOT NULL,
                cep VARCHAR(12) NOT NULL,
                logradouro VARCHAR,
                numero NUMERIC(38),
                CONSTRAINT endere_os_pk PRIMARY KEY (id_endereco)
);

--Comentario da tabela enderecos

COMMENT ON TABLE byteBusters.enderecos IS 'Tabela referente aos enderecos de cada pessoa (aluno ou funcionário) da empresa.';

--Comentario da coluna CEP

COMMENT ON COLUMN byteBusters.endereços.cep IS 'CEP de cada endereço.';

--Comentario da coluna logradouro

COMMENT ON COLUMN byteBusters.endereços.logradouro IS 'Logradouro de cada endereço.';

--Comentario da coluna numero

COMMENT ON COLUMN byteBusters.endereços.numero IS 'Número de cada endereço.';


------------------------------------TELEFONES--------------------------------------------------

--Criacao da tabela telefones

CREATE TABLE byteBusters.telefones (
                id_telefone NUMERIC(38) NOT NULL,
                telefone1 VARCHAR NOT NULL,
                telefone2 VARCHAR,
                telefone3 VARCHAR,
                CONSTRAINT telefones_pk PRIMARY KEY (id_telefone)
);

--Comentario da tabela telefones

COMMENT ON TABLE byteBusters.telefones IS 'Tabela referente aos telefones dos alunos/professores.';

--Comentario da coluna id_telefone

COMMENT ON COLUMN byteBusters.telefones.id_telefone IS 'Primary Key da tabela "telefones".';

--Comentario da coluna telefone1

COMMENT ON COLUMN byteBusters.telefones.telefone1 IS 'Telefone celular pessoal.';

--Comentario da coluna telefone2

COMMENT ON COLUMN byteBusters.telefones.telefone2 IS 'Telefone residencial.';

--Comentario da coluna telefone emergencia

COMMENT ON COLUMN byteBusters.telefones.telefone3 IS 'Telefone de emergência.';


------------------------------------COORDENADORES--------------------------------------------------


--Criacao da tabela coordenadores

CREATE TABLE byteBusters.coordenadores (
                id_coordenador NUMERIC(38) NOT NULL,
                cpf_coordenador VARCHAR NOT NULL,
                nome VARCHAR NOT NULL,
                dataNascimento DATE NOT NULL,
                id_email NUMERIC(38),
                id_endereco NUMERIC(38),
                id_telefone NUMERIC(38),
                CONSTRAINT coordenadores_pk PRIMARY KEY (id_coordenador)
);

--Comentario da tabela coordenadores

COMMENT ON TABLE byteBusters.coordenadores IS 'Tabela referente aos coordenadores de cada curso.';

--Comentario da coluna id_coordenador

COMMENT ON COLUMN byteBusters.coordenadores.id_coordenador IS 'Primary Key da tabela "coordenadores".';

--Comentario da coluna cpf_coordenador

COMMENT ON COLUMN byteBusters.coordenadores.cpf_coordenador IS 'CPF de cada coordenador.';

--Comentario da coluna nome do coordenador

COMMENT ON COLUMN byteBusters.coordenadores.nome IS 'Nome de cada coordenador.';

--Comentario da coluna dataNascimento

COMMENT ON COLUMN byteBusters.coordenadores.dataNascimento IS 'dataNascimento de cada coordenador.';

--Comentario da coluna id_endereco

COMMENT ON COLUMN byteBusters.coordenadores.id_endereco IS 'Foreign Key da tabela "endereços".';

--Comentario da coluna id_telefone

COMMENT ON COLUMN byteBusters.coordenadores.id_telefone IS 'Foreign Key da tabela "telefones".';


------------------------------------DEPARTAMENTOS--------------------------------------------------


--Criacao da tabela departamentos

CREATE TABLE byteBusters.departamentos (
                id_departamento NUMERIC(38) NOT NULL,
                nome_departamento VARCHAR NOT NULL,
                id_coordenador NUMERIC(38),
                id_endereco NUMERIC(38),
                CONSTRAINT departamentos_pk PRIMARY KEY (id_departamento)
);

--Comnetario da tabela departamentos

COMMENT ON TABLE byteBusters.departamentos IS 'Tabela referente aos departamentos da empresa.';

--Comentario da coluna id_departamento

COMMENT ON COLUMN byteBusters.departamentos.id_departamento IS 'Primary Key da tabela "departamentos".';

--Comentario da coluna nome do departamento

COMMENT ON COLUMN byteBusters.departamentos.nome_departamento IS 'Nome de cada departamento existente na empresa.';

--Comentario da coluna id_coordenador

COMMENT ON COLUMN byteBusters.departamentos.id_coordenador IS 'Foreign Key da tabela "coordenadores".';

--Comentario da coluna id_endereco

COMMENT ON COLUMN byteBusters.departamentos.id_endereco IS 'Foreign Key da tabela "endereços".';


------------------------------------CARGOS--------------------------------------------------


--Criacao da tabela cargos

CREATE TABLE byteBusters.cargos (
                id_cargo NUMERIC(38) NOT NULL,
                nome_cargo VARCHAR NOT NULL,
                id_departamento NUMERIC(38),
                CONSTRAINT cargos_pk PRIMARY KEY (id_cargo)
);

--Comentario da tabela cargos 

COMMENT ON TABLE byteBusters.cargos IS 'Cargos dos funcionários da empresa. ';

--Comentario da coluna id_cargo

COMMENT ON COLUMN byteBusters.cargos.id_cargo IS 'Primary Key da tabela "cargos".';

--Comentario da coluna nome do cargo

COMMENT ON COLUMN byteBusters.cargos.nome_cargo IS 'Nome de cada cargo exercido.';

--Comentario da coluna id_departamento

COMMENT ON COLUMN byteBusters.cargos.id_departamento IS 'Foreign Key da tabela "departamentos".';


------------------------------------PROFESSORES--------------------------------------------------

--Criacao da tabela professores

CREATE TABLE byteBusters.professores (
                id_professor NUMERIC(38) NOT NULL,
                cpf_professor VARCHAR NOT NULL,
                id_endereco NUMERIC(38),
                id_telefone NUMERIC(38),
                id_email NUMERIC(38),
                nome VARCHAR NOT NULL,
                dataNascimento DATE NOT NULL,
                formacao VARCHAR,
                CONSTRAINT professores_pk PRIMARY KEY (id_professor)
);

--Comentario da tabela professores

COMMENT ON TABLE byteBusters.professores IS 'Tabela referente aos professores dos cursos.';

--Comentario da coluna id_professor

COMMENT ON COLUMN byteBusters.professores.id_professor IS 'Primary Key da tabela "professores".';

--Comentario da coluna cpf do professor

COMMENT ON COLUMN byteBusters.professores.cpf_professor IS 'CPF de cada professor contratado.';

--Comentario da coluna id_endereco

COMMENT ON COLUMN byteBusters.professores.id_endereco IS 'Foreign Key da tabela "endereços".';

--Comentario da coluna id_telefone

COMMENT ON COLUMN byteBusters.professores.id_telefone IS 'Foreign Key da tabeka "telefones".';

--Comentario da coluna nome do professor

COMMENT ON COLUMN byteBusters.professores.nome IS 'Nome de cada professor contratado.';

--Comentario da coluna dataNascimento

COMMENT ON COLUMN byteBusters.professores.dataNascimento IS 'dataNascimento de cada professor.';

--Comentario da coluna formacao do professor

COMMENT ON COLUMN byteBusters.professores.formacao IS 'Formação de cada professor.';


------------------------------------CURSOS--------------------------------------------------

--Criacao da tabela cursos

CREATE TABLE byteBusters.cursos (
                id_curso NUMERIC(38) NOT NULL,
                nome_curso VARCHAR(80) NOT NULL,
                duracao VARCHAR(50) NOT NULL,
                id_professor NUMERIC(38),
                id_departamento NUMERIC(38),
                CONSTRAINT cursos_pk PRIMARY KEY (id_curso)
);

--Comentario da tabela cursos

COMMENT ON TABLE byteBusters.cursos IS 'Tabela de cursos';

--Comentario da coluna id_curso

COMMENT ON COLUMN byteBusters.cursos.id_curso IS 'Primary Key da tabela "cursos".';

--Comentario da coluna nome_curso

COMMENT ON COLUMN byteBusters.cursos.nome_curso IS 'Nome de cada curso.';

--Comentario da coluna duracao 

COMMENT ON COLUMN byteBusters.cursos.duracao IS 'Duração de cada curso.';

--Comentario da coluna id_professor

COMMENT ON COLUMN byteBusters.cursos.id_professor IS 'Foreign Key da tabela "professores".';

--Comentario da coluna id_departamento 

COMMENT ON COLUMN byteBusters.cursos.id_departamento IS 'Foreign Key da tabela "departamentos".';

--------------------------------ALUNOS------------------------------------------------

--Criacao da tabela alunos

CREATE TABLE byteBusters.alunos (
                id_aluno NUMERIC(38) NOT NULL,
                cpf_aluno VARCHAR NOT NULL,
                dataNascimento DATE NOT NULL,
                nome VARCHAR NOT NULL,
                id_email NUMERIC(38),
                id_telefone NUMERIC(38),
                id_endereco NUMERIC(38),
                id_cargo NUMERIC(38),
                CONSTRAINT alunos_pk PRIMARY KEY (id_aluno)
);

--Comentario da tabela alunos

COMMENT ON TABLE byteBusters.alunos IS 'Tabela que identifica todos os alunos que são funcionários da empresa e participam da universidade.';

--Comentario da coluna id_aluno

COMMENT ON COLUMN byteBusters.alunos.id_aluno IS 'Primary Key da tabela "alunos".';

--Comentario da coluna cpf_aluno

COMMENT ON COLUMN byteBusters.alunos.cpf_aluno IS 'CPF dos alunos.';

--Comentario da coluna dataNascimento

COMMENT ON COLUMN byteBusters.alunos.dataNascimento IS 'dataNascimento dos alunos.';

--Comentario da coluna nome do aluno

COMMENT ON COLUMN byteBusters.alunos.nome IS 'Nome dos alunos.';

--Comentario da coluna id_telefone

COMMENT ON COLUMN byteBusters.alunos.id_telefone IS 'Foreign Key da tabela "telefones".';

--Comentario da coluna id_endereco

COMMENT ON COLUMN byteBusters.alunos.id_endereco IS 'Foreign Key da tabela "endereços".';

--Comentario da coluna id_cargo

COMMENT ON COLUMN byteBusters.alunos.id_cargo IS 'Foreign Key da tabela "cargos".';


---------------------------------RANKING---------------------------------------------

--Criacao da tabela ranking

CREATE TABLE byteBusters.ranking (
                id_aluno NUMERIC(38) NOT NULL,
                colocacao NUMERIC(38) NOT NULL,
                pontuacao NUMERIC(38) NOT NULL,
                patente VARCHAR,
                CONSTRAINT ranking_pk PRIMARY KEY (id_aluno, colocacao)
);

--Comentario da tabela ranking

COMMENT ON TABLE byteBusters.ranking IS 'Tabela do ranking dos alunos matriculados.';

--Comentario da coluna id_aluno

COMMENT ON COLUMN byteBusters.ranking.id_aluno IS 'PFK da tabela "ranking", faz parte da PK composta';

--Comentario da coluna pontuacao

COMMENT ON COLUMN byteBusters.ranking.id_aluno IS 'PK da tabela "ranking" , faz parte da PK composta.';

--Comentario da coluna pontuacao

COMMENT ON COLUMN byteBusters.ranking.pontuacao IS 'Pontuação dos alunos dentro do ranking.';

--Comentario da coluna patente

COMMENT ON COLUMN byteBusters.ranking.patente IS 'Patente dos alunos dentro do ranking.';


----------------------------------TURMAS--------------------------------------


--Criacao da tabela turmas

CREATE TABLE byteBusters.turmas (
                id_turma NUMERIC(38) NOT NULL,
                id_aluno NUMERIC(38) NOT NULL,
                id_professor NUMERIC(38) NOT NULL,
                id_curso NUMERIC(38),
                CONSTRAINT turmas_pk PRIMARY KEY (id_turma)
);

--Cometario da tabela turmas

COMMENT ON TABLE byteBusters.turmas IS 'Tabela referente às turmas do curso.';

--Comentario da coluna id_turma

COMMENT ON COLUMN byteBusters.turmas.id_turma IS 'Primary Key da tabela "turmas".';

--Comentario da coluna id_aluno

COMMENT ON COLUMN byteBusters.turmas.id_aluno IS 'Foreign Key da tabela "turmas".';

--Comentario da coluna id_professor

COMMENT ON COLUMN byteBusters.turmas.id_professor IS 'Foreign Key da tabela "turmas".';

--Comentario da coluna id_curso

COMMENT ON COLUMN byteBusters.turmas.id_curso IS 'Foreign Key da tabela "turmas".';


------------------------HISTORICO DE RECOMPENSAS---------------------------------


--Criacao da tabela hist_recompensas

CREATE TABLE byteBusters.hist_recompensas (
                id_hist_recompensa NUMERIC(38) NOT NULL,
                id_recompensa NUMERIC(38) NOT NULL,
                id_aluno NUMERIC(38) NOT NULL,
                CONSTRAINT hist_recompensas_pk PRIMARY KEY (id_hist_recompensa)
);

--Comentario da tabela hist_recompensas

COMMENT ON TABLE byteBusters.hist_recompensas IS 'Histórico de recompensas dos alunos e tabela intermediária da ligação N:N de alunos e recompensas.';

--Comentario da coluna id_hist_recompensa

COMMENT ON COLUMN byteBusters.hist_recompensas.id_hist_recompensa IS 'Primary Key da tabela "hist_recompensas".';

--Comentario da coluna id_recompensa

COMMENT ON COLUMN byteBusters.hist_recompensas.id_recompensa IS 'Foreign Key da tabela "recompensas".';

--Comentario da coluna id_aluno

COMMENT ON COLUMN byteBusters.hist_recompensas.id_aluno IS 'Foreign Key da tabela "alunos".';


--------------------------------HISTORICO CURSOS-----------------------------------

--Criacao da tabela hist_cursos

CREATE TABLE byteBusters.hist_cursos (
                id_hist_curso NUMERIC(38) NOT NULL,
                id_curso NUMERIC(38) NOT NULL,
                id_aluno NUMERIC(38) NOT NULL,
                CONSTRAINT hist_cursos_pk PRIMARY KEY (id_hist_curso)
);

--Comentario da tabela hist_cursos

COMMENT ON TABLE byteBusters.hist_cursos IS 'Tabela referente ao histórico de cada curso.';

--Comentario da coluna id_hist_curso

COMMENT ON COLUMN byteBusters.hist_cursos.id_hist_curso IS 'Primary Key da tabela "hist_cursos".';

--Comentario da coluna id_curso

COMMENT ON COLUMN byteBusters.hist_cursos.id_curso IS 'Foreign Key da tabela "cursos".';

--Comentario da coluna id_aluno

COMMENT ON COLUMN byteBusters.hist_cursos.id_aluno IS 'Foreign Key da tabela "alunos".';





----------------------------------------------------------------------------------------------
------------------------------CONSTRAINTS DE FOREIGN KEY'S------------------------------------
----------------------------------------------------------------------------------------------


----------RECOMPENSA -> HISTORICO DE RECOMPENSA

ALTER TABLE byteBusters.hist_recompensas 
ADD CONSTRAINT recompensas_hist_recompensas_fk
FOREIGN KEY (id_recompensa)
REFERENCES byteBusters.recompensas (id_recompensa)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

----------ENDERECO -> ALUNOS

ALTER TABLE byteBusters.alunos 
ADD CONSTRAINT endere_os_alunos_fk
FOREIGN KEY (id_endereco)
REFERENCES byteBusters.enderecos (id_endereco)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

----------ENDERECO -> PROFESSORES

ALTER TABLE byteBusters.professores 
ADD CONSTRAINT endere_os_professores_fk
FOREIGN KEY (id_endereco)
REFERENCES byteBusters.enderecos (id_endereco)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

----------ENDERECO -> COORDENADORES

ALTER TABLE byteBusters.coordenadores 
ADD CONSTRAINT endere_os_coordenadores_fk
FOREIGN KEY (id_endereco)
REFERENCES byteBusters.enderecos (id_endereco)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

----------ENDERECO -> DEPARTAMENTO

ALTER TABLE byteBusters.departamentos 
ADD CONSTRAINT endere_os_departamento_fk
FOREIGN KEY (id_endereco)
REFERENCES byteBusters.enderecos (id_endereco)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

----------TELEFONE -> ALUNOS

ALTER TABLE byteBusters.alunos 
ADD CONSTRAINT telefones_alunos_fk
FOREIGN KEY (id_telefone)
REFERENCES byteBusters.telefones (id_telefone)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

----------TELEFONE -> PROFESSORES

ALTER TABLE byteBusters.professores 
ADD CONSTRAINT telefones_professores_fk
FOREIGN KEY (id_telefone)
REFERENCES byteBusters.telefones (id_telefone)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

----------TELEFONE -> COORDENADORES

ALTER TABLE byteBusters.coordenadores 
ADD CONSTRAINT telefones_coordenadores_fk
FOREIGN KEY (id_telefone)
REFERENCES byteBusters.telefones (id_telefone)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

----------COORDENADOR -> DEPARTAMENTO

ALTER TABLE byteBusters.departamentos 
ADD CONSTRAINT coordenadores_departamento_fk
FOREIGN KEY (id_coordenador)
REFERENCES byteBusters.coordenadores (id_coordenador)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

----------DEPARTAMENTO -> CARGOS

ALTER TABLE byteBusters.cargos 
ADD CONSTRAINT departamento_cargos_fk
FOREIGN KEY (id_departamento)
REFERENCES byteBusters.departamentos (id_departamento)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

----------DEPARTAMENTO -> CURSOS

ALTER TABLE byteBusters.cursos 
ADD CONSTRAINT departamento_cursos_fk
FOREIGN KEY (id_departamento)
REFERENCES byteBusters.departamentos (id_departamento)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

----------CARGO -> ALUNOS

ALTER TABLE byteBusters.alunos 
ADD CONSTRAINT cargos_alunos_fk
FOREIGN KEY (id_cargo)
REFERENCES byteBusters.cargos (id_cargo)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

----------PROFESSOR -> CURSO

ALTER TABLE byteBusters.cursos 
ADD CONSTRAINT professores_cursos_fk
FOREIGN KEY (id_professor)
REFERENCES byteBusters.professores (id_professor)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

----------PROFESSOR -> TURMAS

ALTER TABLE byteBusters.turmas 
ADD CONSTRAINT professores_turmas_fk
FOREIGN KEY (id_professor)
REFERENCES byteBusters.professores (id_professor)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

----------CURSOS -> HISTORICO DE CURSOS

ALTER TABLE byteBusters.hist_cursos 
ADD CONSTRAINT cursos_hist_cursos_fk
FOREIGN KEY (id_curso)
REFERENCES byteBusters.cursos (id_curso)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

----------CURSOS -> TURMAS

ALTER TABLE byteBusters.turmas 
ADD CONSTRAINT cursos_turmas_fk
FOREIGN KEY (id_curso)
REFERENCES byteBusters.cursos (id_curso)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

----------ALUNOS -> HISTORICO DE CURSOS

ALTER TABLE byteBusters.hist_cursos 
ADD CONSTRAINT alunos_hist_cursos_fk
FOREIGN KEY (id_aluno)
REFERENCES byteBusters.alunos (id_aluno)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

----------ALUNOS -> HISTORICO DE RECOMPENSAS

ALTER TABLE byteBusters.hist_recompensas 
ADD CONSTRAINT alunos_hist_recompensas_fk
FOREIGN KEY (id_aluno)
REFERENCES byteBusters.alunos (id_aluno)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

----------ALUNOS -> TURMAS

ALTER TABLE byteBusters.turmas 
ADD CONSTRAINT alunos_turmas_fk
FOREIGN KEY (id_aluno)
REFERENCES byteBusters.alunos (id_aluno)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

----------ALUNOS -> RANKING

ALTER TABLE byteBusters.ranking 
ADD CONSTRAINT alunos_ranking_fk
FOREIGN KEY (id_aluno)
REFERENCES byteBusters.alunos (id_aluno)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

----------EMAIL -> ALUNOS

ALTER TABLE byteBusters.alunos 
ADD CONSTRAINT email_alunos_fk
FOREIGN KEY (id_email)
REFERENCES byteBusters.email (id_email)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

----------EMAIL -> PROFESSORES

ALTER TABLE byteBusters.professores
ADD CONSTRAINT email_professores_fk
FOREIGN KEY (id_email)
REFERENCES byteBusters.email (id_email)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

----------EMAIL -> COORDENADORES

ALTER TABLE byteBusters.coordenadores 
ADD CONSTRAINT email_coordenadores_fk
FOREIGN KEY (id_email)
REFERENCES byteBusters.email (id_email)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;



-----------------------------------------------------------------------
----------------------CONSTRAINTS DE CHECK'S---------------------------
-----------------------------------------------------------------------

--Verificando o nome do email para que contenha o caractere @

ALTER TABLE byteBusters.email
ADD CONSTRAINT cc_nome_email 
CHECK (email LIKE '%@%');

--Verificando para que o numero do endereco nao seja negativo

ALTER TABLE byteBusters.enderecos
ADD CONSTRAINT cc_enderecos_numero 
CHECK (numero >= 0);

--Verificando para que a duracao do curso nao seja negativa

ALTER TABLE byteBusters.cursos
ADD CONSTRAINT cc_cursos_duracao 
CHECK (duracao >= 0);

--Verificando para que a pontuacao do ranking nao seja negativa

ALTER TABLE byteBusters.ranking
ADD CONSTRAINT cc_ranking_pontuacao 
CHECK (pontuacao >= 0);

--Verificando para que a colocacao do ranking nao seja negativa

ALTER TABLE byteBusters.ranking
ADD CONSTRAINT cc_ranking_colocacao 
CHECK (colocacao >= 0);








