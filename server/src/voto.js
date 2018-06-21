const connectDB = require('../lib/connectDB');

module.exports = {
  getVoto: function(req, res){
    connectDB.makeConnection((con) => {
      var q = "select eleitor.nome AS eleitor, candidato.id AS candidato, voto.data from eleitor, candidato, voto where voto.id_eleitor = " + req.param("id_eleitor") + " AND voto.id_candidato = "+ req.param("id_candidato") + " AND eleitor.id = "+ req.param("id_eleitor") +" AND candidato.id = " + req.param("id_candidato");
      con.query(q, (err, row) => {
        if (err) throw err;
        res.json(row);
      });
    }, true);
  },

  getVotoSafe: function(req, res){
    connectDB.makeConnection((con) => {
      var q = "select safe_voto.contador, eleitor.nome from candidato, safe_voto, eleitor where safe_voto.id_candidato = " + req.param("id") + " AND candidato.id = safe_voto.id_candidato AND eleitor.id = candidato.id_pessoa";
      con.query(q, (err, row) => {
        if (err) throw err;
        res.json(row);
      });
    }, true);
  },

  getAllVotos: function(req, res){
    connectDB.makeConnection((con) => {
      var q = "select candidato.id, safe_voto.data from candidato, safe_voto where candidato.id = safe_voto.id_candidato";
      con.query(q, (err, row) => {
        if (err) throw err;
        res.json(row);
      });
    }, true);
  },

  createVoto: function(req, res){
    var q = "INSERT INTO voto (data, id_eleitor, id_candidato, id_urna) VALUES (\"" +
      req.body.data + "\"," +
      req.body.id_eleitor + " , " +
      req.body.id_candidato + " , " +
      req.body.id_urna + ")";

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
    connectDB.makeConnection((con) => {
      var q = "UPDATE voto SET data = ? " +
              "WHERE voto.id_eleitor = " + req.param("id_eleitor") + " AND voto.id_candidato = " + req.param("id_candidato");
      var values = [
        req.body.data,
      ]

      con.query(q, values, (err, row) => {
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
