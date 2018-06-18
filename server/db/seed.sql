INSERT INTO partido (nome, id, dt_criacao, sigla)
    VALUES ('Movimento Democrático Brasileiro', 15, '1965-04-23', 'MDB');
INSERT INTO partido (nome, id, dt_criacao, sigla)
    VALUES ('Partido dos Trabalhadores', 13, '1980-02-10', 'PR');
INSERT INTO partido (nome, id, dt_criacao, sigla)
    VALUES ('Partido da Social Democracia Brasileira', 45, '1988-06-25', 'PSDB');
INSERT INTO partido (nome, id, dt_criacao, sigla)
    VALUES ('Partido Progressista', 11, '1995-08-08', 'PP');
INSERT INTO partido (nome, id, dt_criacao, sigla)
    VALUES ('Partido Democrático Trabalhista', 12, '1979-06-17', 'PDT');
INSERT INTO partido (nome, id, dt_criacao, sigla)
    VALUES ('Partido Trabalhista Brasileiro', 14, '1945-05-15', 'PTB');
INSERT INTO partido (nome, id, dt_criacao, sigla)
    VALUES ('Democratas', 25, '1985-01-24', 'DEM');
INSERT INTO partido (nome, id, dt_criacao, sigla)
    VALUES ( 'Partido da República', 22, '2006-10-26', 'PR');
INSERT INTO partido (nome, id, dt_criacao, sigla)
    VALUES ('Partido Socialista Brasileiro', 40, '1947-04-02', 'PSB');
INSERT INTO partido (nome, id, dt_criacao, sigla)
    VALUES ( 'Partido Popular Socialista', 23, '1992-01-26', 'PPS');

INSERT INTO cargo (nome) VALUES ('Presidente');
INSERT INTO cargo (nome) VALUES ('Vice-presidente');
INSERT INTO cargo (nome) VALUES ('Senador');
INSERT INTO cargo (nome) VALUES ('Deputado Distrital');
INSERT INTO cargo (nome) VALUES ('Deputado Federal');
INSERT INTO cargo (nome) VALUES ('Governador');

INSERT INTO estado (nome, area, regiao, sigla, id) VALUES ("Acre", "152,581km2", "Norte", "AC", 12);
INSERT INTO estado (nome, area, regiao, sigla, id) VALUES ("Rondônia", "237,576km2", "Norte", "RO", 11);
INSERT INTO estado (nome, area, regiao, sigla, id) VALUES ("Amazonas", "1,571,000km2", "Norte", "AM", 13);
INSERT INTO estado (nome, area, regiao, sigla, id) VALUES ("Roraima", "224,299km2", "Norte", "RR", 14);
INSERT INTO estado (nome, area, regiao, sigla, id) VALUES ("Pará", "1,247,954km2", "Norte", "PA", 15);
INSERT INTO estado (nome, area, regiao, sigla, id) VALUES ("Amapá", "142,828km2", "Norte", "AP", 16);
INSERT INTO estado (nome, area, regiao, sigla, id) VALUES ("Tocantins", "277,720km2", "Norte", "TO", 17);
INSERT INTO estado (nome, area, regiao, sigla, id) VALUES ("Maranhão", "331,56km2", "Nordeste", "MA", 21);
INSERT INTO estado (nome, area, regiao, sigla, id) VALUES ("Piauí", "251,577km2", "Nordeste", "PI", 22);
INSERT INTO estado (nome, area, regiao, sigla, id) VALUES ("Ceará", "148,920km2", "Nordeste", "CE", 23);
INSERT INTO estado (nome, area, regiao, sigla, id) VALUES ("Rio Grande do Norte", "52,811km2", "Nordeste", "RN", 24);
INSERT INTO estado (nome, area, regiao, sigla, id) VALUES ("Paraíba", "56,585km2", "Nordeste", "PB", 25);
INSERT INTO estado (nome, area, regiao, sigla, id) VALUES ("Pernambuco", "98,311km2", "Nordeste", "PE", 26);
INSERT INTO estado (nome, area, regiao, sigla, id) VALUES ("Alagoas", "27,778km2", "Nordeste", "AL", 27);
INSERT INTO estado (nome, area, regiao, sigla, id) VALUES ("Sergipe", "21,951km2", "Nordeste", "SE", 28);
INSERT INTO estado (nome, area, regiao, sigla, id) VALUES ("Bahia", "564,733km2", "Nordeste", "BA", 29);
INSERT INTO estado (nome, area, regiao, sigla, id) VALUES ("Minas Gerais", "586,522km2", "Sudeste", "MG", 31);
INSERT INTO estado (nome, area, regiao, sigla, id) VALUES ("Espírito Santo", "46,095km2", "Sudeste", "ES", 32);
INSERT INTO estado (nome, area, regiao, sigla, id) VALUES ("Rio de Janeiro", "43,780km2", "Sudeste", "RJ", 33);
INSERT INTO estado (nome, area, regiao, sigla, id) VALUES ("São Paulo", "248,222km2", "Sudeste", "SP", 35);
INSERT INTO estado (nome, area, regiao, sigla, id) VALUES ("Paraná", "199,307km2", "Sul", "PR", 41);
INSERT INTO estado (nome, area, regiao, sigla, id) VALUES ("Santa Catarina", "95,736km2", "Sul", "SC", 42);
INSERT INTO estado (nome, area, regiao, sigla, id) VALUES ("Rio Grande do Sul", "281,730km2", "Sul", "RS", 43);
INSERT INTO estado (nome, area, regiao, sigla, id) VALUES ("Mato Grosso do Sul", "357,145km2", "Sul", "MS", 50);
INSERT INTO estado (nome, area, regiao, sigla, id) VALUES ("Mato Grosso", "903,366km2", "MT", "RS", 51);
INSERT INTO estado (nome, area, regiao, sigla, id) VALUES ("Goiás", "340,111km2", "Sul", "GO", 52);
INSERT INTO estado (nome, area, regiao, sigla, id) VALUES ("Distrito Federal", "5,780km2", "Sul", "DF", 53);

INSERT INTO municipio (sigla, nome, area, id_estado)
   SELECT 'DX', 'Município de Antônio de Nossa Senhora', '17214km2', estado.id
   FROM estado
   WHERE nome = 'São Paulo'
   LIMIT 1;

INSERT INTO endereco (bairro, id, rua, cep, complemento, id_municipio)
   SELECT 'University Oaks', 284, 'Rua Frederico', 78031099, 'Lote 80', municipio.id
   FROM municipio
   WHERE nome = 'Município de Antônio de Nossa Senhora'
   LIMIT 1;

