CREATE TABLE aluno(

    id SERIAL,
    nome VARCHAR(255),
    cpf CHAR(11),
    observacao TEXT,
    idade INTEGER,
    dinheiro NUMERIC(10,2),
    altura REAL,
    ativo BOOLEAN,
    data_nascimento DATE,
    hora_aula TIME,
    matriculado_em TIMESTAMP
);

SELECT * FROM aluno;

INSERT INTO aluno (
    nome,
    cpf,
    observacao,
    idade,
    dinheiro,
    altura,
    ativo,
    data_nascimento,
    hora_aula,
    matriculado_em

) 

VALUES (
    
    'Diogo',
    '12345678901',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ac dui et nisl vestibulum consequat. Integer vitae magna egestas, finibus libero dapibus, maximus magna. Fusce suscipit mi ut dui vestibulum, non vehicula felis fringilla. Vestibulum eget massa blandit, viverra quam non, convallis libero. Morbi ut nunc ligula. Duis tristique purus augue, nec sodales sem scelerisque dignissim. Sed vel rutrum mi. Nunc accumsan magna quis tempus rhoncus. Duis volutpat nulla a aliquet feugiat. Vestibulum rhoncus mi diam, eu consectetur sapien eleifend in. Donec sed facilisis velit. Duis tempus finibus venenatis. Mauris neque nisl, pulvinar eu volutpat eu, laoreet in massa. Quisque vestibulum eros ac tortor facilisis vulputate. Sed iaculis purus non sem tempus mollis. Curabitur felis lectus, aliquam id nunc ut, congue accumsan tellus.',
    35,
    100.50,
    1.81,
    TRUE,
    '1984-08-27',
    '17:30:00',
    '2020-02-08 12:32:45'
);


SELECT  * FROM aluno

WHERE id = 1
----------------------------------------------------------------------

UPDATE aluno
    SET nome ='Nico',
    cpf = '10987654321',
    observacao = 'Teste',
    idade = 38,
    dinheiro = 15.23,
    altura = 1.90,
    ativo = FALSE,
    data_nascimento = '1980-01-15',
    hora_aula = '13:00:00',
    matriculado_em '2020-01-02 15:00:0,'
       where id = 1;
----------------------------------------------------------------------
 
    --Baseado na tabela funcionarios, que possui o campo percentual_inss e o campo salario, 
    --marque a alternativa correta para a atualização do percentual_inss para 14%:

    UPDATE funcionarios
        SET percentual_inss = 0.14
    WHERE salario >= 3134.41
        AND salario <= 6101.006
-----------------------------------------------------------------------

DELETE
    FROM aluno
WHERE nome = 'Sores Lima';
        AND salario <= 6101.006
-----------------------------------------------------------------------
--criar um script para remover os produtos que não possuíam mais estoque, na tabela produtos. 
--Essa tabela possui um campo chamado estoque, que armazena a quantidade de itens disponíveis.

DELETE 
    FROM produtos
WHERE estoque = 0;
-----------------------------------------------------------------------
SELECT nome AS "Nome do Aluno", 
        idade,
        matriculado_em AS Quando_se_matriculou
    FROM aluno;

----------------------------------------------------------------------
--gerar o relatório com nome completo e telefone dos pacientes.
-- O sistema possui uma tabela pacientes, onde possui o campo nome e telefone.
SELECT nome AS "Nome Completo", telefone AS "Telefone"
    FROM pacientes 
ORDER BY 1;

----------------------------------------------------------------------
INSERT INTO aluno (nome)VALUES ("Vinicius Dias");
INSERT INTO aluno (nome)VALUES ("Nico Steppat");
INSERT INTO aluno (nome)VALUES ("João Roberto");
INSERT INTO aluno (nome)VALUES ("Diego Nunes");


SELECT *
    FROM Aluno
WHERE nome Like 'Di_go';

SELECT * 
    FROM aluno
    WHERE nome LIKE 'D%';
    
SELECT * 
    FROM aluno
    WHERE nome LIKE '%i%%a%'

SELECT * 
    FROM aluno
    WHERE nome LIKE '%a'

SELECT * 
    FROM aluno
    WHERE nome LIKE '% %'

--funcionalidade de um programa em que são listadas as palavras do dicionário que começam com a letra do alfabeto que o usuário clicar.
-- O nome da tabela que armazena as palavras se chama dicionario e o campo que contem as palavras se chama palavra.

SELECT palavra
    FROM dicionario
WHERE palavra LIKE 'F%'
ORDER BY 1;

