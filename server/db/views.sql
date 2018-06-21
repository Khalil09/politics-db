-- CREATE VIEW safe_voto AS SELECT voto.id_candidato, voto.data from voto;
CREATE VIEW safe_voto AS SELECT COUNT(voto.id_candidato) AS contador, voto.id_candidato from voto GROUP BY voto.id_candidato;
