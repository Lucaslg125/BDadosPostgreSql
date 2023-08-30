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