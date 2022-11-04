/* 1 - Inclua suas próprias informações no departamento de tecnologia da empresa.*/
INSERT INTO funcionarios (funcionario_id,primeiro_nome,sobrenome,email,telefone,dataContratacao,ocupacao_id,salario,gerente_id,departamento_id) VALUES (207,'Isabella','Rosseto','isabella.rosseto@momento.org','4002-8922','2022-06-21',9,7500.00,NULL,6);

/* 2 - A administração está sem funcionários. Inclua os outros membros do seu grupo do demoday no departamento de administração. */
/* Funcionarios Demoday */
INSERT INTO funcionarios (funcionario_id,primeiro_nome,sobrenome,email,telefone,dataContratacao,ocupacao_id,salario,gerente_id,departamento_id) VALUES (208,'Vinicius','Caló','vinicius.calo@momento.org','4003-8933','2022-11-04',3,4500.00,101,1);
INSERT INTO funcionarios (funcionario_id,primeiro_nome,sobrenome,email,telefone,dataContratacao,ocupacao_id,salario,gerente_id,departamento_id) VALUES (209,'Jeniffer','Carmo','jeniffer.carmo@momento.org','4004-8944','2022-11-04',3,4500.00,101,1);
INSERT INTO funcionarios (funcionario_id,primeiro_nome,sobrenome,email,telefone,dataContratacao,ocupacao_id,salario,gerente_id,departamento_id) VALUES (210,'Guilherme','Mascarenhas','guilherme.mascarenhas@momento.org','4005-8955','2022-11-04',3,4500.00,101,1);
INSERT INTO funcionarios (funcionario_id,primeiro_nome,sobrenome,email,telefone,dataContratacao,ocupacao_id,salario,gerente_id,departamento_id) VALUES (211,'Rodrigo','Sales','rodrigo.sales@momento.org','4006-8966','2022-11-04',3,4500.00,101,1);
INSERT INTO funcionarios (funcionario_id,primeiro_nome,sobrenome,email,telefone,dataContratacao,ocupacao_id,salario,gerente_id,departamento_id) VALUES (212,'Victor','Magalhaes','victor.magalhaes@momento.org','4007-8977','2022-11-04',3,4500.00,101,1);
INSERT INTO funcionarios (funcionario_id,primeiro_nome,sobrenome,email,telefone,dataContratacao,ocupacao_id,salario,gerente_id,departamento_id) VALUES (213,'Diogo','Barbosa','diogo.barbosa@momento.org','4008-8988','2022-11-04',3,4500.00,101,1);
INSERT INTO funcionarios (funcionario_id,primeiro_nome,sobrenome,email,telefone,dataContratacao,ocupacao_id,salario,gerente_id,departamento_id) VALUES (214,'João','Marcos','joao.marcos@momento.org','4009-8999','2022-11-04',3,4500.00,101,1);

/* 3 - Agora diga, quantos funcionários temos ao total na empresa? */
/*Contar funcionarios*/
SELECT COUNT(`funcionario_id`) FROM funcionarios;
(48 funcionarios)

/*4 - Quantos funcionários temos no departamento de finanças?*/
/*Contar funcionarios no departamento de finanças*/
SELECT COUNT(`funcionario_id`) FROM funcionarios WHERE departamento_id = '10';
(6 funcionarios)


/*Contar funcionarios no departamento de tecnologia*/
SELECT COUNT(`funcionario_id`) FROM funcionarios WHERE departamento_id = '6';
(6 funcionarios)

/*5 - Qual a média salarial do departamento de tecnologia?*/
/*Média salarial do departamento de tecnologia*/
SELECT AVG(`salario`) FROM funcionarios WHERE departamento_id = '6';
(6050,00)

/*6 - Quanto o departamento de Transportes gasta em salários?*/
/*Gasto em salarios do departamento de Transporte*/
SELECT SUM(salario) FROM funcionarios WHERE departamento_id = '5';
(41.200)

/*7 - Um novo departamento foi criado. O departamento de inovações. Ele será locado no Brasil. Por favor, adicione-o no banco de dados.*/
/* Novo departamento "inovaçoes" no Brasil*/
INSERT INTO departamento(departamento_id,departamento_name,posicao_id) VALUES (12,'Inovações',5400);


/*8 - Novos Funcionários!
Três novos funcionários foram contratados para o departamento de inovações. Por favor, adicione-os: William Ferreira, casado com Inara Ferreira,
possui um filho chamado Gabriel que tem 4 anos e adora brincar com cachorros. Ele será programador.Já a Fernanda Lima, que é casada com o Rodrigo, não possui filhos. 
Ela vai ocupar a posição de desenvolvedora.  Por último, a Gerente do departamento será Fabiana Raulino. Casada, duas filhas (Maya e Laura). /*

/* 3 novos cargos */ 
INSERT INTO ocupacoes(ocupacao_id,ocupacao_title,min_salario,max_salario) VALUES (20,'Gerente de Inovação',4000.00,11000.00);
INSERT INTO ocupacoes(ocupacao_id,ocupacao_title,min_salario,max_salario) VALUES (21,'Programador',4000.00,9000.00);
INSERT INTO ocupacoes(ocupacao_id,ocupacao_title,min_salario,max_salario) VALUES (22,'Desenvolvedor',4000.00,9000.00);

