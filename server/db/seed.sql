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