INSERT INTO municipio (sigla, nome, area, id_estado)
   SELECT 'UP', 'Talita do Descoberto', '64367km2', estado.id
   FROM estado
   WHERE nome = 'Tocantins'
   LIMIT 1;

INSERT INTO endereco (bairro, id, rua, cep, complemento, id_municipio)
   SELECT 'Park Heights', 568, 'Viela Nicole', 29885594, 'Sobrado 21', municipio.id
   FROM municipio
   WHERE nome = 'Talita do Descoberto'
   LIMIT 1;

INSERT INTO municipio (sigla, nome, area, id_estado)
   SELECT 'IX', 'Marcondes do Sul', '90724km2', estado.id
   FROM estado
   WHERE nome = 'Espírito Santo'
   LIMIT 1;

INSERT INTO endereco (bairro, id, rua, cep, complemento, id_municipio)
   SELECT 'Paradise Square', 894, 'Marginal Allana', 23478619, 'Apto. 997', municipio.id
   FROM municipio
   WHERE nome = 'Marcondes do Sul'
   LIMIT 1;

INSERT INTO municipio (sigla, nome, area, id_estado)
   SELECT 'JQ', 'Freitas do Sul', '28239km2', estado.id
   FROM estado
   WHERE nome = 'Maranhão'
   LIMIT 1;

INSERT INTO endereco (bairro, id, rua, cep, complemento, id_municipio)
   SELECT 'Summer Court', 584, 'Rodovia Maria Helena Mendes', 47698405, 'Apto. 850', municipio.id
   FROM municipio
   WHERE nome = 'Freitas do Sul'
   LIMIT 1;

INSERT INTO municipio (sigla, nome, area, id_estado)
   SELECT 'GV', 'Mércia do Descoberto', '44432km2', estado.id
   FROM estado
   WHERE nome = 'Alagoas'
   LIMIT 1;

INSERT INTO endereco (bairro, id, rua, cep, complemento, id_municipio)
   SELECT 'Royal Court', 355, 'Rua Maria Sophia', 89881221, 'Apto. 588', municipio.id
   FROM municipio
   WHERE nome = 'Mércia do Descoberto'
   LIMIT 1;

INSERT INTO municipio (sigla, nome, area, id_estado)
   SELECT 'EX', 'Fábio do Sul', '19895km2', estado.id
   FROM estado
   WHERE nome = 'Rio Grande do Norte'
   LIMIT 1;

INSERT INTO endereco (bairro, id, rua, cep, complemento, id_municipio)
   SELECT 'Pine Crossing', 368, 'Rua Gael Simão', 17506085, 'Lote 17', municipio.id
   FROM municipio
   WHERE nome = 'Fábio do Sul'
   LIMIT 1;

INSERT INTO municipio (sigla, nome, area, id_estado)
   SELECT 'GI', 'Município de Ryan', '74224km2', estado.id
   FROM estado
   WHERE nome = 'Distrito Federal'
   LIMIT 1;

INSERT INTO endereco (bairro, id, rua, cep, complemento, id_municipio)
   SELECT 'Park Place', 614, 'Rua Danilo Corte', 34044446, 'Lote 88', municipio.id
   FROM municipio
   WHERE nome = 'Município de Ryan'
   LIMIT 1;

INSERT INTO municipio (sigla, nome, area, id_estado)
   SELECT 'UX', 'Nova Joana', '81412km2', estado.id
   FROM estado
   WHERE nome = 'Mato Grosso'
   LIMIT 1;

INSERT INTO endereco (bairro, id, rua, cep, complemento, id_municipio)
   SELECT 'Eagle Acres', 231, 'Alameda Maria Flor Leiria', 48344325, 'Casa 8', municipio.id
   FROM municipio
   WHERE nome = 'Nova Joana'
   LIMIT 1;

INSERT INTO municipio (sigla, nome, area, id_estado)
   SELECT 'DL', 'Veloso do Sul', '51240km2', estado.id
   FROM estado
   WHERE nome = 'Paraná'
   LIMIT 1;

INSERT INTO endereco (bairro, id, rua, cep, complemento, id_municipio)
   SELECT 'Park Acres', 506, 'Viela Margarida', 58729327, 'Apto. 115', municipio.id
   FROM municipio
   WHERE nome = 'Veloso do Sul'
   LIMIT 1;

INSERT INTO municipio (sigla, nome, area, id_estado)
   SELECT 'QO', 'Velha Natália', '88579km2', estado.id
   FROM estado
   WHERE nome = 'Rio Grande do Sul'
   LIMIT 1;

INSERT INTO endereco (bairro, id, rua, cep, complemento, id_municipio)
   SELECT 'University Heights', 17, 'Rua Pietro', 77507426, 'Sobrado 15', municipio.id
   FROM municipio
   WHERE nome = 'Velha Natália'
   LIMIT 1;

INSERT INTO zona (nome, id_municipio)
   SELECT 'Rua Thomas Rolim', municipio.id
   FROM municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO zona (nome, id_municipio)
   SELECT 'Ponte Heitor Saraiva', municipio.id
   FROM municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO zona (nome, id_municipio)
   SELECT 'Travessa João', municipio.id
   FROM municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO zona (nome, id_municipio)
   SELECT 'Rodovia Daniel Neves', municipio.id
   FROM municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO zona (nome, id_municipio)
   SELECT 'Viela Sarah da Conceição', municipio.id
   FROM municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO zona (nome, id_municipio)
   SELECT 'Viela Ígor', municipio.id
   FROM municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO zona (nome, id_municipio)
   SELECT 'Travessa Ladislau da Nóbrega', municipio.id
   FROM municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO zona (nome, id_municipio)
   SELECT 'Alameda Nathan da Fronteira', municipio.id
   FROM municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO zona (nome, id_municipio)
   SELECT 'Marginal Henrique Rios', municipio.id
   FROM municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO zona (nome, id_municipio)
   SELECT 'Alameda Maria Luiza', municipio.id
   FROM municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO zona (nome, id_municipio)
   SELECT 'Ponte Ana Lívia da Paz', municipio.id
   FROM municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO zona (nome, id_municipio)
   SELECT 'Travessa Ruan', municipio.id
   FROM municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO zona (nome, id_municipio)
   SELECT 'Viela Arthur Miguel da Gama', municipio.id
   FROM municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO zona (nome, id_municipio)
   SELECT 'Ponte José', municipio.id
   FROM municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO zona (nome, id_municipio)
   SELECT 'Marginal Valentina', municipio.id
   FROM municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO zona (nome, id_municipio)
   SELECT 'Rua Maria Clara Rolim', municipio.id
   FROM municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO zona (nome, id_municipio)
   SELECT 'Avenida Ofélia', municipio.id
   FROM municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO zona (nome, id_municipio)
   SELECT 'Rodovia Márcio', municipio.id
   FROM municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO zona (nome, id_municipio)
   SELECT 'Avenida Anthony', municipio.id
   FROM municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO zona (nome, id_municipio)
   SELECT 'Rodovia Noah', municipio.id
   FROM municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO local (nome, id_zona)
   SELECT '706 Travessa João Lucas', zona.id
   FROM zona
   ORDER BY rand()
   LIMIT 1;

