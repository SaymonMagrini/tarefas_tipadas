CREATE TABLE tb_status (
  id INT AUTO_INCREMENT PRIMARY KEY,
  status VARCHAR(25) NOT NULL
);

INSERT INTO tb_status (status) VALUES ('pendente'), ('realizado');

CREATE TABLE tb_categorias (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(50) NOT NULL,
  descricao VARCHAR(255)
);

CREATE TABLE tb_tags (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(50) NOT NULL,
  descricao VARCHAR(255)
);

CREATE TABLE tb_tarefas (
  id INT AUTO_INCREMENT PRIMARY KEY,
  id_status INT NOT NULL DEFAULT 1,
  tarefa TEXT NOT NULL,
  id_categoria INT NOT NULL DEFAULT 1,
  data_cadastro DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (id_status) REFERENCES tb_status(id),
  FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

CREATE TABLE tb_tarefa_tags (
  id_tarefa INT NOT NULL,
  id_tag INT NOT NULL,
  PRIMARY KEY(id_tarefa, id_tag),
  FOREIGN KEY(id_tarefa) REFERENCES tb_tarefas(id),
  FOREIGN KEY(id_tag) REFERENCES tb_tags(id)
);
