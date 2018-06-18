CREATE TABLE local (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    id_zona INTEGER
);

CREATE TABLE municipio (
    sigla VARCHAR(10) NOT NULL,
    nome VARCHAR(100) NOT NULL,
    area VARCHAR(10),
    id_estado INTEGER,
    id INTEGER PRIMARY KEY AUTO_INCREMENT
);

CREATE TABLE partido (
    nome VARCHAR(100) NOT NULL,
    id INTEGER PRIMARY KEY,
    dt_criacao DATE,
    sigla VARCHAR(10)
);

CREATE TABLE chapa (
    nome VARCHAR(100) NOT NULL,
    id INTEGER PRIMARY KEY AUTO_INCREMENT
);

CREATE TABLE candidato (
    foto LONGBLOB,
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    id_pessoa INTEGER NOT NULL,
    id_partido INTEGER,
    id_cargo INTEGER,
    id_chapa INTEGER,
    UNIQUE(id_pessoa),
    FOREIGN KEY(id_partido) REFERENCES partido (id) ON DELETE SET NULL,
    FOREIGN KEY(id_chapa) REFERENCES chapa (id) ON DELETE SET NULL
);

CREATE TABLE voto (
    data DATETIME,
    id_eleitor INTEGER,
    id_candidato INTEGER,
    id_urna INTEGER,
    PRIMARY KEY(id_eleitor, id_candidato),
    FOREIGN KEY(id_candidato) REFERENCES candidato (id) ON DELETE CASCADE
);

CREATE TABLE urna (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    id_secao INTEGER
);

CREATE TABLE estado (
    nome VARCHAR(100) NOT NULL,
    area VARCHAR(20),
    regiao VARCHAR(100) NOT NULL,
    sigla VARCHAR(10) NOT NULL,
    id INTEGER PRIMARY KEY
);

CREATE TABLE empresa (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    tipo_de_empresa VARCHAR(100),
    razao_social VARCHAR(100),
    nome_fantasia VARCHAR(100),
    cnpj VARCHAR(30)
);

CREATE TABLE endereco (
    bairro VARCHAR(100),
    id INTEGER,
    rua VARCHAR(500),
    cep INTEGER,
    complemento VARCHAR(100),
    id_municipio INTEGER,
    PRIMARY KEY(id,cep),
    FOREIGN KEY(id_municipio) REFERENCES municipio (id) ON DELETE CASCADE
);

CREATE TABLE zona (
    nome VARCHAR(100),
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    id_municipio INTEGER,
    FOREIGN KEY(id_municipio) REFERENCES municipio (id) ON DELETE CASCADE
);

CREATE TABLE cargo (
    nome VARCHAR(100) NOT NULL,
    id INTEGER PRIMARY KEY AUTO_INCREMENT
);

CREATE TABLE secao (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    id_local INTEGER,
    FOREIGN KEY(id_local) REFERENCES local (id)
);

CREATE TABLE doacao (
    data DATETIME,
    valor DECIMAL(12,2) NOT NULL,
    id INTEGER PRIMARY KEY,
    id_empresa INTEGER,
    id_partido INTEGER,
    FOREIGN KEY(id_empresa) REFERENCES empresa (id),
    FOREIGN KEY(id_partido) REFERENCES partido (id)
);

CREATE TABLE mesario (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    id_eleitor INTEGER,
    id_secao INTEGER,
    FOREIGN KEY(id_secao) REFERENCES secao (id),
    UNIQUE(id_eleitor)
);

CREATE TABLE eleitor (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    titulo_eleitor BIGINT(20) NOT NULL,
    nome VARCHAR(100) NOT NULL,
    data_de_nasc DATE,
    genero VARCHAR(50),
    id_secao INTEGER,
    cep_endereco INTEGER,
    id_endereco INTEGER,
    FOREIGN KEY(id_secao) REFERENCES secao (id),
    FOREIGN KEY(id_endereco, cep_endereco) REFERENCES endereco (id, cep) ON DELETE CASCADE
);

ALTER TABLE local ADD FOREIGN KEY(id_zona) REFERENCES zona (id);
ALTER TABLE municipio ADD FOREIGN KEY(id_estado) REFERENCES estado (id);
ALTER TABLE candidato ADD FOREIGN KEY(id_pessoa) REFERENCES eleitor (id) ON DELETE CASCADE;
ALTER TABLE candidato ADD FOREIGN KEY(id_cargo) REFERENCES cargo (id);
ALTER TABLE voto ADD FOREIGN KEY(id_eleitor) REFERENCES eleitor (id) ON DELETE CASCADE;
ALTER TABLE voto ADD FOREIGN KEY(id_urna) REFERENCES urna (id);
ALTER TABLE urna ADD FOREIGN KEY(id_secao) REFERENCES secao (id);
ALTER TABLE mesario ADD FOREIGN KEY(id_eleitor) REFERENCES eleitor (id);