INSERT INTO local (nome, id_zona)
   SELECT 's/n Rodovia Nicolas Passarinho', zona.id
   FROM zona
   ORDER BY rand()
   LIMIT 1;

INSERT INTO local (nome, id_zona)
   SELECT '6642 Alameda Benjamin', zona.id
   FROM zona
   ORDER BY rand()
   LIMIT 1;

INSERT INTO local (nome, id_zona)
   SELECT '16854 Travessa Nicole', zona.id
   FROM zona
   ORDER BY rand()
   LIMIT 1;

INSERT INTO local (nome, id_zona)
   SELECT '2782 Avenida Vitor Hugo', zona.id
   FROM zona
   ORDER BY rand()
   LIMIT 1;

INSERT INTO local (nome, id_zona)
   SELECT '677 Rodovia Davi Lucas Gomes', zona.id
   FROM zona
   ORDER BY rand()
   LIMIT 1;

INSERT INTO local (nome, id_zona)
   SELECT '130 Ponte Lorraine', zona.id
   FROM zona
   ORDER BY rand()
   LIMIT 1;

INSERT INTO local (nome, id_zona)
   SELECT '9799 Marginal Kaique Videira', zona.id
   FROM zona
   ORDER BY rand()
   LIMIT 1;

INSERT INTO local (nome, id_zona)
   SELECT '403 Alameda Heloísa da Veiga', zona.id
   FROM zona
   ORDER BY rand()
   LIMIT 1;

INSERT INTO local (nome, id_zona)
   SELECT '632 Alameda Pérola', zona.id
   FROM zona
   ORDER BY rand()
   LIMIT 1;

INSERT INTO local (nome, id_zona)
   SELECT '693 Rodovia João Pedro Teixeira', zona.id
   FROM zona
   ORDER BY rand()
   LIMIT 1;

INSERT INTO local (nome, id_zona)
   SELECT '1920 Alameda João Vitor', zona.id
   FROM zona
   ORDER BY rand()
   LIMIT 1;

INSERT INTO local (nome, id_zona)
   SELECT '30660 Rua Laís', zona.id
   FROM zona
   ORDER BY rand()
   LIMIT 1;

INSERT INTO local (nome, id_zona)
   SELECT '408 Ponte Maria Valentina do Prado', zona.id
   FROM zona
   ORDER BY rand()
   LIMIT 1;

INSERT INTO local (nome, id_zona)
   SELECT '89266 Avenida Pérola', zona.id
   FROM zona
   ORDER BY rand()
   LIMIT 1;

INSERT INTO local (nome, id_zona)
   SELECT 's/n Alameda Ricardo', zona.id
   FROM zona
   ORDER BY rand()
   LIMIT 1;

INSERT INTO local (nome, id_zona)
   SELECT '32383 Viela Malu', zona.id
   FROM zona
   ORDER BY rand()
   LIMIT 1;

INSERT INTO local (nome, id_zona)
   SELECT '355 Avenida Davi Lucca Arantes', zona.id
   FROM zona
   ORDER BY rand()
   LIMIT 1;

INSERT INTO local (nome, id_zona)
   SELECT '138 Rua Lucas', zona.id
   FROM zona
   ORDER BY rand()
   LIMIT 1;

INSERT INTO local (nome, id_zona)
   SELECT '549 Marginal Murilo Godinho', zona.id
   FROM zona
   ORDER BY rand()
   LIMIT 1;

INSERT INTO local (nome, id_zona)
   SELECT 's/n Rodovia Luan', zona.id
   FROM zona
   ORDER BY rand()
   LIMIT 1;

INSERT INTO local (nome, id_zona)
   SELECT '8439 Ponte Ryan Porteira', zona.id
   FROM zona
   ORDER BY rand()
   LIMIT 1;

INSERT INTO local (nome, id_zona)
   SELECT 's/n Marginal Dalila', zona.id
   FROM zona
   ORDER BY rand()
   LIMIT 1;

INSERT INTO local (nome, id_zona)
   SELECT '4813 Avenida Matheus', zona.id
   FROM zona
   ORDER BY rand()
   LIMIT 1;

INSERT INTO local (nome, id_zona)
   SELECT '71168 Avenida Ana Cecília Martim', zona.id
   FROM zona
   ORDER BY rand()
   LIMIT 1;

INSERT INTO local (nome, id_zona)
   SELECT '515 Avenida Mariah', zona.id
   FROM zona
   ORDER BY rand()
   LIMIT 1;

INSERT INTO local (nome, id_zona)
   SELECT '9657 Avenida Lucas Gabriel Bouças', zona.id
   FROM zona
   ORDER BY rand()
   LIMIT 1;

INSERT INTO local (nome, id_zona)
   SELECT 's/n Travessa Vinicius', zona.id
   FROM zona
   ORDER BY rand()
   LIMIT 1;

INSERT INTO local (nome, id_zona)
   SELECT 's/n Marginal Maria Helena Melo', zona.id
   FROM zona
   ORDER BY rand()
   LIMIT 1;

INSERT INTO local (nome, id_zona)
   SELECT '4800 Viela Luna Xavier', zona.id
   FROM zona
   ORDER BY rand()
   LIMIT 1;

INSERT INTO secao (nome, id_local)
   SELECT 'tnv4z3', local.id
   FROM local
   ORDER BY rand()
   LIMIT 1;

INSERT INTO secao (nome, id_local)
   SELECT 'k5gbz0', local.id
   FROM local
   ORDER BY rand()
   LIMIT 1;

INSERT INTO secao (nome, id_local)
   SELECT 'tu5i81', local.id
   FROM local
   ORDER BY rand()
   LIMIT 1;

INSERT INTO secao (nome, id_local)
   SELECT 'e285mu', local.id
   FROM local
   ORDER BY rand()
   LIMIT 1;

INSERT INTO secao (nome, id_local)
   SELECT 'bn701t', local.id
   FROM local
   ORDER BY rand()
   LIMIT 1;

INSERT INTO secao (nome, id_local)
   SELECT 't6n189', local.id
   FROM local
   ORDER BY rand()
   LIMIT 1;

