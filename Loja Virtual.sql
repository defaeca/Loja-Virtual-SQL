CREATE DATABASE db_loja_virtual;

CREATE TABLE tb_produtos(
    id_produto INT not null PRIMARY KEY AUTO_INCREMENT,
    produto varchar(200) not null,
    valor float(8,2) not null
);

CREATE TABLE tb_descricoes_tecnicas(
    id_descricao_tecnica int not null PRIMARY KEY AUTO_INCREMENT,
	  id_produto int not null,
    descricao_tecnica text not null,
    FOREIGN KEY(id_produto) REFERENCES tb_produtos(id_produto)
);

INSERT INTO tb_produtos(produto, valor) VALUES ('Notebook Dell Inspiron Ultrafino Intel Core i7, 16GB RAM e 240GB SSD', 3500.00);

INSERT INTO tb_produtos(produto, valor) VALUES ('Smart TV LED 40" Samsung Full HD 2 HDMI 1 USB Wi-Fi Integrado', 1475.54);

INSERT INTO tb_produtos(produto, valor) VALUES ('Smartphone LG K10 Dual Chip Android 7.0 4G Wi-Fi Câmera de 13MP', 629.99);


INSERT INTO tb_descricoes_tecnicas(id_produto, descricao_tecnica) VALUES (1, 'O novo Inspiron Dell oferece um design elegante e tela infinita que amplia seus sentidos, mantendo a sofisticação e medidas compactas...');

INSERT INTO tb_descricoes_tecnicas(id_produto, descricao_tecnica) VALUES (2, 'A smart TV da Samsung possui tela de 40" e oferece resolução Full HD, imagens duas vezes melhores que TVs HDs padrão...');

INSERT INTO tb_descricoes_tecnicas(id_produto, descricao_tecnica) VALUES (3, 'Saia da mesmice. O smartphone LG está mais divertido, rápido, fácil, cheio de selfies e com tela HD de incríveis 5,3"...');

CREATE TABLE tb_imagens(
    id_imagem int not null primary key AUTO_INCREMENT,
    id_produto int not null,
    FOREIGN key (id_produto) REFERENCES tb_produtos(id_produto),
    url_imagem varchar(200) not null
);

INSERT into tb_imagens (id_produto, url_imagem) VALUES(1,'notebook_1.jpg'),(1,'notebook_2.jpg'),(1,'notebook_3.jpg');

INSERT into tb_imagens (id_produto, url_imagem) VALUES(2,'smarttv_1.jpg'),(2,'smarttv_2.jpg');

INSERT into tb_imagens (id_produto, url_imagem) VALUES(3,'smartphone_1.jpg');

CREATE TABLE tb_clientes(
    id_cliente int not null PRIMARY key AUTO_INCREMENT,
    nome varchar(100) not null,
    idade int(3) not null
);

CREATE TABLE tb_pedidos(
    id_pedidos int not null PRIMARY key AUTO_INCREMENT,
    id_cliente int not null,
    FOREIGN key (id_cliente) REFERENCES tb_clientes(id_cliente),
    data_hora datetime not null DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE tb_pedidos_produtos(
    id_pedido int not null,
    id_produto int not null,
    FOREIGN key (id_pedido) REFERENCES tb_pedidos(id_pedidos),
    FOREIGN key (id_produto) REFERENCES tb_produtos(id_produto)  
);

insert into tb_clientes(nome, idade) VALUES('Jorge',29);
insert into tb_pedidos(id_cliente) VALUES(1);
insert into tb_pedidos_produtos(id_pedido,id_produto) VALUES(1,2);
insert into tb_pedidos_produtos(id_pedido,id_produto) VALUES(1,3);
insert into tb_pedidos(id_cliente)VALUES(1);
insert into tb_pedidos_produtos(id_pedido,id_produto) VALUES(2,3);
insert into tb_clientes(nome, idade) VALUES('Jamilton',30);
INSERT into tb_pedidos (id_cliente) VALUES(2);
INSERT into tb_pedidos_produtos(id_pedido, id_produto) VALUES(3,1);
