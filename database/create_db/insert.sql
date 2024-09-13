insert into usuario (usu_login, usu_senha,  usu_nome, usu_email, usu_fone) values( 'vitoria', 'vit190307', 'anny', 'anny_karoline@gmail.com','14997123265');

insert into despesas ( des_descricao, des_data_vencimento, des_data_pagamento, des_valor, des_desconto, des_multa, des_juros, usu_id , tp_id ) values ('luz','2023-03-19','2023-03-13',34.00,50.00,20.00,500.00,1,1);

insert into classificacao  (cla_descricao, usu_id) values('mensal',1);

insert into receitas ( rec_descricao, rec_data_receber, rec_valor, usu_id,  rec_classi) values('extra','2023-03-17',1345.00,1,1);

insert into tipos_despesa ( tp_descricao, usu_id) values ('depilação', 1);