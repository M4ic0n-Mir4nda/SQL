DROP TABLE IF EXISTS DEPARTAMENTO
CREATE TABLE DEPARTAMENTO (
ID_DEPARTAMENTO INT PRIMARY KEY IDENTITY(1,1),
NOME VARCHAR(300)
)
INSERT INTO DEPARTAMENTO (NOME)
VALUES 
('TECNOLOGIA'),
('MARKETING'),
('COMERCIAL'),
('RECURSOS HUMANOS'),
('DIRETORIA')

 DROP TABLE IF EXISTS FUNCIONARIO
CREATE TABLE FUNCIONARIO (
ID_FUNCIONARIO INT PRIMARY KEY  IDENTITY(1,1),
MATRICULA VARCHAR(200) UNIQUE,
NOME VARCHAR(200),
DATA_NASCIMENTO DATE,
DATA_CONTRATACAO DATE,
ID_DEPARTAMENTO INT FOREIGN KEY REFERENCES DEPARTAMENTO(ID_DEPARTAMENTO)
)
 
INSERT INTO FUNCIONARIO (MATRICULA,NOME,DATA_NASCIMENTO,DATA_CONTRATACAO,ID_DEPARTAMENTO) VALUES 
 
('200','FERNANDO CARLOS','1988-01-01','2020-01-01',1),
('201','LEANDRO MAIA','1988-07-21','2020-02-01',1),
('202','FELIPE ALMEIDA','1987-04-21','2020-02-02',1),
('203','JEAN GRIT','2000-02-02','2020-02-03',1),

----
('100','EDUARDO CARLOS','1988-01-01','2018-01-01',2),
('101','ALICIA LEN','1988-07-21','2019-02-01',2),
('102','LEANDRA SUSHAI','1987-04-21','2020-04-02',2),
('103','JONAS EDULIT','2000-02-02','2020-03-03',2),
('104','LARISSA CAMIR','2002-02-02','2020-01-03',2),
('105','LUANA LUPE','2001-02-02','2020-05-03',2),
----
('300','LINDA MIGUEL','1986-01-01','2020-01-01',3),
('301','LEANDRO LIN','1986-07-10','2020-02-01',3),
('302','FELIPE ALMEIDA','1985-08-01','2020-02-01',3),
('303','CARLOS GRIT','1999-09-02','2020-02-01',3),
('304','FELIPE JANI','1985-08-01','2020-02-02',3),
('305','MARIA EUGENIA','1969-09-02','2020-02-02',3),
---
('10','MARCOS BRATT','1978-04-01','2020-01-01',1),
('11','LANCE LOR','1998-05-21','2020-02-01',1)
 
 DROP TABLE IF EXISTS PRIORIDADE
CREATE TABLE PRIORIDADE 
(
ID_PRIORIDADE INT PRIMARY KEY  IDENTITY(1,1),
PRIORIDADE VARCHAR(200),
SLA_HORAS INT
)
INSERT INTO PRIORIDADE VALUES
('BAIXO',48),('MEDIO',24),('ALTO',24)


DROP TABLE IF EXISTS CATEGORIA
CREATE TABLE CATEGORIA  
(
ID_CATEGORIA INT PRIMARY KEY  IDENTITY(1,1),
CATEGORIA VARCHAR(200)
 
)
INSERT INTO CATEGORIA  (CATEGORIA) VALUES
('SISTEMA'),('REDE'),('HARDWARE')
 

 DROP TABLE IF EXISTS CHAMADO
CREATE TABLE CHAMADO  (
ID_CHAMADO INT PRIMARY KEY IDENTITY(1,1),
ID_SOLICITANTE INT   FOREIGN KEY REFERENCES FUNCIONARIO(ID_FUNCIONARIO),
ID_CATEGORIA INT FOREIGN KEY REFERENCES CATEGORIA(ID_CATEGORIA),
ID_PRIORIDADE INT FOREIGN KEY REFERENCES PRIORIDADE(ID_PRIORIDADE),
ID_ATENDENTE INT   FOREIGN KEY REFERENCES FUNCIONARIO(ID_FUNCIONARIO),
ABERTURA DATETIME,
FECHAMENTO DATETIME,
CUSTO DECIMAL(10,2)
)

