DROP PROCEDURE IF EXISTS checkSecao;

delimiter //
CREATE PROCEDURE checkSecao(tit_eleitor BIGINT(20))
BEGIN
    DECLARE MUN_SEC INT;
    DECLARE MUN_END INT;

    SELECT zona.id_municipio
    INTO MUN_SEC
    FROM eleitor, zona, local, secao
    WHERE eleitor.titulo_eleitor = tit_eleitor AND eleitor.id_secao = secao.id AND local.id = secao.id_local AND zona.id = local.id_zona;

    SELECT endereco.id_municipio
    INTO MUN_END
    FROM eleitor, endereco
    WHERE eleitor.titulo_eleitor = tit_eleitor AND eleitor.id_endereco = endereco.id AND eleitor.cep_endereco = endereco.cep;

    IF MUN_SEC = MUN_END
    THEN
        SELECT 'TRUE' AS mesmo_municipio;
    ELSE
        SELECT 'FALSE' AS mesmo_municipio;
    END IF;
END//
delimiter ;