------------------------------------------------------------------------------------

SELECT * 
FROM aluno
    WHERE cpf IS NULL

------------------------------------------------------------------------------------

SELECT * 
    FROM aluno
WHERE IDADE BETWEEN 10 AND 20;

------------------------------------------------------------------------------------

SELECT * 
    FROM aluno 
    WHERE ativo IS NULL
-------------------------------------------------------------------------------
 --sistema de vagas de emprego e precisa implementar uma funcionalidade para pesquisar vagas com uma remuneração acima de um determinado valor. 
 --Essas vagas estão armazenadas na tabela vagas e possuem um campo chamado remuneracao.

 SELECT * 
    FROM vagas
    WHERE remuneracao > 5000
    ORDER BY remuneracao DESC;
--------------------------------------------------------------------------------------
SELECT * 
    FROM aluno
    WHERE nome LIKE  'D%'
        AND cpf IS NOT NULL;
   
--------------------------------------------------------------------------------------

SELECT *
    FROM aluno
    WHERE nome LIKE 'Diogo'
    OR nome LIKE 'Rodrigo';
--------------------------------------------------------------------------------------

SELECT *
    FROM aluno
WHERE nome LIKE 'Diogo'
AND nome LIKE 'NICO%';

-------------------------------------------------------------------------------------
SELECT * 
    FROM aluno 
    WHERE nome LIKE 'Thiago'
        OR nome LIKE 'Miguel';
------------------------------------------------------------------------------------
CREATE TABLE aluno (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL

);

INSERIR DADOS
INSERT INTO aluno (nome) VALUES ('Diogo');
INSERT INTO aluno (nome) VALUES ('Vinícius');
------------------------------------------------------------------------------------
PRIMARY KEY
CREATE TABLE aluno_curso (
    aluno_id  INTEGER,
    curso_id INTEGER
    nome VARCHAR(255) NOT NULL
    PRIMARY KEY(aluno_id, curso_id)

    FOREING KEY (aluno_id)
        REFERENCES aluno(id)

        FOREIGN KEY (curso_id)
         REFERENCES curso (id)
);

INSERT INTO aluno_curso (aluno_id, curso_id) VALUES(1,1);
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES(2,1);
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES(3,1);

------------------------------------------------------------------------------------
 --cadastro de funcionários e seus departamentos. Antes, a pessoa que incluía os funcionários no sistema podia digitar qualquer nome de departamento, então você resolve 
 --criar um cadastro de departamentos e vincular o cadastro do funcionário aos departamentos previamente cadastrados no sistema.

CREATE TABLE departamentos(
    id SERIAL PRIMARY KEY,
    nome VARCHAR (255) NOT NULL
);

CREATE TABLE funcionarios (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    departamento_id INTEGER,
   
    FOREIGN KEY (departamento_id) REFERENCES departamentos (id)
);

SELECT *
    FROM aluno
    JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id

SELECT aluno.nome as aluno,
        curso.nome as curso

    FROM aluno
    JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
    JOIN curso ON curso.id = aluno_curso.curso_id
------------------------------------------------------------------------------------
--LEFT JOIN , que significa que existe um dado na tabela da esquerda, mas não existe na tabela da direita.

SELECT aluno.nome as "Nome do Aluno",
        curso.nome as "Nome do Curso"

        FROM aluno
LEFT JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
LEFT JOIN curso ON curso.id = aluno_curso.curso_id
------------------------------------------------------------------------------------
--os o código FULL JOIN , que irá considerar todos os dados, mesmo que o campo da direita ou o campo da esquerda esteja nulo.

SELECT aluno.nome as "Nome do Aluno",
        curso.nome as "Nome do Curso"

        FROM aluno
FULL JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
FULL JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
------------------------------------------------------------------------------------
CREATE TABLE aluno_curso(
    aluno_id INTEGER,
        curso_id INTEGER
        PRIMARY KEY(aluno_id, curso_id),

        FOREIGN KEY (aluno_id)
            REFERENCES aluno (id)
            ON DELETE CASCADE
            ON UPDATE CASCADE,

            FOREIGN KEY(curso_id) 
            REFERENCES curso (id)
);

------------------------------------------------------------------------------------
 -- projeto de agenda telefônica, que existe com a estrutura abaixo:
 --Ao executar os comandos abaixo:

UPDATE pessoas SET id = 2 WHERE nome = 'Diogo';
DELETE FROM pessoas WHERE nome = 'Diogo';

CREATE TABLE pessoas (
    id INTEGER PRIMARY KEY,
    nome VARCHAR(255) NOT NULL
);

