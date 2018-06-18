const connectDB = require('../lib/connectDB');

module.exports = {
  getEndereco: function(req, res){
    connectDB.makeConnection((con) => {
      var q = "select endereco.*, municipio.*, estado.* where endereco.id = " + req.param("id") + " AND enedereco.id_municipio = municipio.id AND municipio.id_estado = estado.id";
      con.query(q, (err, row) => {
        if (err) throw err;
        res.json(row);
      });
    }, true);
  },

  createEndereco: function(req, res){
    var q = "INSERT INTO endereco (bairro, id, rua, cep, complemento, id_municipio) VALUES (\"" +
      req.body.bairro + "\"," +
      req.body.id + ",\"" +
      req.body.rua + "\"," +
      req.body.cep + ",\"" +
      req.body.complemento + "\"," +
      req.body.id_municipio + ")";

    console.log(q);

    connectDB.makeConnection((con) => {
      con.query(q, (err, row) => {
        if (err) {
          res.status(400);
          res.json({"error": "Houve um erro com a criação do endereco"});
          throw err;
        }
        res.status(200);
        res.json({"message": "Criado com sucesso"});
        console.log(q);
      });
    }, true);
  },

  deleteEndereco: function(req, res){
    var q = "DELETE FROM endereco WHERE endereco.id = " + req.param("id");

    connectDB.makeConnection((con) => {
      con.query(q, (err, row) => {
        if (err) {
          res.status(400);
          res.json({"error": "Houve um erro ao deletar o endereço"});
          throw err;
        }
        res.status(200);
        res.json({"message": "Deletado com sucesso"});
      });
    }, true);
  },

  updateEndereco: function(req, res){
    var q = "UPDATE endereco SET " +
          "bairro = \"" + req.body.bairro + "\", " +
          "rua = \"" + req.body.rua + "\", " +
          "complemento = \"" + req.body.complemento + "\", " +
          "id_municipio = \"" + req.body.id_municipio + "\" " +
          "WHERE id = " + req.param("id");

    connectDB.makeConnection((con) => {
      con.query(q, (err, row) => {
        if (err) {
          res.status(400);
          res.json({"error": "Houve um erro ao atualizar o endereço"});
          throw err;
        }
        res.status(200);
        res.json({"message": "Atualizado com sucesso"});
      });
    }, true);
  }

}
