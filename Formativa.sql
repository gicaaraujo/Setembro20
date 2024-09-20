CREATE DATABASE ger_venda;
use ger_venda;

create table produtos(
produto_id int auto_increment primary key,
nome varchar(50),
preco decimal(10,2),
estoque int
);

create table vendas (
vendas_id int auto_increment primary key,
produto_id int,
quantidade int,
data_venda date,
foreign key (produto_id) references produtos (produto_id)
);

insert into produtos(nome, preco, estoque)
values("Notebook Positivo", 7000.00, 35),
("McBook", 12000.00, 41),
("Notebook Acer", 9000.00, 35),
("Notebook Samsung", 8000.00, 35),
("Notebook Lenovo", 5000.00, 35)
;

select *from produtos;

insert into vendas(produto_id, quantidade, data_venda)
values (1, 5, "2024-09-20");

select *from vendas;

update produtos
set preco = 6500.00
where produto_id = 1;

update vendas
set quantidade = 7
where vendas_id = 1;

delete from produtos
where produto_id = 3;

delete from vendas
where vendas_id = 1;

select *from produtos;
select nome, estoque from produtos;

select *from vendas;
select 	quantidade, data_venda from vendas;