CREATE TABLE telefones (
    id INTEGER PRIMARY KEY,
    pessoa_id INTEGER,
    numero VARCHAR(15) NOT NULL,
    FOREIGN KEY(pessoa_id) REFERENCES pessoas (id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
);

INSERT INTO pessoas (id, nome) VALUES (1, 'Diogo');
INSERT INTO telefones(id, pessoa_id, numero) VALUES(1,1 '(21) 98765-4321');

------------------------------------------------------------------------------------

SELECT * 
    FROM funcionarios
    ORDER BY nome;
------------------------------------------------------------------------------------

SELECT * 
    FROM funcionarios
    ORDER BY 3, 4, 2
------------------------------------------------------------------------------------
SELECT *  FROM funcionarios
        ORDER BY 4 DESC, nome DESC, 2
------------------------------------------------------------------------------------

SELECT 
    aluno.id as aluno_id,
    aluno.ome as "Nome do Aluno",
    curso.id as "curso_id",
    curso.nome as "Nome do Curso"
FROM aluno
JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
JORIN curso ON curso.id = aluno_curso.curso_id
ORDER BY nome

------------------------------------------------------------------------------------

SELECT  * 
    FROM funcionarios
    ORDER BY nome
    LIMIT 5;
------------------------------------------------------------------------------------
SELECT  * 
    FROM funcionarios
    ORDER BY nome
    LIMIT 5;
    OFFSET 1;

    SELECT nome, nota
FROM notas
ORDER BY nota, nome LIMIT 100

-- COUNT - Retorna a quantidade de registros
-- SUM -   Retorna a soma dos registros
-- MAX -   Retorna o maior valor dos registros
-- MIN -   Retorna o menor valor dos registros
-- AVG -   Retorna a média dos registros

SELECT COUNT (id)
    FROM funcionarios;

SELECT COUNT (id),
       SUM(id),
       MAX(id),
       MIN(id),
       ROUND(AVG(id),0)
  FROM funcionarios;
-------------------------------------------------------------

SELECT DISTINCT 
    nome,
    sobrenome
FROM funcionarios
ORDER BY nome;
----------------------------------------------------------------

SELECT DISTINCT
    nome,
    sobrenome,
    COUNT(*)
FROM funcionarios
ORDER BY nome;

-----------------------------------------------------------------

SELECT * 
    FROM aluno
    JOIN aluno_curso ON aluno.id = aluno_curso.aluno_id
    JOIN curso ON curso.id = aluno_curso.curso_id
-----------------------------------------------------------------
SELECT curso.nome
        COUNT(aluno.id)
    FROM aluno
    JOIN aluno_curso ON aluno.id = aluno_curso.aluno_id
    JOIN curso ON curso.id = aluno_curso.curso_id
    GROUP BY 1
    ORDER BY 1

-----------------------------------------------------------------

SELECT  * 
    FROM curso
    LEFT JOIN aluno_curso ON aluno.curso_id = curso.id
    LEFT JOIN aluno_curso ON aluno.curso_id = curso.id
    WHERE COUNT(aluno.id) = 0
    GROUP BY 1
    
-----------------------------------------------------------------
SELECT curso.nome,
       COUNT(aluno.id)    
  FROM curso
  LEFT JOIN aluno_curso ON aluno_curso.curso_id = curso.id
  LEFT JOIN aluno ON aluno.id = aluno_curso.aluno_id
  WHERE curso.nome = 'Javascritp'
GROUP BY 1

---------------------------------------------------------------
SELECT *
    FROM curso
    LEFT JOIN aluno_curso ON aluno.curso_id = curso.id
    LEFT JOIN aluno ON aluno.id = aluno_curso.aluno_id
    --WHERE curso.nome = 'Javascritp'
GROUP BY 1
    HAVING COUNT (aluno.id) = 0
------------------------------------------------------------
SELECT nome 
    FROM funcionarios
    GROUP BY nome
    HAVING COUT (id) > 1;
    ------------------------------------------------------

SELECT nome,
       COUNT(id)
    FROM funcionarios
    GROUP BY nome
    HAVING COUNT(id) > 1;

-------------------------------------------------------------
SELECT palestras.nome AS "Nome da Palestra",
    COUNT(inscricoes.id) AS "Quantidade de Inscritos"
FROM inscricoes
    JOIN palestras ON palestras.id = inscricoes.palestras

    GROUP BY 1 HAVING count(inscricoes.id) < 10 ORDER BY 1