/* 3 novos funcionarios */ 
INSERT INTO funcionarios (funcionario_id,primeiro_nome,sobrenome,email,telefone,dataContratacao,ocupacao_id,salario,gerente_id,departamento_id) VALUES (215,'William','Ferreira','william.ferreira@momento.org','4002-2002','2022-11-04',21,4487.00,NULL,12);
INSERT INTO funcionarios (funcionario_id,primeiro_nome,sobrenome,email,telefone,dataContratacao,ocupacao_id,salario,gerente_id,departamento_id) VALUES (216,'Fabiana','Raulino','fabiana.raulino@momento.org','4003-3003','2022-11-04',20,4487.00,NULL,12);
INSERT INTO funcionarios (funcionario_id,primeiro_nome,sobrenome,email,telefone,dataContratacao,ocupacao_id,salario,gerente_id,departamento_id) VALUES (217,'Fernanda','Lima','fernanda.lima@momento.org','4004-4004','2022-11-04',22,4487.00,NULL,12);


/*Dependentes do William*/
INSERT INTO dependentes(dependente_id,primeiro_nome,sobrenome,parentesco,funcionario_id) VALUES ('','Inara','Ferreira','Cônjuge',215);
INSERT INTO dependentes(dependente_id,primeiro_nome,sobrenome,parentesco,funcionario_id) VALUES ('' ,'Gabriel','Ferreira','Filho(a)',215);

/*Dependentes da Fabiana*/
INSERT INTO dependentes(dependente_id,primeiro_nome,sobrenome,parentesco,funcionario_id) VALUES ('','Maya','Raulino','Filho(a)',216);
INSERT INTO dependentes(dependente_id,primeiro_nome,sobrenome,parentesco,funcionario_id) VALUES ('','Laura','Raulino','Filho(a)',216);

/*Dependentes da Fernanda*/
INSERT INTO dependentes(dependente_id,primeiro_nome,sobrenome,parentesco,funcionario_id) VALUES ('' ,'Rodrigo','Lima','Cônjuge',217);

/*O salário de todos eles será a média salarial dos departamentos de administração e finanças. */
SELECT AVG(`salario`) FROM funcionarios WHERE departamento_id = '1' AND '10';


/*9 - Informe todas as regiões em que a empresa atua acompanhadas de seus países.*/
SELECT paises.pais_name AS Pais, regiao.regiao_name FROM paises INNER JOIN regiao WHERE paises.regiao_id = regiao.regiao_id;


/* Filho de quem?
10 - Joe Sciarra é filho de quem? */
SELECT dependentes.primeiro_nome, funcionarios.primeiro_nome From dependentes INNER JOIN funcionarios ON dependentes.funcionario_id = funcionarios.funcionario_id WHERE dependentes.primeiro_nome = 'Joe';

/*11 - Jose Manuel possui filhos?*/ 
SELECT dependentes.primeiro_nome, funcionarios.primeiro_nome, dependentes.parentesco From dependentes INNER JOIN funcionarios ON dependentes.funcionario_id = funcionarios.funcionario_id WHERE dependentes.funcionario_id = 112;

/*12 - Qual região possui mais países?*/
SELECT regiao.regiao_name, COUNT(paises.regiao_id) FROM paises INNER JOIN regiao WHERE regiao.regiao_id = paises.regiao_id GROUP BY regiao.regiao_name;

/*13 - Exiba o nome cada funcionário acompanhado de seus dependentes.*/
SELECT funcionarios.primeiro_nome, dependentes.primeiro_nome FROM funcionarios INNER JOIN dependentes WHERE funcionarios.funcionario_id = dependentes.funcionario_id;

/*14 - Karen Partners possui um cônjuge?*/
SELECT* FROM funcionarios WHERE primeiro_nome LIKE 'Karen';
SELECT dependentes.primeiro_nome, funcionarios.primeiro_nome, dependentes.parentesco From dependentes INNER JOIN funcionarios ON dependentes.funcionario_id = funcionarios.funcionario_id WHERE dependentes.funcionario_id = 146; 

/*15 - O ID da tabela de países não segue um padrão numérico. Na sua visão, qual o impacto disso no desenvolvimento do banco?*/
Talvez resulte em uma maior confusão e demora ao inserir um novo dado, tendo que consultar toda vez para não errar. Mas nao afeta o desenvolvimento.


/* 16 - Escolha um país para se mudar. Qual seria esse país? Por que escolheria esse país? E o departamento. O que seria? Como seriam seus funcionários? */
Eu me mudaria para os Estados Unidos, precisamente para a California por ser uma área em constante desenvolvimento tecnologico por conta do Vale do silício. O meu departamento seria Desenvolvimento de tudo, menos java. Os funcionarios seriam em sua grande maioria jovens em sua primeira experiencia no mercado e todos amariam C#.

/* 17 - Atualize as informações na tabela para que seu departamento seja criado.*/
INSERT INTO departamento(departamento_id,departamento_name,posicao_id) VALUES (13,'No Java',2100);
