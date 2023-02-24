BEGIN;

INSERT INTO usuario_base (login, password) VALUES("admin","202cb962ac59075b964b07152d234b70");
INSERT INTO usuario_base (login, password) VALUES("client1","202cb962ac59075b964b07152d234b70");
INSERT INTO usuario_base (login, password) VALUES("client2","202cb962ac59075b964b07152d234b70");
INSERT INTO usuario_base (login, password) VALUES("client3","202cb962ac59075b964b07152d234b70");
INSERT INTO usuario_base (login, password) VALUES("client4","202cb962ac59075b964b07152d234b70");
INSERT INTO usuario_base (login, password) VALUES("dev1","202cb962ac59075b964b07152d234b70");
INSERT INTO usuario_base (login, password) VALUES("dev2","202cb962ac59075b964b07152d234b70");
INSERT INTO usuario_base (login, password) VALUES("dev3","202cb962ac59075b964b07152d234b70");

INSERT INTO desenvolvedor (id) VALUES((SELECT id FROM usuario_base WHERE login="dev1"));
INSERT INTO desenvolvedor (id) VALUES((SELECT id FROM usuario_base WHERE login="dev2"));
INSERT INTO desenvolvedor (id) VALUES((SELECT id FROM usuario_base WHERE login="dev3"));

INSERT INTO gerenciador (id) VALUES((SELECT id FROM usuario_base WHERE login="admin1"));

INSERT INTO usuario (id) VALUES((SELECT id FROM usuario_base WHERE login="client1"));
INSERT INTO usuario (id) VALUES((SELECT id FROM usuario_base WHERE login="client2"));
INSERT INTO usuario (id) VALUES((SELECT id FROM usuario_base WHERE login="client3"));
INSERT INTO usuario (id) VALUES((SELECT id FROM usuario_base WHERE login="client4"));

INSERT INTO tags (tag) VALUES("rpg");
INSERT INTO tags (tag) VALUES("fps");
INSERT INTO tags (tag) VALUES("online");
INSERT INTO tags (tag) VALUES("puzzle");

INSERT INTO jogo_pendente (id_dev, nome, preco, descricao, link_imagens) VALUES((SELECT id FROM usuario_base WHERE login="dev1"), "CSGO", 20.5, "Jogo CSGO", "img.com");
INSERT INTO jogo_pendente (id_dev, nome, preco, descricao, link_imagens) VALUES((SELECT id FROM usuario_base WHERE login="dev2"), "GTAV", 60.5, "Jogo GTAV", "img.com");
INSERT INTO jogo_pendente (id_dev, nome, preco, descricao, link_imagens, link_trailer) VALUES((SELECT id FROM usuario_base WHERE login="dev2"), "RDR2", 180.5, "Jogo RDR2", "img.com", "trailer.com");
INSERT INTO jogo_pendente (id_dev, nome, preco, descricao, link_imagens) VALUES((SELECT id FROM usuario_base WHERE login="dev3"), "game1", 100, "Game 1", "img.com");
INSERT INTO jogo_pendente (id_dev, nome, preco, descricao, link_imagens) VALUES((SELECT id FROM usuario_base WHERE login="dev3"), "game2-a", 50, "Game 2", "img.com");
INSERT INTO jogo_pendente (id_dev, nome, preco, descricao, link_imagens) VALUES((SELECT id FROM usuario_base WHERE login="dev3"), "game3-r", 80, "Game 3", "img.com");
INSERT INTO jogo_pendente (id_dev, nome, preco, descricao, link_imagens) VALUES((SELECT id FROM usuario_base WHERE login="dev3"), "game4-ar", 90, "Game 4", "img.com");
INSERT INTO jogo_pendente (id_dev, nome, preco, descricao, link_imagens) VALUES((SELECT id FROM usuario_base WHERE login="dev3"), "game5-a", 20, "Game 5", "img.com");

