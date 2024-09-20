create database empresa3;

create table departamento(
dep_codigo int auto_increment primary key,
dnome varchar(20)
);

select *from departamento;

create table funcionario(
fun_codigo int auto_increment primary key,
dep_codigo int,
nome varchar(20),
nascimento date,
salario decimal,
foreign key (dep_codigo) references departamento (dep_codigo)
);

select *from funcionario;

create table dependente(
depen_codigo int,
fun_codigo int,
dep_nome varchar(20),
foreign key (fun_codigo) references funcionario (fun_codigo)
);

select *from dependente;

insert into departamento(dep_codigo, dnome)
values(1, "RH"),
(2, "TI"),
(3, "FINANCEIRO"),
(4, "ADMIN"),
(5, "COMERCIAL"),
(6, "VENDAS"),
(7, "MARKETING"),
(8, "PRODUÇÃO"),
(9, "LOGÍSTICA"),
(10, "OPERACIONAL");

select *from departamento;

insert into funcionario(fun_codigo, dep_codigo, nome, nascimento, salario )
values(111, 1, "Giovana", "2008-03-20", 10000.00),
(222, 2, "Isabella", "2008-03-14", 9000.00),
(333, 3,  "Beatriz", "2008-02-13", 9000.00),
(444, 4,  "Maria Julia", "2007-09-20", 8000.00),
(555, 5,  "Maria Clara", "2008-05-06", 8000.00 ),
(666, 6,  "Pedro","2008-06-01", 9000.00),
(777, 7, "Gustavo", "2007-10-17", 8000.00),
(888, 8,  "Lucas", "2008-03-04", 8000.00),
(999, 9, "Guilherme", "2007-09-03", 7000.00),
(100, 10,  "Henrique", "2007-01-26", 1000.00);

select *from funcionario;

insert into dependente(fun_codigo, depen_codigo, dep_nome)
values (111, 01, "Sophia"), 
 (222, 02, "Pedro"),
 (333, 03, "Lorena"),
 (444, 04, "Clara"),
 (555, 05, "Lucca"),
 (666, 06, "Theo"),
 (777, 07, "Valentina"),
 (888, 08, "Beatrice"),
 (999, 09, "Enzo"),
 (100, 10, "Arthur");
 
 select *from dependente;