SELECT usu_id, usu_login, usu_senha, usu_nome, usu_email, usu_fone FROM usuario;
SELECT des_id, des_descricao, des_data_vencimento, des_data_pagamento, des_valor, des_desconto, des_multa, des_juros, usu_id, tp_id FROM despesas;
SELECT cla_id, usu_id, cla_descricao FROM classificacao;
SELECT rec_id, rec_descricao, rec_data_receber, rec_valor, rec_classi, udu_id FROM receitas;
SELECT tp_id, tp_descricao, usu_id FROM tipos_despesa;

SELECT SUM(rec_valor) AS Receitas
  FROM receitas 
 WHERE YEAR(rec_data_receber) = 2024 
   AND MONTH(rec_data_receber) = 8;
   
SELECT SUM(des_valor+des_multa+des_juros-des_desconto) AS Despesas
  FROM despesas 
 WHERE YEAR(des_data_pagamento) = 2024 
   AND MONTH(des_data_pagamento) = 8;

UPDATE usuario set usu_nome='vitoria' WHERE usu_id=1;

UPDATE despesas set des_data_vencimento='2027-09-08' WHERE des_id=1;

UPDATE classificacao set cla_descricao='anual' WHERE cla_id=1;

UPDATE receitas set rec_valor='400.00' WHERE rec_id=1;

UPDATE tipos_despesa set tp_descricao='manicure' WHERE tp_id=1;


DELETE FROM usuario WHERE usu_id=1;

DELETE FROM receitas WHERE usu_id=1;

DELETE FROM despesas WHERE tp_id=1;

DELETE FROM despesas WHERE des_id=1;

DELETE FROM tipos_despesa WHERE usu_id=1;

DELETE FROM tipos_despesa WHERE tp_id=1;

DELETE FROM despesas WHERE usu_id=1;

DELETE FROM classificacao WHERE usu_id=1;

DELETE FROM classificacao WHERE cla_id=1;

DELETE FROM receitas WHERE rec_id=1;