INSERT INTO CHAMADO VALUES
(	5	,	1	,	1	,	1	,	'2020-01-01'	,	'2020-01-01'	,	10.5	),
(	6	,	2	,	1	,	1	,	'2020-01-01'	,	'2020-01-01'	,	10.5	),
(	7	,	3	,	1	,	2	,	'2020-01-01'	,	'2020-01-01'	,	10.5	),
(	8	,	1	,	1	,	2	,	'2020-01-01'	,	'2020-01-01'	,	10.5	),
(	9	,	2	,	1	,	3	,	'2020-01-01'	,	NULL	,	0	),
(	10	,	3	,	2	,	3	,	'2020-01-01'	,	NULL	,	0	),
(	11	,	1	,	1	,	4	,	'2020-01-01'	,	NULL	,	0	),
(	12	,	2	,	1	,	4	,	'2020-01-02'	,	NULL	,	0	),
(	13	,	3	,	1	,	1	,	'2020-01-02'	,	NULL	,	0	),
(	14	,	1	,	1	,	1	,	'2020-01-02'	,	NULL	,	0	),
(	15	,	2	,	1	,	2	,	'2020-01-02'	,	NULL	,	0	),
(	16	,	3	,	1	,	2	,	'2020-01-02'	,	'2020-01-02'	,	10.5	),
(	17	,	1	,	3	,	3	,	'2020-01-03'	,	'2020-01-03'	,	10.5	),
(	18	,	2	,	1	,	3	,	'2020-01-03'	,	'2020-01-03'	,	10.5	),
(	5	,	3	,	3	,	4	,	'2020-01-03'	,	'2020-01-03'	,	10.5	),
(	6	,	1	,	3	,	4	,	'2020-01-03'	,	'2020-01-03'	,	10.5	),
(	7	,	2	,	3	,	1	,	'2020-01-03'	,	'2020-01-03'	,	10.5	),
(	8	,	3	,	3	,	1	,	'2020-01-03'	,	'2020-01-03'	,	100.5	),
(	9	,	1	,	3	,	2	,	'2020-01-03'	,	'2020-01-08'	,	100.5	),
(	10	,	2	,	3	,	2	,	'2020-01-03'	,	'2020-01-08'	,	100.5	),
(	11	,	3	,	3	,	3	,	'2020-01-03'	,	NULL	,	100.5	),
(	12	,	1	,	3	,	3	,	'2020-01-03'	,	NULL	,	100.5	),
(	13	,	2	,	3	,	4	,	'2020-01-03'	,	NULL	,	100.5	),
(	14	,	3	,	3	,	4	,	'2020-02-01'	,	'2020-02-08'	,	100.5	),
(	15	,	1	,	3	,	1	,	'2020-02-01'	,	'2020-02-08'	,	100.5	),
(	16	,	2	,	3	,	1	,	'2020-02-01'	,	'2020-02-08'	,	100.5	),
(	17	,	3	,	3	,	2	,	'2020-02-01'	,	'2020-02-08'	,	100.5	),
(	18	,	1	,	3	,	2	,	'2020-02-01'	,	'2020-02-03'	,	100.5	),
(	12	,	2	,	3	,	3	,	'2020-02-01'	,	'2020-02-03'	,	100.5	),
(	13	,	3	,	1	,	3	,	'2020-02-01'	,	NULL	,	100.5	),
(	14	,	1	,	1	,	4	,	'2020-02-01'	,	NULL	,	100.5	),
(	15	,	2	,	1	,	4	,	'2020-02-01'	,	NULL	,	100.5	),
(	16	,	3	,	1	,	1	,	'2020-02-01'	,	NULL	,	100.5	),
(	17	,	1	,	1	,	1	,	'2020-02-01'	,	'2020-02-03'	,	100.5	),
(	18	,	2	,	1	,	2	,	'2020-02-01'	,	'2020-02-03'	,	100.5	),
(	17	,	3	,	1	,	2	,	'2020-02-01'	,	'2020-02-03'	,	100.5	),
(	18	,	1	,	1	,	3	,	'2020-02-01'	,	'2020-02-03'	,	100.5	),
(	17	,	2	,	1	,	3	,	'2020-03-01'	,	'2020-04-01'	,	100.5	),
(	18	,	3	,	1	,	4	,	'2020-03-01'	,	'2020-04-01'	,	100.5	),
(	17	,	1	,	1	,	4	,	'2020-03-01'	,	'2020-04-01'	,	100.5	),
(	18	,	2	,	1	,	1	,	'2020-03-01'	,	'2020-04-01'	,	100.5	),
(	14	,	3	,	1	,	1	,	'2020-03-01'	,	'2020-04-01'	,	100.5	),
(	15	,	1	,	2	,	2	,	'2020-03-01'	,	'2020-04-01'	,	100.5	),
(	16	,	2	,	2	,	2	,	'2020-03-01'	,	'2020-03-01'	,	200	),
(	17	,	3	,	2	,	3	,	'2020-03-01'	,	'2020-03-01'	,	200	),
(	18	,	1	,	2	,	3	,	'2020-04-11'	,	'2020-04-11'	,	200	),
(	12	,	2	,	2	,	4	,	'2020-04-11'	,	'2020-04-11'	,	200	),
(	13	,	3	,	2	,	4	,	'2020-04-11'	,	'2020-04-11'	,	200	),
(	14	,	1	,	2	,	1	,	'2020-04-11'	,	'2020-04-12'	,	200	),
(	15	,	2	,	2	,	1	,	'2020-04-11'	,	'2020-08-11'	,	200	),
(	16	,	3	,	2	,	2	,	'2020-05-12'	,	'2020-05-12'	,	200	),
(	17	,	1	,	2	,	2	,	'2020-05-12'	,	NULL	,	200	),
(	18	,	2	,	2	,	3	,	'2020-05-12'	,	NULL	,	200	),
(	12	,	3	,	2	,	3	,	'2020-05-12'	,	NULL	,	200	),
(	13	,	1	,	2	,	4	,	'2020-05-12'	,	NULL	,	200	),
(	14	,	2	,	2	,	4	,	'2020-05-12'	,	NULL	,	200	),
(	15	,	3	,	2	,	1	,	'2020-05-12'	,	NULL	,	200	),
(	16	,	1	,	2	,	1	,	'2020-05-12'	,	'2020-05-12'	,	200	),
(	17	,	2	,	2	,	2	,	'2020-06-11'	,	'2020-06-11'	,	200	),
(	18	,	3	,	1	,	2	,	'2020-06-11'	,	'2020-06-11'	,	200	),
(	12	,	1	,	1	,	3	,	'2020-06-11'	,	'2020-06-11'	,	200	),
(	13	,	2	,	1	,	3	,	'2020-06-11'	,	'2020-06-11'	,	200	),
(	14	,	3	,	1	,	4	,	'2020-06-11'	,	'2020-06-11'	,	200	),
(	15	,	1	,	1	,	4	,	'2020-06-11'	,	'2020-06-11'	,	200	),
(	16	,	2	,	2	,	1	,	'2020-06-11'	,	'2020-06-11'	,	200	),
(	17	,	3	,	1	,	1	,	'2020-06-11'	,	'2020-06-11'	,	200	),
(	18	,	1	,	1	,	2	,	'2020-06-11'	,	'2020-06-11'	,	200	),
(	17	,	2	,	1	,	2	,	'2020-06-11'	,	'2020-06-11'	,	12	),
(	18	,	3	,	1	,	3	,	'2020-07-09'	,	'2020-06-11'	,	12	),
(	17	,	1	,	1	,	3	,	'2020-07-09'	,	'2020-06-11'	,	12	),
(	18	,	2	,	1	,	4	,	'2020-07-09'	,	'2020-07-09'	,	12	),
(	17	,	3	,	3	,	4	,	'2020-07-09'	,	'2020-07-09'	,	12	),
(	18	,	1	,	1	,	1	,	'2020-07-09'	,	'2020-07-09'	,	12	),
(	14	,	2	,	3	,	1	,	'2020-07-09'	,	'2020-07-09'	,	12	),
(	5	,	3	,	3	,	2	,	'2020-07-09'	,	'2020-07-09'	,	12	),
(	6	,	1	,	3	,	2	,	'2020-08-09'	,	'2020-07-09'	,	12	),
(	7	,	2	,	3	,	3	,	'2020-08-09'	,	'2020-07-09'	,	70	),
(	8	,	3	,	3	,	3	,	'2020-08-09'	,	'2020-08-09'	,	65	),
(	9	,	1	,	3	,	4	,	'2020-08-09'	,	'2020-08-09'	,	74	),
(	10	,	2	,	3	,	4	,	'2020-08-09'	,	'2020-08-09'	,	12	),
(	11	,	3	,	3	,	1	,	'2020-08-09'	,	'2020-08-09'	,	12	),
(	12	,	1	,	3	,	1	,	'2020-08-09'	,	'2020-08-12'	,	12	),
(	13	,	2	,	3	,	2	,	'2020-09-03'	,	'2020-09-03'	,	70	),
(	5	,	3	,	3	,	2	,	'2020-09-03'	,	'2020-09-03'	,	65	),
(	6	,	1	,	3	,	3	,	'2020-09-03'	,	'2020-09-03'	,	74	),
(	7	,	2	,	3	,	3	,	'2020-09-03'	,	'2020-09-03'	,	12	),
(	8	,	3	,	3	,	4	,	'2020-09-03'	,	'2020-10-01'	,	12	),
(	9	,	1	,	3	,	4	,	'2020-09-03'	,	'2020-10-01'	,	12	),
(	10	,	2	,	1	,	1	,	'2020-10-01'	,	'2020-10-01'	,	70	),
(	11	,	3	,	1	,	1	,	'2020-10-01'	,	'2020-10-01'	,	65	),
(	12	,	1	,	1	,	2	,	'2020-10-01'	,	'2020-10-01'	,	74	),
(	13	,	2	,	1	,	2	,	'2020-10-01'	,	'2020-10-01'	,	0	),
(	18	,	3	,	1	,	3	,	'2020-10-01'	,	'2020-10-01'	,	0	),
(	17	,	1	,	1	,	3	,	'2020-10-01'	,	'2020-10-01'	,	0	),
(	18	,	2	,	1	,	4	,	'2020-10-02'	,	NULL	,	0	),
(	17	,	3	,	1	,	4	,	'2020-10-02'	,	NULL	,	0	),
(	18	,	1	,	1	,	1	,	'2020-10-02'	,	NULL	,	12	),
(	11	,	2	,	1	,	1	,	'2020-10-02'	,	NULL	,	11	)