INSERT INTO secao (nome, id_local)
   SELECT 'wrxn9j', local.id
   FROM local
   ORDER BY rand()
   LIMIT 1;

INSERT INTO secao (nome, id_local)
   SELECT 'tp0rcg', local.id
   FROM local
   ORDER BY rand()
   LIMIT 1;

INSERT INTO secao (nome, id_local)
   SELECT '3z076u', local.id
   FROM local
   ORDER BY rand()
   LIMIT 1;

INSERT INTO secao (nome, id_local)
   SELECT 'kiq9ny', local.id
   FROM local
   ORDER BY rand()
   LIMIT 1;

INSERT INTO secao (nome, id_local)
   SELECT 'dkiukt', local.id
   FROM local
   ORDER BY rand()
   LIMIT 1;

INSERT INTO secao (nome, id_local)
   SELECT '5qg4kh', local.id
   FROM local
   ORDER BY rand()
   LIMIT 1;

INSERT INTO secao (nome, id_local)
   SELECT 'ipr8cq', local.id
   FROM local
   ORDER BY rand()
   LIMIT 1;

INSERT INTO secao (nome, id_local)
   SELECT '06ufbk', local.id
   FROM local
   ORDER BY rand()
   LIMIT 1;

INSERT INTO secao (nome, id_local)
   SELECT 'xlqfdi', local.id
   FROM local
   ORDER BY rand()
   LIMIT 1;

INSERT INTO secao (nome, id_local)
   SELECT '73e22m', local.id
   FROM local
   ORDER BY rand()
   LIMIT 1;

INSERT INTO secao (nome, id_local)
   SELECT 'jwv00s', local.id
   FROM local
   ORDER BY rand()
   LIMIT 1;

INSERT INTO secao (nome, id_local)
   SELECT '384mbk', local.id
   FROM local
   ORDER BY rand()
   LIMIT 1;

INSERT INTO secao (nome, id_local)
   SELECT 'w8m6dl', local.id
   FROM local
   ORDER BY rand()
   LIMIT 1;

INSERT INTO secao (nome, id_local)
   SELECT '19ynzc', local.id
   FROM local
   ORDER BY rand()
   LIMIT 1;

INSERT INTO secao (nome, id_local)
   SELECT 'kupkts', local.id
   FROM local
   ORDER BY rand()
   LIMIT 1;

INSERT INTO secao (nome, id_local)
   SELECT 'p95hey', local.id
   FROM local
   ORDER BY rand()
   LIMIT 1;

INSERT INTO secao (nome, id_local)
   SELECT '4psp1p', local.id
   FROM local
   ORDER BY rand()
   LIMIT 1;

INSERT INTO secao (nome, id_local)
   SELECT '3y2h95', local.id
   FROM local
   ORDER BY rand()
   LIMIT 1;

INSERT INTO secao (nome, id_local)
   SELECT 'reigcr', local.id
   FROM local
   ORDER BY rand()
   LIMIT 1;

INSERT INTO secao (nome, id_local)
   SELECT 'dplb6l', local.id
   FROM local
   ORDER BY rand()
   LIMIT 1;

INSERT INTO secao (nome, id_local)
   SELECT 'qn73ac', local.id
   FROM local
   ORDER BY rand()
   LIMIT 1;

INSERT INTO secao (nome, id_local)
   SELECT 'no05dk', local.id
   FROM local
   ORDER BY rand()
   LIMIT 1;

INSERT INTO secao (nome, id_local)
   SELECT 'el9t4m', local.id
   FROM local
   ORDER BY rand()
   LIMIT 1;

INSERT INTO secao (nome, id_local)
   SELECT 'zgv1f5', local.id
   FROM local
   ORDER BY rand()
   LIMIT 1;

INSERT INTO secao (nome, id_local)
   SELECT 'btsk86', local.id
   FROM local
   ORDER BY rand()
   LIMIT 1;

INSERT INTO secao (nome, id_local)
   SELECT 'jnyc0a', local.id
   FROM local
   ORDER BY rand()
   LIMIT 1;

INSERT INTO secao (nome, id_local)
   SELECT '4e3tmq', local.id
   FROM local
   ORDER BY rand()
   LIMIT 1;

INSERT INTO secao (nome, id_local)
   SELECT '0mm4je', local.id
   FROM local
   ORDER BY rand()
   LIMIT 1;

INSERT INTO secao (nome, id_local)
   SELECT 'p3md9b', local.id
   FROM local
   ORDER BY rand()
   LIMIT 1;

INSERT INTO secao (nome, id_local)
   SELECT 'ovq58z', local.id
   FROM local
   ORDER BY rand()
   LIMIT 1;

INSERT INTO secao (nome, id_local)
   SELECT 'oqkloa', local.id
   FROM local
   ORDER BY rand()
   LIMIT 1;

INSERT INTO secao (nome, id_local)
   SELECT '1svoqc', local.id
   FROM local
   ORDER BY rand()
   LIMIT 1;

INSERT INTO secao (nome, id_local)
   SELECT 'qtaaua', local.id
   FROM local
   ORDER BY rand()
   LIMIT 1;

INSERT INTO secao (nome, id_local)
   SELECT 'i8b23m', local.id
   FROM local
   ORDER BY rand()
   LIMIT 1;

INSERT INTO municipio (sigla, nome, area, id_estado)
   SELECT 'GO', 'Município de Rodrigo', '8068km2', estado.id
   FROM estado
   WHERE nome = 'Rio Grande do Norte'
   LIMIT 1;

INSERT INTO endereco (bairro, id, rua, cep, complemento, id_municipio)
   SELECT 'Summer Creek', 151, 'Alameda Lorenzo Bouças', 81293437, 'Quadra 58', municipio.id
   FROM municipio
   WHERE nome = 'Município de Rodrigo'
   LIMIT 1;

INSERT INTO municipio (sigla, nome, area, id_estado)
   SELECT 'IE', 'Carvalheira do Descoberto', '97229km2', estado.id
   FROM estado
   WHERE nome = 'Sergipe'
   LIMIT 1;

INSERT INTO endereco (bairro, id, rua, cep, complemento, id_municipio)
   SELECT 'Willow Heights', 901, 'Marginal Malu Grotas', 20858240, 'Sobrado 29', municipio.id
   FROM municipio
   WHERE nome = 'Carvalheira do Descoberto'
   LIMIT 1;

INSERT INTO municipio (sigla, nome, area, id_estado)
   SELECT 'JW', 'Moreira do Norte', '56756km2', estado.id
   FROM estado
   WHERE nome = 'Bahia'
   LIMIT 1;

