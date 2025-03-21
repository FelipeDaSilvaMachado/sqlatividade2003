CREATE DATABASE IF NOT EXISTS loja_eletronicos;
USE loja_eletronicos;
CREATE TABLE produtos (
	id INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(100),
	categoria VARCHAR(50),
	preco DECIMAL(8,2), 
	quantidade_estoque INT
);

INSERT INTO produtos (nome, categoria, preco, quantidade_estoque) VALUES
('Smartphone XYZ', 'Celulares', 1500.00, 10),
('Notebook ABC', 'Computadores', 3500.00, 5),
('Tablet 10 Polegadas', 'Tablets', 1200.00, 8),
('Fone de Ouvido Bluetooth', 'Acessórios', 250.00, 20),
('Smartwatch Pro', 'Wearables', 800.00, 15),
('Teclado Mecânico RGB', 'Periféricos', 400.00, 12),
('Mouse Gamer', 'Periféricos', 300.00, 18),
('Monitor 24 Polegadas', 'Monitores', 900.00, 7),
('Caixa de Som Portátil', 'Acessórios', 200.00, 25),
('Impressora Multifuncional', 'Impressão', 600.00, 3);

select * from produtos;
select nome, preco from produtos;
select * from produtos where preco > 1000.00;
select * from produtos order by preco asc;
select * from produtos where preco < 500.00;
select * from produtos where categoria = "Acessórios";
select * from produtos where quantidade_estoque > 10;
select * from produtos where preco >= 300.00 and preco <= 800.00;
insert into produtos (nome, categoria, preco, quantidade_estoque)
values ("Alexa", "Acessórios", 365.90, 20);
select * from produtos;
update produtos set preco = 1600.00 where id = 1;
select * from produtos;
delete from produtos where id = 10;
select * from produtos;
alter table produtos add marca varchar(30) not null;
select * from produtos;
select * from produtos order by nome asc;
select * from produtos where categoria = "Periféricos" order by preco desc;
select * from produtos order by quantidade_estoque desc;
select * from produtos where preco > 1000.00 order by nome asc;
select * from produtos where preco = 250.00 or preco = 800.00;
select * from produtos where preco = (select max(preco) from produtos);
select * from produtos where quantidade_estoque = null;