INSERT INTO jogo_tags(id_jogo, tag) VALUES((SELECT id FROM jogo_pendente WHERE nome="CSGO"), "online");
INSERT INTO jogo_tags(id_jogo, tag) VALUES((SELECT id FROM jogo_pendente WHERE nome="CSGO"), "fps");
INSERT INTO jogo_tags(id_jogo, tag) VALUES((SELECT id FROM jogo_pendente WHERE nome="GTAV"), "online");
INSERT INTO jogo_tags(id_jogo, tag) VALUES((SELECT id FROM jogo_pendente WHERE nome="RDR2"), "online");
INSERT INTO jogo_tags(id_jogo, tag) VALUES((SELECT id FROM jogo_pendente WHERE nome="RDR2"), "puzzle");
INSERT INTO jogo_tags(id_jogo, tag) VALUES((SELECT id FROM jogo_pendente WHERE nome="RDR2"), "rpg");
INSERT INTO jogo_tags(id_jogo, tag) VALUES((SELECT id FROM jogo_pendente WHERE nome="game1"), "online");
INSERT INTO jogo_tags(id_jogo, tag) VALUES((SELECT id FROM jogo_pendente WHERE nome="game1"), "puzzle");
INSERT INTO jogo_tags(id_jogo, tag) VALUES((SELECT id FROM jogo_pendente WHERE nome="game2-a"), "puzzle");
INSERT INTO jogo_tags(id_jogo, tag) VALUES((SELECT id FROM jogo_pendente WHERE nome="game3-r"), "puzzle");
INSERT INTO jogo_tags(id_jogo, tag) VALUES((SELECT id FROM jogo_pendente WHERE nome="game4-ar"), "puzzle");
INSERT INTO jogo_tags(id_jogo, tag) VALUES((SELECT id FROM jogo_pendente WHERE nome="game5-a"), "puzzle");

INSERT INTO jogo_aceito(id, id_gerenciador) VALUES((SELECT id FROM jogo_pendente WHERE nome="CSGO"), (SELECT id FROM usuario_base WHERE login="admin"));
INSERT INTO jogo_aceito(id, id_gerenciador) VALUES((SELECT id FROM jogo_pendente WHERE nome="GTAV"), (SELECT id FROM usuario_base WHERE login="admin"));
INSERT INTO jogo_aceito(id, id_gerenciador) VALUES((SELECT id FROM jogo_pendente WHERE nome="RDR2"), (SELECT id FROM usuario_base WHERE login="admin"));
INSERT INTO jogo_aceito(id, id_gerenciador) VALUES((SELECT id FROM jogo_pendente WHERE nome="game2-a"), (SELECT id FROM usuario_base WHERE login="admin"));
INSERT INTO jogo_aceito(id, id_gerenciador) VALUES((SELECT id FROM jogo_pendente WHERE nome="game4-ar"), (SELECT id FROM usuario_base WHERE login="admin"));
INSERT INTO jogo_aceito(id, id_gerenciador) VALUES((SELECT id FROM jogo_pendente WHERE nome="game5-a"), (SELECT id FROM usuario_base WHERE login="admin"));