SELECT * FROM DEPARTAMENTO
SELECT * FROM CHAMADO
SELECT * FROM FUNCIONARIO
SELECT * FROM PRIORIDADE
SELECT * FROM CATEGORIA

--1


--2

SELECT SUM(DATEDIFF(HOUR, ABERTURA, FECHAMENTO)) DIFERENCA_HORAS, SUM(CUSTO) CUSTO 
FROM CHAMADO CH INNER JOIN CATEGORIA C 
ON CH.ID_CATEGORIA = C.ID_CATEGORIA WHERE FECHAMENTO IS NOT NULL GROUP BY CATEGORIA 

--3

CREATE FUNCTION CHAMADO.CHAMADO_DEP(@DEPARTAMENTO VARCHAR(500))
RETURNS TABLE 
AS
RETURN 
(
SELECT COUNT(ID_CHAMADO) CHAMADOS, SUM(DATEDIFF(HOUR, ABERTURA, FECHAMENTO)) DIFERENCA_HORAS
FROM CHAMADO CH 
INNER JOIN FUNCIONARIO F ON CH.ID_SOLICITANTE = F.ID_FUNCIONARIO
INNER JOIN DEPARTAMENTO D ON F.ID_DEPARTAMENTO = D.ID_DEPARTAMENTO
GROUP BY D.NOME HAVING D.NOME = @DEPARTAMENTO
) 

