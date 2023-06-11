CREATE TABLE usuarios (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  senha VARCHAR(100) NOT NULL,
  endereco_id INT,
  metodo_pagamento VARCHAR(50),
  FOREIGN KEY (endereco_id) REFERENCES endereco(id)
);


CREATE TABLE pedidos (
  id INT AUTO_INCREMENT PRIMARY KEY,	
  usuario_id INT,
  itens TEXT,
  FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);


CREATE TABLE itens_pedido (
  id INT AUTO_INCREMENT PRIMARY KEY,
  descricao VARCHAR(100),
  valor DECIMAL(10, 2),
  pedido_id INT,
  FOREIGN KEY (pedido_id) REFERENCES pedidos(id)
);


CREATE TABLE endereco (
  id INT AUTO_INCREMENT PRIMARY KEY,
  logradouro VARCHAR(100),
  numero VARCHAR(10),
  cidade VARCHAR(50),
  estado VARCHAR(50),
  pais VARCHAR(50),
  cep VARCHAR(10)
);


CREATE TABLE cafeteria (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  endereco_id INT,
  FOREIGN KEY (endereco_id) REFERENCES endereco(id)
);



CREATE TABLE cardapio (
  id INT AUTO_INCREMENT PRIMARY KEY,
  descricao VARCHAR(100),
  valor DECIMAL(10, 2),
  cafeteria_id INT,
  FOREIGN KEY (cafeteria_id) REFERENCES cafeteria(id)
);


INSERT INTO usuarios (nome, email, senha, endereco_id, metodo_pagamento)
VALUES ('João Silva', 'joao.silva@example.com', 'senha123', 1, 'Cartão de Crédito');


INSERT INTO pedidos (usuario_id, itens)
VALUES (1, '{"item1": "Camiseta", "item2": "Calça"}');


INSERT INTO endereco (logradouro, numero, cidade, estado, pais, cep)
VALUES ('Rua Principal', '123', 'São Paulo', 'SP', 'Brasil', '01234-567');


INSERT INTO cafeteria (nome, endereco_id)
VALUES ('Cafeteria Central', 2);


INSERT INTO cardapio (descricao, valor, cafeteria_id)
VALUES ('Café Expresso', 3.99, 1), ('Sanduíche de Frango', 8.99, 1);


-- Inserção de dados na tabela "cardapio" para a cafeteria com id 1
INSERT INTO cardapio (descricao, valor, cafeteria_id)
VALUES ('Café Expresso', 3.99, 1),
       ('Sanduíche de Frango', 8.99, 1),
       ('Bolo de Chocolate', 4.99, 1);

-- Inserção de dados na tabela "cardapio" para a cafeteria com id 2
INSERT INTO cardapio (descricao, valor, cafeteria_id)
VALUES ('Cappuccino', 4.49, 2),
       ('Torta de Maçã', 6.99, 2),
       ('Suco de Laranja', 3.49, 2);