INSERT INTO jogo_instanciado(id_jogo, chave) VALUES((SELECT id FROM jogo_pendente WHERE nome="CSGO"), "efj3dVjNxQHnYS64LjQ5vcqlg0qAcpq5D8hi6x3jg1PMxXo9qh7pzuFjFJcYeydW"); -- 1
INSERT INTO jogo_instanciado(id_jogo, chave) VALUES((SELECT id FROM jogo_pendente WHERE nome="CSGO"), "IyIfFP1SdsOWT5Oeyxv9p3tZT1AjR5EJ1k1JaYOjKrQvMjinsHilcqmF39PAui4P");
INSERT INTO jogo_instanciado(id_jogo, chave) VALUES((SELECT id FROM jogo_pendente WHERE nome="CSGO"), "nuPyyeGoexuVQtgoEFXQ0kRYNQtuNLkLJGSNcD3GtO78R3viuMHggQM7KScTAq4U");
INSERT INTO jogo_instanciado(id_jogo, chave) VALUES((SELECT id FROM jogo_pendente WHERE nome="CSGO"), "4r8QtLdOTrXHHMgovkWljrelF1xUeby6MNIhQSyRQXARa1OQQ9bHMYLhWKr5c6WM");
INSERT INTO jogo_instanciado(id_jogo, chave) VALUES((SELECT id FROM jogo_pendente WHERE nome="GTAV"), "N0sYgvx7UxN5Rk4dLrGGabbr0TIwb5PbuQfUZxaY8Zr2y3xJ4YCfzqzdISi5xjng"); -- 5
INSERT INTO jogo_instanciado(id_jogo, chave) VALUES((SELECT id FROM jogo_pendente WHERE nome="GTAV"), "OSCgScuTE6Z4pCqvFQZt8jDhxYTUZQOgBktPn7W6kJwPii1hRXGAr4T5ezl2rVhk");
INSERT INTO jogo_instanciado(id_jogo, chave) VALUES((SELECT id FROM jogo_pendente WHERE nome="GTAV"), "cjzh7LHv6HoyOxQ9yvywpxTWU26ObawZWbh9Tw1GYHnJU4aLtihTu8y4FnWqOM4k");
INSERT INTO jogo_instanciado(id_jogo, chave) VALUES((SELECT id FROM jogo_pendente WHERE nome="RDR2"), "tkAogAtCYbjR0m2nP3PKdjprK2uTrFXKd1xLiqsJnRrgliB2zLBfxtAyhIi8ZZTv");
INSERT INTO jogo_instanciado(id_jogo, chave) VALUES((SELECT id FROM jogo_pendente WHERE nome="RDR2"), "wsMC7A2iUpggCF4wvs2wPWbtX8mIsfiuFfc2WA0X9Jgbm54HrUrs82lNhl3FNs9p");
INSERT INTO jogo_instanciado(id_jogo, chave) VALUES((SELECT id FROM jogo_pendente WHERE nome="RDR2"), "TmbfS75YD0g8wSauMSydiVvkjhoUFSj8MsPJSK7P5pnNK8Wcwh3k7VjiNbbELJJh"); -- 10
INSERT INTO jogo_instanciado(id_jogo, chave) VALUES((SELECT id FROM jogo_pendente WHERE nome="game2-a"), "K5L1fLJMJLiZPQ96P55IoCf81IeHT6dWgJ7F7q6dO5uuIAah5RWqGE5mWnifwc7B");
INSERT INTO jogo_instanciado(id_jogo, chave) VALUES((SELECT id FROM jogo_pendente WHERE nome="game2-a"), "euGmWgtr4NjpacxEHgdhBdvhqLS0aVo4tJtzIxcRMACBY2xw7XPuV7li9SqhLMRj");
INSERT INTO jogo_instanciado(id_jogo, chave) VALUES((SELECT id FROM jogo_pendente WHERE nome="game2-a"), "BtGVU6PGHmePVUoQMCKkJS0D4dFB4n8QGUZRR3l66LaYtCr3uZOemTXN5EFVaOaD");
INSERT INTO jogo_instanciado(id_jogo, chave) VALUES((SELECT id FROM jogo_pendente WHERE nome="game4-ar"), "6Pf9Wh9bVbGjXuLCAKpxZV584LnyKehTHBxGh41NWd6QnHm36jJErI6m43hXnrjN");
INSERT INTO jogo_instanciado(id_jogo, chave) VALUES((SELECT id FROM jogo_pendente WHERE nome="game4-ar"), "JZg3UDDvCVygUC832AedEg6xodn0D4jxXwOvHOMQb1oumlSB9DGil0XrNOkwiDN3"); -- 15
INSERT INTO jogo_instanciado(id_jogo, chave) VALUES((SELECT id FROM jogo_pendente WHERE nome="game4-ar"), "f2lmX7N4OfKqa5dpt8WrVkRKyYrA3S8AsZGpg9nWbtY0voY5oTRjJsiaExDIgXGm");
INSERT INTO jogo_instanciado(id_jogo, chave) VALUES((SELECT id FROM jogo_pendente WHERE nome="game5-a"), "SbrGFiLQ29vyJhx9shSnW1gVJjuZwJKY52rKMXTPQe1fFJB9AamrOIWMbpz8cDzb");
INSERT INTO jogo_instanciado(id_jogo, chave) VALUES((SELECT id FROM jogo_pendente WHERE nome="game5-a"), "kHoEY9ssP1WFKCvq61Iit11lRwZWY2ysluIZKej7t6pCOfrNLdaqLJRJf5geWnB3");
INSERT INTO jogo_instanciado(id_jogo, chave) VALUES((SELECT id FROM jogo_pendente WHERE nome="game5-a"), "XKU5MPdLsKH0u0N9XBfUyJCCL2iJn1u5bUl4FsdfinNnFmhKU3yjMdbqwUXkfZxh");
INSERT INTO jogo_instanciado(id_jogo, chave) VALUES((SELECT id FROM jogo_pendente WHERE nome="game5-a"), "V3VkZfIaKstzxGACvMKqRnjGazarOZA1g5y4f6rU5ADZY6so7NPJUSPee5Tx2Z3J"); -- 20

INSERT INTO jogo_removido(id_jogo, justificativa) VALUES((SELECT id FROM jogo_pendente WHERE nome="game3-r"), "Violou políticas da loja");
INSERT INTO jogo_removido(id_jogo) VALUES((SELECT id FROM jogo_pendente WHERE nome="game4-ar")); -- Dev o removeu