--4

CREATE TABLE CHAMADOS_DIRETORIA(
ID_CHAMADO_DIRETORIA INT PRIMARY KEY IDENTITY(1, 1),
NOME_SOLICITANTE VARCHAR(255),
ABERTURA DATETIME,
FECHAMENTO DATETIME,
PRIORIDADE VARCHAR(255)
)

INSERT INTO CHAMADOS_DIRETORIA (NOME_SOLICITANTE,ABERTURA,FECHAMENTO,PRIORIDADE) VALUES 
('LUCAS ANDRADE','1985-01-01','2020-01-01','MEDIO'),
('GUSTAVO SILVA','1976-07-10','2020-02-01','BAIXO'),
('ANA SANTOS','1975-08-01','2020-02-01','ALTO'),
('CARLOS MIGUEL','1999-09-02','2020-02-01','MEDIO'),
('JOAO MENEZES','1955-08-01','2020-02-02','BAIXO'),
('MARIA HELOISA','1999-09-02','2020-02-02','ALTO');


CREATE FUNCTION CHAMADO.RESPOSTA_SLA(@HORAS INT, @SLA_HORAS INT)
RETURNS VARCHAR(255) AS
BEGIN
	DECLARE @RETORNO VARCHAR(255)
	SELECT @RETORNO = 
	CASE 
		WHEN @HORAS < @SLA_HORAS THEN ('DENTRO DO SLA')
		WHEN @HORAS = @SLA_HORAS THEN ('LIMITE SLA')
		ELSE ('FORA DO SLA')
END
FROM PRIORIDADE
RETURN @RETORNO
END;

SELECT dbo.RESPOSTA_SLA(30,24)

--6

SELECT F.NOME, ID_CATEGORIA, CH.ID_PRIORIDADE, 
COUNT(ID_CHAMADO) CONTAGEM_CHAMADOS, SUM(ID_CHAMADO) DIRETORIA
FROM CHAMADO CH
INNER JOIN FUNCIONARIO F ON CH.ID_ATENDENTE = F.ID_FUNCIONARIO
INNER JOIN PRIORIDADE P ON CH.ID_PRIORIDADE = P.ID_PRIORIDADE
INNER JOIN DEPARTAMENTO D ON D.ID_DEPARTAMENTO = F.ID_DEPARTAMENTO
GROUP BY F.NOME, D.ID_DEPARTAMENTO, CH.ID_CATEGORIA, CH.ID_PRIORIDADE

SELECT * FROM CHAMADOS_DIRETORIA