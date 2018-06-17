CREATE TABLE Local (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    id_local INTEGER
);

CREATE TABLE Municipio (
    sigla VARCHAR(10),
    nome VARCHAR(100),
    area VARCHAR(10),
    id_estado INTEGER,
    id INTEGER PRIMARY KEY AUTO_INCREMENT
);

CREATE TABLE Partido (
    nome VARCHAR(100),
    id INTEGER PRIMARY KEY,
    dt_criacao DATETIME,
    sigla VARCHAR(10)
);

CREATE TABLE Chapa (
    nome VARCHAR(100),
    id INTEGER PRIMARY KEY AUTO_INCREMENT
);

CREATE TABLE Candidato (
    foto BLOB,
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    id_pessoa INTEGER,
    id_partido INTEGER,
    id_cargo INTEGER,
    id_chapa INTEGER,
    UNIQUE(id_pessoa),
    FOREIGN KEY(id_partido) REFERENCES Partido (id) ON DELETE SET NULL,
    FOREIGN KEY(id_chapa) REFERENCES Chapa (id) ON DELETE SET NULL
);

CREATE TABLE Voto (
    data DATETIME,
    id_eleitor INTEGER,
    id_candidato INTEGER,
    id_urna INTEGER,
    PRIMARY KEY(id_eleitor, id_candidato),
    FOREIGN KEY(id_candidato) REFERENCES Candidato (id) ON DELETE CASCADE
);

CREATE TABLE Urna (
    id INTEGER PRIMARY KEY,
    id_secao INTEGER
);

CREATE TABLE Estado (
    nome VARCHAR(100),
    area VARCHAR(10),
    regiao VARCHAR(100),
    sigla VARCHAR(10),
    id INTEGER PRIMARY KEY
);

CREATE TABLE Empresa (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    tipo_de_empresa VARCHAR(100),
    razao_social VARCHAR(100),
    nome_fantasia VARCHAR(100),
    cnpj VARCHAR(30)
);

CREATE TABLE Endereço (
    bairro VARCHAR(100),
    id INTEGER,
    rua VARCHAR(500),
    cep INTEGER,
    complemento VARCHAR(100),
    id_municipio INTEGER,
    PRIMARY KEY(id,cep),
    FOREIGN KEY(id_municipio) REFERENCES Municipio (id) ON DELETE CASCADE
);

CREATE TABLE Zona (
    nome VARCHAR(100),
    id INTEGER PRIMARY KEY,
    id_municipio INTEGER,
    FOREIGN KEY(id_municipio) REFERENCES Municipio (id) ON DELETE CASCADE
);

CREATE TABLE Cargo (
    nome VARCHAR(100),
    id INTEGER PRIMARY KEY AUTO_INCREMENT
);

CREATE TABLE Secao (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    id_local INTEGER,
    FOREIGN KEY(id_local) REFERENCES Local (id)
);

CREATE TABLE Doacao (
    data DATETIME,
    valor DECIMAL(12,2),
    id INTEGER PRIMARY KEY,
    id_empresa INTEGER,
    id_partido INTEGER,
    FOREIGN KEY(id_empresa) REFERENCES Empresa (id),
    FOREIGN KEY(id_partido) REFERENCES Partido (id)
);

CREATE TABLE Mesario (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    id_eleitor INTEGER,
    id_secao INTEGER,
    FOREIGN KEY(id_secao) REFERENCES Secao (id),
    UNIQUE(id_eleitor)
);

CREATE TABLE Pessoa_fisica (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    titulo_eleitor BIGINT(20),
    nome VARCHAR(100),
    data_de_nasc DATETIME,
    genero VARCHAR(50),
    id_secao INTEGER,
    FOREIGN KEY(id_secao) REFERENCES Secao (id)
);

ALTER TABLE Local ADD FOREIGN KEY(id_local) REFERENCES Zona (id);
ALTER TABLE Municipio ADD FOREIGN KEY(id_estado) REFERENCES Estado (id);
ALTER TABLE Candidato ADD FOREIGN KEY(id_pessoa) REFERENCES Pessoa_fisica (id);
ALTER TABLE Candidato ADD FOREIGN KEY(id_cargo) REFERENCES Cargo (id);
ALTER TABLE Voto ADD FOREIGN KEY(id_eleitor) REFERENCES Pessoa_fisica (id);
ALTER TABLE Voto ADD FOREIGN KEY(id_urna) REFERENCES Urna (id);
ALTER TABLE Urna ADD FOREIGN KEY(id_secao) REFERENCES Secao (id);
ALTER TABLE Mesario ADD FOREIGN KEY(id_eleitor) REFERENCES Pessoa_fisica (id);