INSERT INTO endereco (bairro, id, rua, cep, complemento, id_municipio)
   SELECT 'Pine Acres', 382, 'Rua Giovanna', 69457598, 'Sobrado 67', municipio.id
   FROM municipio
   WHERE nome = 'Moreira do Norte'
   LIMIT 1;

INSERT INTO municipio (sigla, nome, area, id_estado)
   SELECT 'YJ', 'Nova Isabella do Descoberto', '90800km2', estado.id
   FROM estado
   WHERE nome = 'Roraima'
   LIMIT 1;

INSERT INTO endereco (bairro, id, rua, cep, complemento, id_municipio)
   SELECT 'Autumn Gardens', 471, 'Avenida Rebeca', 69845438, 'Lote 48', municipio.id
   FROM municipio
   WHERE nome = 'Nova Isabella do Descoberto'
   LIMIT 1;

INSERT INTO municipio (sigla, nome, area, id_estado)
   SELECT 'EY', 'Vila Pedro Henrique', '84938km2', estado.id
   FROM estado
   WHERE nome = 'Pernambuco'
   LIMIT 1;

INSERT INTO endereco (bairro, id, rua, cep, complemento, id_municipio)
   SELECT 'Summer Oaks', 681, 'Ponte Felícia Espinheira', 20797802, 'Lote 73', municipio.id
   FROM municipio
   WHERE nome = 'Vila Pedro Henrique'
   LIMIT 1;

INSERT INTO municipio (sigla, nome, area, id_estado)
   SELECT 'ZV', 'Vila João Miguel do Norte', '13948km2', estado.id
   FROM estado
   WHERE nome = 'Piauí'
   LIMIT 1;

INSERT INTO endereco (bairro, id, rua, cep, complemento, id_municipio)
   SELECT 'Pine Square', 624, 'Viela Fernando', 15164099, 'Sobrado 89', municipio.id
   FROM municipio
   WHERE nome = 'Vila João Miguel do Norte'
   LIMIT 1;

INSERT INTO municipio (sigla, nome, area, id_estado)
   SELECT 'NT', 'Velha Ayla', '23826km2', estado.id
   FROM estado
   WHERE nome = 'Distrito Federal'
   LIMIT 1;

INSERT INTO endereco (bairro, id, rua, cep, complemento, id_municipio)
   SELECT 'Autumn Pointe', 421, 'Rodovia Djalma Pinheira', 50108162, 'Sobrado 44', municipio.id
   FROM municipio
   WHERE nome = 'Velha Ayla'
   LIMIT 1;

INSERT INTO municipio (sigla, nome, area, id_estado)
   SELECT 'OE', 'Marins do Sul', '29890km2', estado.id
   FROM estado
   WHERE nome = 'Maranhão'
   LIMIT 1;

INSERT INTO endereco (bairro, id, rua, cep, complemento, id_municipio)
   SELECT 'Summer Pointe', 422, 'Travessa Bárbara', 10120999, 'Sobrado 19', municipio.id
   FROM municipio
   WHERE nome = 'Marins do Sul'
   LIMIT 1;

INSERT INTO municipio (sigla, nome, area, id_estado)
   SELECT 'HJ', 'Velha Margarida do Sul', '77420km2', estado.id
   FROM estado
   WHERE nome = 'Roraima'
   LIMIT 1;

INSERT INTO endereco (bairro, id, rua, cep, complemento, id_municipio)
   SELECT 'Pine Estates', 242, 'Avenida João Guilherme Aragão', 82779809, 'Quadra 30', municipio.id
   FROM municipio
   WHERE nome = 'Velha Margarida do Sul'
   LIMIT 1;

INSERT INTO municipio (sigla, nome, area, id_estado)
   SELECT 'HE', 'Marcondes do Norte', '70701km2', estado.id
   FROM estado
   WHERE nome = 'Espírito Santo'
   LIMIT 1;

INSERT INTO endereco (bairro, id, rua, cep, complemento, id_municipio)
   SELECT 'Park Creek', 642, 'Marginal Alessandra', 44520608, 'Casa 3', municipio.id
   FROM municipio
   WHERE nome = 'Marcondes do Norte'
   LIMIT 1;

INSERT INTO municipio (sigla, nome, area, id_estado)
   SELECT 'JT', 'Vila Isaac', '85141km2', estado.id
   FROM estado
   WHERE nome = 'Rio de Janeiro'
   LIMIT 1;

INSERT INTO endereco (bairro, id, rua, cep, complemento, id_municipio)
   SELECT 'Royal Heights', 626, 'Viela Francisco', 92352392, 'Lote 60', municipio.id
   FROM municipio
   WHERE nome = 'Vila Isaac'
   LIMIT 1;

INSERT INTO municipio (sigla, nome, area, id_estado)
   SELECT 'AD', 'Nova Maria do Norte', '67219km2', estado.id
   FROM estado
   WHERE nome = 'Tocantins'
   LIMIT 1;

INSERT INTO endereco (bairro, id, rua, cep, complemento, id_municipio)
   SELECT 'University Oaks', 793, 'Viela Eduardo da Costa', 45692686, 'Casa 5', municipio.id
   FROM municipio
   WHERE nome = 'Nova Maria do Norte'
   LIMIT 1;

INSERT INTO municipio (sigla, nome, area, id_estado)
   SELECT 'QV', 'Velha Breno de Nossa Senhora', '52402km2', estado.id
   FROM estado
   WHERE nome = 'Paraná'
   LIMIT 1;

INSERT INTO endereco (bairro, id, rua, cep, complemento, id_municipio)
   SELECT 'Eagle Village', 829, 'Alameda Ana Vitória', 65179880, 'Quadra 31', municipio.id
   FROM municipio
   WHERE nome = 'Velha Breno de Nossa Senhora'
   LIMIT 1;

INSERT INTO municipio (sigla, nome, area, id_estado)
   SELECT 'VM', 'Maria Laura de Nossa Senhora', '77088km2', estado.id
   FROM estado
   WHERE nome = 'Espírito Santo'
   LIMIT 1;

INSERT INTO endereco (bairro, id, rua, cep, complemento, id_municipio)
   SELECT 'Willow Gardens', 861, 'Travessa Eduarda', 75715901, 'Sobrado 83', municipio.id
   FROM municipio
   WHERE nome = 'Maria Laura de Nossa Senhora'
   LIMIT 1;

INSERT INTO municipio (sigla, nome, area, id_estado)
   SELECT 'FI', 'Quaresma do Norte', '58601km2', estado.id
   FROM estado
   WHERE nome = 'Rio Grande do Norte'
   LIMIT 1;

