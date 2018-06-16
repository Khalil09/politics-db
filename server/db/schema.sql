CREATE TABLE Local (
    num_local INTEGER PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    id_local INTEGER
);

CREATE TABLE Municipio (
    sigla VARCHAR(10),
    nome VARCHAR(100),
    area VARCHAR(10),
    id_estado INTEGER,
    codigo_mun INTEGER PRIMARY KEY AUTO_INCREMENT
);

CREATE TABLE Partido (
    nome VARCHAR(100),
    num_partido INTEGER PRIMARY KEY,
    dt_criacao DATETIME,
    sigla VARCHAR(10)
);

CREATE TABLE Chapa (
    nome VARCHAR(100),
    numero INTEGER PRIMARY KEY AUTO_INCREMENT
);

CREATE TABLE Candidato (
    foto BLOB,
    numero INTEGER PRIMARY KEY AUTO_INCREMENT,
    id_pessoa BIGINT(10) UNIQUE,
    id_partido INTEGER,
    id_cargo INTEGER,
    id_chapa INTEGER,
    FOREIGN KEY(id_partido) REFERENCES Partido (num_partido) ON DELETE SET NULL,
    FOREIGN KEY(id_chapa) REFERENCES Chapa (numero) ON DELETE SET NULL
);

CREATE TABLE Voto (
    data DATETIME,
    id_eleitor BIGINT(20),
    id_candidato INTEGER,
    id_urna INTEGER,
    PRIMARY KEY(id_eleitor, id_candidato),
    FOREIGN KEY(id_candidato) REFERENCES Candidato (numero) ON DELETE CASCADE
);

CREATE TABLE Urna (
    num_serie INTEGER PRIMARY KEY,
    id_secao INTEGER
);

CREATE TABLE Estado (
    nome VARCHAR(100),
    area VARCHAR(10),
    regiao VARCHAR(100),
    sigla VARCHAR(10),
    codigo_est INTEGER PRIMARY KEY
);

CREATE TABLE Empresa (
    tipo_de_empresa VARCHAR(100),
    razao_social VARCHAR(100),
    nome_fantasia VARCHAR(100),
    cnpj VARCHAR(30) PRIMARY KEY
);

CREATE TABLE Endereço (
    bairro VARCHAR(100),
    numero INTEGER,
    rua VARCHAR(500),
    cep INTEGER,
    complemento VARCHAR(100),
    id_municipio INTEGER,
    PRIMARY KEY(numero,cep),
    FOREIGN KEY(id_municipio) REFERENCES Municipio (codigo_mun) ON DELETE CASCADE
);

CREATE TABLE Zona (
    nome VARCHAR(100),
    num_zona INTEGER PRIMARY KEY,
    id_municipio INTEGER,
    FOREIGN KEY(id_municipio) REFERENCES Municipio (codigo_mun) ON DELETE CASCADE
);

CREATE TABLE Cargo (
    nome VARCHAR(100),
    numero INTEGER PRIMARY KEY AUTO_INCREMENT
);

CREATE TABLE Secao (
    num_secao INTEGER PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    id_local INTEGER,
    FOREIGN KEY(id_local) REFERENCES Local (num_local)
);

CREATE TABLE Doacao (
    data DATETIME,
    valor DECIMAL(12,2),
    num_serie INTEGER PRIMARY KEY,
    id_empresa VARCHAR(30),
    id_partido INTEGER,
    FOREIGN KEY(id_empresa) REFERENCES Empresa (cnpj),
    FOREIGN KEY(id_partido) REFERENCES Partido (num_partido)
);

CREATE TABLE Mesario (
    titulo_do_eleitor BIGINT(10) PRIMARY KEY,
    id_secao INTEGER,
    FOREIGN KEY(id_secao) REFERENCES Secao (num_secao)
);

CREATE TABLE Pessoa_fisica (
    titulo_eleitor BIGINT(20) PRIMARY KEY,
    nome VARCHAR(100),
    data_de_nasc DATETIME,
    genero VARCHAR(50),
    id_secao INTEGER,
    FOREIGN KEY(id_secao) REFERENCES Secao (num_secao)
);

ALTER TABLE Local ADD FOREIGN KEY(id_local) REFERENCES Zona (num_zona);
ALTER TABLE Municipio ADD FOREIGN KEY(id_estado) REFERENCES Estado (codigo_est);
ALTER TABLE Candidato ADD FOREIGN KEY(id_pessoa) REFERENCES Pessoa_fisica (titulo_eleitor);
ALTER TABLE Candidato ADD FOREIGN KEY(id_cargo) REFERENCES Cargo (numero);
ALTER TABLE Voto ADD FOREIGN KEY(id_eleitor) REFERENCES Pessoa_fisica (titulo_eleitor);
ALTER TABLE Voto ADD FOREIGN KEY(id_urna) REFERENCES Urna (num_serie);
ALTER TABLE Urna ADD FOREIGN KEY(id_secao) REFERENCES Secao (num_secao);
ALTER TABLE Mesario ADD FOREIGN KEY(titulo_do_eleitor) REFERENCES Pessoa_fisica (titulo_eleitor);