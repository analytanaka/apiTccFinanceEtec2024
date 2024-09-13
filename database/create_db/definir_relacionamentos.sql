ALTER TABLE `despesas` ADD CONSTRAINT `despesas_fk8` FOREIGN KEY (`usu_id`) REFERENCES `usuario`(`usu_id`);

ALTER TABLE `despesas` ADD CONSTRAINT `despesas_fk9` FOREIGN KEY (`tp_id`) REFERENCES `tipos_despesa`(`tp_id`);
ALTER TABLE `classificacao` ADD CONSTRAINT `classificacao_fk2` FOREIGN KEY (`usu_id`) REFERENCES `usuario`(`usu_id`);
ALTER TABLE `receitas` ADD CONSTRAINT `receitas_fk4` FOREIGN KEY (`usu_id`) REFERENCES `usuario`(`usu_id`);

ALTER TABLE `receitas` ADD CONSTRAINT `receitas_fk5` FOREIGN KEY (`rec_classi`) REFERENCES `classificacao`(`cla_id`);
ALTER TABLE `tipos_despesa` ADD CONSTRAINT `tipos_despesa_fk2` FOREIGN KEY (`usu_id`) REFERENCES `usuario`(`usu_id`);