INSERT INTO biblioteca_jogos(id_usuario, id_chave) VALUES((SELECT id FROM usuario_base WHERE login="client1"), 1);
INSERT INTO biblioteca_jogos(id_usuario, id_chave) VALUES((SELECT id FROM usuario_base WHERE login="client2"), 2);
INSERT INTO biblioteca_jogos(id_usuario, id_chave) VALUES((SELECT id FROM usuario_base WHERE login="client1"), 3);
INSERT INTO biblioteca_jogos(id_usuario, id_chave) VALUES((SELECT id FROM usuario_base WHERE login="client4"), 4);
INSERT INTO biblioteca_jogos(id_usuario, id_chave) VALUES((SELECT id FROM usuario_base WHERE login="client2"), 5);
INSERT INTO biblioteca_jogos(id_usuario, id_chave) VALUES((SELECT id FROM usuario_base WHERE login="client3"), 6);
INSERT INTO biblioteca_jogos(id_usuario, id_chave) VALUES((SELECT id FROM usuario_base WHERE login="client2"), 7);
INSERT INTO biblioteca_jogos(id_usuario, id_chave) VALUES((SELECT id FROM usuario_base WHERE login="client2"), 8);
INSERT INTO biblioteca_jogos(id_usuario, id_chave) VALUES((SELECT id FROM usuario_base WHERE login="client2"), 9);
INSERT INTO biblioteca_jogos(id_usuario, id_chave) VALUES((SELECT id FROM usuario_base WHERE login="client3"), 10);
INSERT INTO biblioteca_jogos(id_usuario, id_chave) VALUES((SELECT id FROM usuario_base WHERE login="client1"), 11);
INSERT INTO biblioteca_jogos(id_usuario, id_chave) VALUES((SELECT id FROM usuario_base WHERE login="client3"), 12);
INSERT INTO biblioteca_jogos(id_usuario, id_chave) VALUES((SELECT id FROM usuario_base WHERE login="client1"), 13);
INSERT INTO biblioteca_jogos(id_usuario, id_chave) VALUES((SELECT id FROM usuario_base WHERE login="client4"), 14);
INSERT INTO biblioteca_jogos(id_usuario, id_chave) VALUES((SELECT id FROM usuario_base WHERE login="client2"), 15);
INSERT INTO biblioteca_jogos(id_usuario, id_chave) VALUES((SELECT id FROM usuario_base WHERE login="client4"), 16);
INSERT INTO biblioteca_jogos(id_usuario, id_chave) VALUES((SELECT id FROM usuario_base WHERE login="client1"), 17);
INSERT INTO biblioteca_jogos(id_usuario, id_chave) VALUES((SELECT id FROM usuario_base WHERE login="client4"), 18);
INSERT INTO biblioteca_jogos(id_usuario, id_chave) VALUES((SELECT id FROM usuario_base WHERE login="client3"), 19);
INSERT INTO biblioteca_jogos(id_usuario, id_chave) VALUES((SELECT id FROM usuario_base WHERE login="client4"), 20);

INSERT INTO avaliacao(id_usuario, id_jogo, nota) VALUES((SELECT id FROM usuario_base WHERE login="client1"), (SELECT id FROM jogo_pendente WHERE nome="CSGO"), 7);
INSERT INTO avaliacao(id_usuario, id_jogo, nota) VALUES((SELECT id FROM usuario_base WHERE login="client1"), (SELECT id FROM jogo_pendente WHERE nome="game2-a"), 8);
INSERT INTO avaliacao(id_usuario, id_jogo, nota) VALUES((SELECT id FROM usuario_base WHERE login="client1"), (SELECT id FROM jogo_pendente WHERE nome="game5-a"), 8);
INSERT INTO avaliacao(id_usuario, id_jogo, nota) VALUES((SELECT id FROM usuario_base WHERE login="client2"), (SELECT id FROM jogo_pendente WHERE nome="CSGO"), 8);
INSERT INTO avaliacao(id_usuario, id_jogo, nota) VALUES((SELECT id FROM usuario_base WHERE login="client2"), (SELECT id FROM jogo_pendente WHERE nome="GTAV"), 5);
INSERT INTO avaliacao(id_usuario, id_jogo, nota) VALUES((SELECT id FROM usuario_base WHERE login="client2"), (SELECT id FROM jogo_pendente WHERE nome="RDR2"), 6);
INSERT INTO avaliacao(id_usuario, id_jogo, nota, resenha) VALUES((SELECT id FROM usuario_base WHERE login="client2"), (SELECT id FROM jogo_pendente WHERE nome="game4-ar"), 2, "Odeiei");
INSERT INTO avaliacao(id_usuario, id_jogo, nota) VALUES((SELECT id FROM usuario_base WHERE login="client3"), (SELECT id FROM jogo_pendente WHERE nome="GTAV"), 8);
INSERT INTO avaliacao(id_usuario, id_jogo, nota) VALUES((SELECT id FROM usuario_base WHERE login="client3"), (SELECT id FROM jogo_pendente WHERE nome="RDR2"), 9);
INSERT INTO avaliacao(id_usuario, id_jogo, nota) VALUES((SELECT id FROM usuario_base WHERE login="client3"), (SELECT id FROM jogo_pendente WHERE nome="game2-a"), 8);
INSERT INTO avaliacao(id_usuario, id_jogo, nota) VALUES((SELECT id FROM usuario_base WHERE login="client3"), (SELECT id FROM jogo_pendente WHERE nome="game5-a"), 4);
INSERT INTO avaliacao(id_usuario, id_jogo, nota) VALUES((SELECT id FROM usuario_base WHERE login="client4"), (SELECT id FROM jogo_pendente WHERE nome="CSGO"), 7);
INSERT INTO avaliacao(id_usuario, id_jogo, nota) VALUES((SELECT id FROM usuario_base WHERE login="client4"), (SELECT id FROM jogo_pendente WHERE nome="game4-ar"), 3);
INSERT INTO avaliacao(id_usuario, id_jogo, nota) VALUES((SELECT id FROM usuario_base WHERE login="client4"), (SELECT id FROM jogo_pendente WHERE nome="game5-a"), 8);

