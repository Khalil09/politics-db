const connectDB = require('../lib/connectDB');

module.exports = {
  getVoto: function(req, res){
    connectDB.makeConnection((con) => {
      var q = "select eleitor.nome, candidato.nome, voto.data from eleitor, candidato, voto where voto.id = " + req.param("id") + " AND eleitor.id = voto.id_eleitor AND candidato.id = voto.id_candidato" + " AND endereco.id_municipio = municipio.id AND municipio.id_estado = estado.id";
      con.query(q, (err, row) => {
        if (err) throw err;
        res.json(row);
      });
    }, true);
  },

  createVoto: function(req, res){
    var q = "INSERT INTO voto (data, id_eleitor, id_candidato) VALUES (\"" +
      req.body.data + "\"," +
      req.body.id_eleitor + " , " +
      req.body.id_candidato + ")";

    console.log(q);

    connectDB.makeConnection((con) => {
      con.query(q, (err, row) => {
        if (err) {
          res.status(400);
          res.json({"error": "Houve um erro com a criação dos votos"});
          throw err;
        }
        res.status(200);
        res.json({"message": "Criado com sucesso"});
        console.log(q);
      });
    }, true);
  },

  deleteVoto: function(req, res){
    var q = "DELETE FROM voto WHERE voto.id_eleitor = " + req.param("id_eleitor") + " AND voto.id_candidato = " + req.param("id_candidato");

    connectDB.makeConnection((con) => {
      con.query(q, (err, row) => {
        if (err) {
          res.status(400);
          res.json({"error": "Houve um erro ao deletar o voto"});
          throw err;
        }
        res.status(200);
        res.json({"message": "Deletado com sucesso"});
      });
    }, true);
  },
  updateVoto: function(req, res){
    var q = "UPDATE voto SET " +
          "data = \"" + req.body.data + "\" " +
          "WHERE voto.id_eleitor = " + req.param("id_eleitor") + " AND voto.id_candidato = " + req.param("id_candidato");

    connectDB.makeConnection((con) => {
      con.query(q, (err, row) => {
        if (err) {
          res.status(400);
          res.json({"error": "Houve um erro ao atualizar o voto"});
          throw err;
        }
        res.status(200);
        res.json({"message": "Atualizado com sucesso"});
      });
    }, true);
  }

}