INSERT INTO endereco (bairro, id, rua, cep, complemento, id_municipio)
   SELECT 'Autumn Heights', 522, 'Marginal Sara Menendes', 29243831, 'Lote 13', municipio.id
   FROM municipio
   WHERE nome = 'Quaresma do Norte'
   LIMIT 1;

INSERT INTO municipio (sigla, nome, area, id_estado)
   SELECT 'VT', 'Município de Ana Júlia', '10689km2', estado.id
   FROM estado
   WHERE nome = 'Paraná'
   LIMIT 1;

INSERT INTO endereco (bairro, id, rua, cep, complemento, id_municipio)
   SELECT 'Willow Estates', 748, 'Ponte Mathias', 99243128, 'Sobrado 36', municipio.id
   FROM municipio
   WHERE nome = 'Município de Ana Júlia'
   LIMIT 1;

INSERT INTO municipio (sigla, nome, area, id_estado)
   SELECT 'RT', 'Município de Cauã', '76307km2', estado.id
   FROM estado
   WHERE nome = 'Bahia'
   LIMIT 1;

INSERT INTO endereco (bairro, id, rua, cep, complemento, id_municipio)
   SELECT 'Eagle Crossing', 713, 'Viela Maitê', 74701527, 'Casa 5', municipio.id
   FROM municipio
   WHERE nome = 'Município de Cauã'
   LIMIT 1;

INSERT INTO municipio (sigla, nome, area, id_estado)
   SELECT 'TZ', 'Grande João Lucas do Norte', '24095km2', estado.id
   FROM estado
   WHERE nome = 'Roraima'
   LIMIT 1;

INSERT INTO endereco (bairro, id, rua, cep, complemento, id_municipio)
   SELECT 'Pine Heights', 719, 'Viela Yasmin Costa', 64388907, 'Casa 8', municipio.id
   FROM municipio
   WHERE nome = 'Grande João Lucas do Norte'
   LIMIT 1;

INSERT INTO municipio (sigla, nome, area, id_estado)
   SELECT 'SY', 'Velha Kléber do Descoberto', '37237km2', estado.id
   FROM estado
   WHERE nome = 'Sergipe'
   LIMIT 1;

INSERT INTO endereco (bairro, id, rua, cep, complemento, id_municipio)
   SELECT 'Eagle Court', 881, 'Alameda Igor Viana', 32743874, 'Casa 4', municipio.id
   FROM municipio
   WHERE nome = 'Velha Kléber do Descoberto'
   LIMIT 1;

INSERT INTO municipio (sigla, nome, area, id_estado)
   SELECT 'PR', 'Velha Isabella', '93249km2', estado.id
   FROM estado
   WHERE nome = 'Roraima'
   LIMIT 1;

INSERT INTO endereco (bairro, id, rua, cep, complemento, id_municipio)
   SELECT 'Pine Place', 340, 'Avenida Ana Beatriz', 90261309, 'Lote 19', municipio.id
   FROM municipio
   WHERE nome = 'Velha Isabella'
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '93351719', 'Theo da Conceição', '1901-12-15', 'mulher', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '46819259', 'Sra. Nathan Teles', '1927-08-20', 'homem', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '18871395', 'Bárbara Esteves', '1934-11-06', 'homem', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '59240525', 'Gustavo Vieira Jr.', '1986-04-23', 'mulher', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '24742875', 'Dalila Lobos', '1940-01-12', 'homem', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '75276743', 'Ana Luiza Assumpção', '1986-04-27', 'homem', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '64763649', 'Suélen Tavares', '1960-05-31', 'homem', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '71675187', 'Bernardo do Prado Neto', '1961-07-10', 'mulher', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '53833650', 'Sarah Guterres', '1962-06-30', 'homem', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '26967622', 'Joana da Aldeia Neto', '1911-08-13', 'mulher', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '78283635', 'Maria Isis dos Reis Neto', '1995-07-13', 'homem', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '84751455', 'Gúbio Saraiva', '1908-09-19', 'homem', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '53419742', 'Davi Batista', '1912-12-15', 'homem', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '78054919', 'Dra. Davi Lucca Carvalheira', '1953-01-24', 'mulher', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '66713173', 'Pietra Campos Jr.', '1933-06-10', 'mulher', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '36167567', 'Talita Costa Filho', '1932-12-05', 'mulher', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '25284966', 'Sra. Murilo Corte', '1954-12-04', 'mulher', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '94441634', 'Guilherme Assumpção', '1956-06-17', 'mulher', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '55934038', 'Fabiano Antena', '1901-03-08', 'homem', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '16726485', 'Ana Luiza Lima', '1982-04-24', 'mulher', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '33375229', 'Erick Meira', '1928-10-01', 'mulher', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '45908625', 'Hélio Passarinho', '1916-03-09', 'mulher', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '53638033', 'Maria Sophia Bernardes', '1992-02-01', 'mulher', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '97908827', 'Elisa Pedroso', '1946-04-05', 'homem', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '27626448', 'Francisco Menendes', '1933-04-06', 'mulher', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '65508193', 'Fernando Amoreira', '1936-11-15', 'homem', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '36172285', 'Calebe Gomide Filho', '1917-11-18', 'mulher', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '57531552', 'Levi Costa', '1913-03-01', 'mulher', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '82227057', 'Luiz Caldeira', '1999-06-12', 'homem', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '25805088', 'Pérola da Conceição', '1925-02-25', 'homem', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '85980741', 'Sirineu Taveira', '1925-09-10', 'mulher', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '28388185', 'Bruno da Nóbrega', '1974-08-18', 'homem', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '63879157', 'Luiz Miguel Álvares', '1944-10-17', 'homem', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '47965387', 'Bernardo da Fronteira', '1956-06-05', 'homem', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '43522536', 'Ana Luiza Barros Neto', '1907-03-18', 'homem', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '95681605', 'Davi Lucca Aguiar', '1990-12-23', 'homem', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '78256389', 'Sr. Guilherme Ambrósio', '1968-04-25', 'homem', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '45624122', 'Felícia Ambrósio', '1978-02-02', 'homem', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '11087407', 'Pedro Lessa', '1904-07-11', 'mulher', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '40905165', 'Mirella Espinheira Filho', '1971-10-20', 'homem', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '28281737', 'Enzo Miguel da Barra Filho', '1900-12-19', 'mulher', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '44577636', 'Fernando Resende', '1905-04-14', 'homem', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '3050343', 'Heitor Campos', '1938-05-15', 'homem', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '37132580', 'Ian da Costa', '2000-04-06', 'mulher', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '55003543', 'Félix Paiva', '1934-08-04', 'homem', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '42461114', 'Gustavo Bittencourt Jr.', '1968-08-22', 'mulher', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '50488684', 'Liz Lopes', '1915-07-18', 'homem', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '35118994', 'Joaquim da Cruz', '1964-10-10', 'homem', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '50513879', 'Maria Luiza Cardoso', '1980-05-11', 'homem', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '89332570', 'Sr. Luiz Gustavo Cruz', '1944-02-12', 'homem', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '12008270', 'Emanuel Rêgo', '1909-10-02', 'homem', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '76762589', 'Matheus Nunes', '1963-09-21', 'mulher', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO candidato (id_pessoa, id_partido, id_cargo)
   SELECT eleitor.id, partido.id, 6
   FROM eleitor, partido
   WHERE eleitor.nome = 'Matheus Nunes'
   ORDER BY rand()
   LIMIT 1;