UPDATE usuario SET saldo = usuario.saldo + 1000 WHERE usuario.id=(SELECT id FROM usuario_base WHERE login="client1");
UPDATE usuario SET saldo = usuario.saldo + 200 WHERE usuario.id=(SELECT id FROM usuario_base WHERE login="client2");
UPDATE usuario SET saldo = usuario.saldo + 50 WHERE usuario.id=(SELECT id FROM usuario_base WHERE login="client3");
UPDATE usuario SET saldo = usuario.saldo + 6 WHERE usuario.id=(SELECT id FROM usuario_base WHERE login="client4");

UPDATE desenvolvedor SET lucro = desenvolvedor.lucro + 500 WHERE desenvolvedor.id=(SELECT id FROM usuario_base WHERE login="dev1");
UPDATE desenvolvedor SET lucro = desenvolvedor.lucro + 400 WHERE desenvolvedor.id=(SELECT id FROM usuario_base WHERE login="dev2");
UPDATE desenvolvedor SET lucro = desenvolvedor.lucro + 200 WHERE desenvolvedor.id=(SELECT id FROM usuario_base WHERE login="dev3");

INSERT INTO ofertas(id_usuario, id_chave, valor) VALUES((SELECT id FROM usuario_base WHERE login="client1"), 1, 18);
INSERT INTO ofertas(id_usuario, id_chave, valor) VALUES((SELECT id FROM usuario_base WHERE login="client2"), 2, 15);
INSERT INTO ofertas(id_usuario, id_chave, valor) VALUES((SELECT id FROM usuario_base WHERE login="client2"), 15, 80);
INSERT INTO ofertas(id_usuario, id_chave, valor) VALUES((SELECT id FROM usuario_base WHERE login="client1"), 11, 50);

INSERT INTO oferta_concluida(id, id_user_vendeu, id_user_comprou, id_chave, valor) VALUES(1, 2, 4, 1, 18);

INSERT INTO trocas(id_usuario, id_chave) VALUES((SELECT id FROM usuario_base WHERE login="client4"), 16); -- 1
INSERT INTO trocas(id_usuario, id_chave) VALUES((SELECT id FROM usuario_base WHERE login="client3"), 10); -- 2

INSERT INTO proposta_contraparte(id_troca, id_usuario, id_chave) VALUES(1, (SELECT id FROM usuario_base WHERE login="client3"), 19);
INSERT INTO proposta_contraparte(id_troca, id_usuario, id_chave) VALUES(1, (SELECT id FROM usuario_base WHERE login="client3"), 12);
INSERT INTO proposta_contraparte(id_troca, id_usuario, id_chave) VALUES(2, (SELECT id FROM usuario_base WHERE login="client2"), 7);
INSERT INTO proposta_contraparte(id_troca, id_usuario, id_chave) VALUES(2, (SELECT id FROM usuario_base WHERE login="client1"), 13);

INSERT INTO troca_concluida(id, id_user_iniciou, id_user_aceitou, id_chave_proposto, id_chave_aceito) VALUES(1, (SELECT id FROM usuario_base WHERE login="client4"), (SELECT id FROM usuario_base WHERE login="client3"), 16, 12);

COMMIT;