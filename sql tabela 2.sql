create database cadastro
default character set utf8
default collate utf8_general_ci;

create table pessoas (
id int not null  auto_increment,
nome varchar (30) not null,
nascimento date,
sexo enum ('M','F'),
peso decimal (5,2),
altura decimal (3,2),
nacionalidade varchar (20) default 'brasil',
primary key (id)
)
default charset = utf8;

insert into pessoas values 
( default ,'thiago' , '1987-06-18' ,'F', '63.5' , '1.58', 'argentina');
select * from pessoas;
alter table pessoas
add column profissao varchar (10) after nome;
alter table pessoas
drop column prof;
alter table pessoas 
add codigo int first;
alter table pessoas
modify column profissao varchar (20) not null default '';
alter table pessoas
change  column profissao prof varchar (20);
desc pessoas;
alter table pessoas
rename to gafanhotos;
desc gafanhotos;
create table if not exists cursos (
nome varchar (30) not null unique,
descricao text ,
carga int unsigned,
tolalaulas int,
ano year default '2016'

)
default charset=utf8;
describe cursos;
alter table cursos
add column idcurso int first;
alter table cursos
add primary key(idcurso);

//07 manipulando linhas (update, delete,truncate)//
select *from gafanhotos;
select * from cursos;

insert into cursos values
('1','html4','curso de html5','40','37','2014'),
('2','algoritimos','logica de programaçao','20','15','2014'),
('3','photo shop','dicas de photoshop cc','10','8','2014'),
('4','pgp','curso de php para iniciantes','40','20','2010'),
('5','JARVA','INTRODUÇAO A LINGUAGEM JAVA','10','29','2000'),
('6','MYSQL','BANCO DE DADOS MYSQL','30','15','2016'),
('7','WORD','CURSO COMPLETO DE WORD','40','30','2010'),
('8','SAPATEADO','DANÇAS RITMICAS','40','30','2018'),
('9','COZINHA ARABE','APRENDA A FAZER KIBE','40','30','2018'),
('10','YOUTUBER','GERAR POLEMICA E GANHAR INSCRITOS','5','2','2018');

SELECT *FROM CURSOS;
(\\ 'MODIFICANDO LINHAS INCORRETAS'\\);

UPDATE CURSOS
SET NOME = 'HTML5'
WHERE IDCURSO ='1';
SELECT* FROM CURSOS;
(\\APOS MODIFICAR A LINHA CTRL ENTER NA LINHA PARA MUDAR APOS , CTRL NA LINHA SELECT\\)

UPDATE CURSOS
SET NOME = 'PHP', ANO='2015'
WHERE IDCURSO ='4';
SELECT* FROM CURSOS;

UPDATE CURSOS
SET NOME = 'JAVA', ANO = '2015',CARGA = '40'
WHERE IDCURSO ='5' LIMIT 1;
SELECT* FROM CURSOS;

(\\ REMOVENDO UMA LINHA\\);

delete from cursos
where idcurso='8';
select * from cursos;
(\\e se apaga linha 8 cursos\\);

(\\ removendo todas as linhas de uma tabela\\);

truncate cursos;
select * from cursos;
( \\com este comando se apaga toda tabela cursos\\);

( aula 8 GERENCIANDO COPIAS DE SEGURANÇA MYSQL) ;

(\\ CLICAR EM SERVER , DATA EXPORT, APOS GERAR DUMP PARA EXPORTAR OS DADOS E ARQUIVOS, INCLUDE CREATE SCHEMAS, salvar abrir meus documentos procurar 
pasta dump onde estara salvo a estrutura completa escrita e os comandos executados));


drop database cadastro;
(( clicar em server data import selecionar a pasta onde se encontra arquivo  carredar dados ,dar refresh em esquemas e pronto));

use cadastro;
desc cursos;
desc gafanhotos;
 ( AULA 9 PHPMYADMIM PARTE 1);