UPDATE candidato SET foto = LOAD_FILE('./fotos/aecio.jpg')
    WHERE id_pessoa = (SELECT eleitor.id
                        FROM eleitor
                        WHERE eleitor.nome = 'Matheus Nunes');

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '4319774', 'Ana Lívia Souza', '1924-10-19', 'mulher', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO candidato (id_pessoa, id_partido, id_cargo)
   SELECT eleitor.id, partido.id, 5
   FROM eleitor, partido
   WHERE eleitor.nome = 'Ana Lívia Souza'
   ORDER BY rand()
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '44282906', 'Roberta Fontinhas', '1991-07-27', 'mulher', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO candidato (id_pessoa, id_partido, id_cargo)
   SELECT eleitor.id, partido.id, 4
   FROM eleitor, partido
   WHERE eleitor.nome = 'Roberta Fontinhas'
   ORDER BY rand()
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '56379108', 'Dr. Feliciano da Bandeira', '1964-11-20', 'mulher', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO candidato (id_pessoa, id_partido, id_cargo)
   SELECT eleitor.id, partido.id, 6
   FROM eleitor, partido
   WHERE eleitor.nome = 'Dr. Feliciano da Bandeira'
   ORDER BY rand()
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '82198755', 'Daniel Coutinho Jr.', '1904-03-01', 'homem', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO candidato (id_pessoa, id_partido, id_cargo)
   SELECT eleitor.id, partido.id, 5
   FROM eleitor, partido
   WHERE eleitor.nome = 'Daniel Coutinho Jr.'
   ORDER BY rand()
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '33637007', 'Vitória Garcês Jr.', '1964-06-09', 'mulher', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO candidato (id_pessoa, id_partido, id_cargo)
   SELECT eleitor.id, partido.id, 3
   FROM eleitor, partido
   WHERE eleitor.nome = 'Vitória Garcês Jr.'
   ORDER BY rand()
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '37465139', 'Célia Martim Neto', '1983-07-31', 'homem', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO candidato (id_pessoa, id_partido, id_cargo)
   SELECT eleitor.id, partido.id, 6
   FROM eleitor, partido
   WHERE eleitor.nome = 'Célia Martim Neto'
   ORDER BY rand()
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '68667649', 'Benjamin Passarinho Neto', '1909-06-01', 'homem', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO candidato (id_pessoa, id_partido, id_cargo)
   SELECT eleitor.id, partido.id, 6
   FROM eleitor, partido
   WHERE eleitor.nome = 'Benjamin Passarinho Neto'
   ORDER BY rand()
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '14991413', 'Gabrielly Farias', '1920-12-30', 'mulher', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO candidato (id_pessoa, id_partido, id_cargo)
   SELECT eleitor.id, partido.id, 4
   FROM eleitor, partido
   WHERE eleitor.nome = 'Gabrielly Farias'
   ORDER BY rand()
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '43161573', 'Carlos Melo', '1921-11-22', 'homem', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO candidato (id_pessoa, id_partido, id_cargo)
   SELECT eleitor.id, partido.id, 5
   FROM eleitor, partido
   WHERE eleitor.nome = 'Carlos Melo'
   ORDER BY rand()
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '58218993', 'Guilherme Alves', '1941-04-28', 'mulher', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO candidato (id_pessoa, id_partido, id_cargo)
   SELECT eleitor.id, partido.id, 4
   FROM eleitor, partido
   WHERE eleitor.nome = 'Guilherme Alves'
   ORDER BY rand()
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '26740266', 'Dra. Fabrício Rezende', '1990-09-06', 'mulher', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO candidato (id_pessoa, id_partido, id_cargo)
   SELECT eleitor.id, partido.id, 3
   FROM eleitor, partido
   WHERE eleitor.nome = 'Dra. Fabrício Rezende'
   ORDER BY rand()
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '83607987', 'Dr. Maria Júlia Goulart', '1973-07-03', 'mulher', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '78771723', 'João Lucas Fontinhas', '1987-10-25', 'mulher', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO candidato (id_pessoa, id_partido, id_cargo)
   SELECT eleitor.id, partido.id, 1
   FROM eleitor, partido
   WHERE eleitor.nome = 'Dr. Maria Júlia Goulart'
   ORDER BY rand()
   LIMIT 1;

INSERT INTO candidato (id_pessoa, id_partido, id_cargo)
   SELECT eleitor.id, partido.id, 2
   FROM eleitor, partido
   WHERE eleitor.nome = 'João Lucas Fontinhas'
   ORDER BY rand()
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '17863931', 'Srta. Noah Bouças', '1947-08-17', 'mulher', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '7576104', 'Letícia Lobos', '1944-02-03', 'mulher', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO candidato (id_pessoa, id_partido, id_cargo)
   SELECT eleitor.id, partido.id, 1
   FROM eleitor, partido
   WHERE eleitor.nome = 'Srta. Noah Bouças'
   ORDER BY rand()
   LIMIT 1;

INSERT INTO candidato (id_pessoa, id_partido, id_cargo)
   SELECT eleitor.id, partido.id, 2
   FROM eleitor, partido
   WHERE eleitor.nome = 'Letícia Lobos'
   ORDER BY rand()
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '88320309', 'Enzo Gabriel Campos', '1961-12-27', 'mulher', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '38594028', 'Patricia Brum', '1900-12-07', 'mulher', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO candidato (id_pessoa, id_partido, id_cargo)
   SELECT eleitor.id, partido.id, 1
   FROM eleitor, partido
   WHERE eleitor.nome = 'Enzo Gabriel Campos'
   ORDER BY rand()
   LIMIT 1;

