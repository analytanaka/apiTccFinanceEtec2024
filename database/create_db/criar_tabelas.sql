 use bd_tcc_etim_122_g4;  
 
CREATE TABLE IF NOT EXISTS usuario (
    usu_id INT AUTO_INCREMENT PRIMARY KEY,
    usu_login VARCHAR(50) NOT NULL,
    usu_senha VARCHAR(45) NOT NULL,
    usu_nome VARCHAR(100) NOT NULL,
    usu_email VARCHAR(60) NOT NULL,
    usu_fone VARCHAR(30) NOT NULL,
    usu_fotoperfil VARCHAR (5000)
);
 
 alter table usuario add usu_fotoperfil varchar (5000); - usuário modifica foto de perfil;


CREATE TABLE IF NOT EXISTS despesas (
    des_id INT AUTO_INCREMENT PRIMARY KEY,
    des_descricao VARCHAR(45) NOT NULL,
    des_data_vencimento DATE NOT NULL,
    des_data_pagamento DATE NOT NULL,
    des_valor DECIMAL(10,2) NOT NULL,
    des_desconto DECIMAL(10,2) NOT NULL,
    des_multa DECIMAL(10,2),
    des_juros DECIMAL(10,2),
    usu_id INT NOT NULL,
    tp_id INT NOT NULL,
    FOREIGN KEY (usu_id) REFERENCES usuario(usu_id),
    FOREIGN KEY (tp_id) REFERENCES tipos_despesa(tp_id)
);



CREATE TABLE IF NOT EXISTS classificacao (
    cla_id INT AUTO_INCREMENT PRIMARY KEY,
    cla_descricao VARCHAR(20) NOT NULL,
    usu_id INT NOT NULL,
    FOREIGN KEY (usu_id) REFERENCES usuario(usu_id)
);




CREATE TABLE IF NOT EXISTS receitas (
    rec_id INT AUTO_INCREMENT PRIMARY KEY,
    rec_descricao VARCHAR(70) NOT NULL,
    rec_data_receber DATE NOT NULL,
    rec_valor DECIMAL(10,2) NOT NULL,
    usu_id INT NOT NULL,
    rec_classi INT NOT NULL,
    FOREIGN KEY (usu_id) REFERENCES usuario(usu_id),
    FOREIGN KEY (rec_classi) REFERENCES classificacao(cla_id)
);




CREATE TABLE IF NOT EXISTS tipos_despesa (
    tp_id INT AUTO_INCREMENT PRIMARY KEY,
    tp_descricao VARCHAR(50) NOT NULL,
    usu_id INT NOT NULL,
    FOREIGN KEY (usu_id) REFERENCES usuario(usu_id)
);

