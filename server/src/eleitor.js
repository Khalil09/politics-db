const connectDB = require('../lib/connectDB');

module.exports = {
  getEleitor: function(req, res){
    connectDB.makeConnection((con) => {
      var q = "select eleitor.*, endereco.*, municipio.nome 'municipio', estado.nome 'estado' from eleitor, endereco, municipio, estado where eleitor.id = "
              + req.param("id") + " AND eleitor.id_endereco = endereco.id"
              + " AND endereco.id_municipio = municipio.id AND municipio.id_estado = estado.id";
      con.query(q, (err, row) => {
        if (err) throw err;
        res.json(row);
      });
    }, true)
  },

  createEleitor: function(req, res){
    var q_end = "INSERT INTO endereco (bairro, id, rua, cep, complemento, id_municipio) VALUES (\"" +
      req.body.bairro + "\"," +
      req.body.id + ",\"" +
      req.body.rua + "\"," +
      req.body.cep + ",\"" +
      req.body.complemento + "\"," +
      req.body.id_municipio + ")";

    var q_elei = "INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco) VALUES (" +
      req.body.titulo_eleitor + ",\"" +
      req.body.nome + "\",\"" +
      req.body.data_de_nasc + "\",\"" +
      req.body.genero + "\"," +
      req.body.id_secao + "," +
      req.body.cep + "," +
      req.body.id + ")"

    console.log(q_end);

    connectDB.makeConnection((con) => {
      con.query(q_end, (err, row) => {
        if (err) {
          res.status(400)
          res.json({"error": "Houve um erro com os campo de enderecos"})
          throw err;
        }
        console.log(q_elei);

        con.query(q_elei, (err, row) => {
          if (err) {
            res.status(400);
            res.json({"error": "Houve um erro com os campo de usuário"})
            throw err;
          }
          res.status(200);
          res.json({"message": "Criado com sucesso"})
        });
      });
    }, true)
  }
}