INSERT INTO candidato (id_pessoa, id_partido, id_cargo)
   SELECT eleitor.id, partido.id, 2
   FROM eleitor, partido
   WHERE eleitor.nome = 'Patricia Brum'
   ORDER BY rand()
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '89596182', 'Alessandro da Cruz', '1951-04-27', 'mulher', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '78525641', 'Fabrício Junqueira', '1988-08-01', 'homem', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO candidato (id_pessoa, id_partido, id_cargo)
   SELECT eleitor.id, partido.id, 1
   FROM eleitor, partido
   WHERE eleitor.nome = 'Alessandro da Cruz'
   ORDER BY rand()
   LIMIT 1;

INSERT INTO candidato (id_pessoa, id_partido, id_cargo)
   SELECT eleitor.id, partido.id, 2
   FROM eleitor, partido
   WHERE eleitor.nome = 'Fabrício Junqueira'
   ORDER BY rand()
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '98841846', 'Isabelly das Neves', '1928-08-24', 'mulher', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '62051511', 'Antonella Regueira', '1905-03-09', 'mulher', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;

INSERT INTO candidato (id_pessoa, id_partido, id_cargo)
   SELECT eleitor.id, partido.id, 1
   FROM eleitor, partido
   WHERE eleitor.nome = 'Isabelly das Neves'
   ORDER BY rand()
   LIMIT 1;

INSERT INTO candidato (id_pessoa, id_partido, id_cargo)
   SELECT eleitor.id, partido.id, 2
   FROM eleitor, partido
   WHERE eleitor.nome = 'Antonella Regueira'
   ORDER BY rand()
   LIMIT 1;


INSERT INTO urna (id_secao)
   SELECT secao.id
   FROM secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO urna (id_secao)
   SELECT secao.id
   FROM secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO urna (id_secao)
   SELECT secao.id
   FROM secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO urna (id_secao)
   SELECT secao.id
   FROM secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO urna (id_secao)
   SELECT secao.id
   FROM secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO urna (id_secao)
   SELECT secao.id
   FROM secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO urna (id_secao)
   SELECT secao.id
   FROM secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO urna (id_secao)
   SELECT secao.id
   FROM secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO urna (id_secao)
   SELECT secao.id
   FROM secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO urna (id_secao)
   SELECT secao.id
   FROM secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO urna (id_secao)
   SELECT secao.id
   FROM secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO urna (id_secao)
   SELECT secao.id
   FROM secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO urna (id_secao)
   SELECT secao.id
   FROM secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO urna (id_secao)
   SELECT secao.id
   FROM secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO urna (id_secao)
   SELECT secao.id
   FROM secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO urna (id_secao)
   SELECT secao.id
   FROM secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO urna (id_secao)
   SELECT secao.id
   FROM secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO urna (id_secao)
   SELECT secao.id
   FROM secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO urna (id_secao)
   SELECT secao.id
   FROM secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO urna (id_secao)
   SELECT secao.id
   FROM secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO urna (id_secao)
   SELECT secao.id
   FROM secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO urna (id_secao)
   SELECT secao.id
   FROM secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO urna (id_secao)
   SELECT secao.id
   FROM secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO urna (id_secao)
   SELECT secao.id
   FROM secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO urna (id_secao)
   SELECT secao.id
   FROM secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO urna (id_secao)
   SELECT secao.id
   FROM secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO urna (id_secao)
   SELECT secao.id
   FROM secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO urna (id_secao)
   SELECT secao.id
   FROM secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO urna (id_secao)
   SELECT secao.id
   FROM secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO urna (id_secao)
   SELECT secao.id
   FROM secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO urna (id_secao)
   SELECT secao.id
   FROM secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO urna (id_secao)
   SELECT secao.id
   FROM secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO urna (id_secao)
   SELECT secao.id
   FROM secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO urna (id_secao)
   SELECT secao.id
   FROM secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO urna (id_secao)
   SELECT secao.id
   FROM secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO urna (id_secao)
   SELECT secao.id
   FROM secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO urna (id_secao)
   SELECT secao.id
   FROM secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO urna (id_secao)
   SELECT secao.id
   FROM secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO urna (id_secao)
   SELECT secao.id
   FROM secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO urna (id_secao)
   SELECT secao.id
   FROM secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-11 19:24:59', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-11 18:22:39', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-14 17:25:33', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-05 17:36:41', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-03 20:34:11', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-08 19:53:48', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-12 21:41:43', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-11 20:48:46', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-06 21:20:16', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-07 18:57:30', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-14 20:05:24', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-03 20:09:33', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-15 18:35:13', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-16 17:13:20', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-12 21:44:24', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-16 18:55:56', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-12 20:41:55', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-06 20:21:15', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-05 18:57:44', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-10 21:51:05', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-11 18:49:17', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-10 18:53:53', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-11 21:39:37', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-09 21:23:18', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-14 17:42:47', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-13 18:12:36', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-12 19:57:37', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-03 17:40:22', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-08 17:56:55', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-12 17:56:12', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-03 20:35:48', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-08 19:33:00', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-07 17:35:56', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-11 19:31:44', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-15 20:54:11', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-11 19:47:33', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-14 17:25:00', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-11 20:07:03', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-09 18:02:18', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-13 19:23:10', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-15 17:38:31', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-12 19:26:43', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-08 21:55:31', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-08 21:20:25', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-10 21:47:11', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-12 20:21:59', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-13 21:29:44', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-06 18:50:59', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-09 18:40:06', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-04 18:36:42', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-13 20:47:47', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-05 21:38:44', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-04 17:12:12', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-11 21:17:49', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-07 17:34:10', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-12 19:46:56', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-04 21:24:25', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-09 18:55:41', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-16 17:33:10', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-16 18:18:45', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-11 18:07:37', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-11 19:56:18', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-04 17:33:04', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-12 19:48:03', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-09 17:52:00', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-10 17:02:47', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-12 17:26:28', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-03 18:45:25', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-15 17:31:49', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-07 18:28:57', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-03 20:52:20', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-04 18:42:15', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-13 19:16:06', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-03 19:54:18', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-12 20:08:14', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-13 18:22:48', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-13 21:28:00', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-05 20:39:59', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-05 21:21:45', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-15 20:57:42', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-13 19:03:39', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-11 19:55:54', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-06 21:00:25', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-08 18:37:13', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-07 20:00:33', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-04 18:54:45', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-14 20:06:13', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-13 20:47:44', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-11 18:23:40', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-11 19:41:51', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-07 18:48:09', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-15 19:16:15', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-12 20:09:23', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-10 19:27:29', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-12 18:55:59', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-11 18:31:06', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-14 17:53:50', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-13 19:47:01', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-11 18:35:52', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '2018-06-06 19:47:03', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;

