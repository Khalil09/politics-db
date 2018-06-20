const fs = require('fs')
const path = require('path')

const connectDB = require('../lib/connectDB');

module.exports = {
  getAllCandidato: function(req, res){
    connectDB.makeConnection((con) => {
      var q = "SELECT eleitor.nome AS nome, partido.nome AS partido, cargo.nome AS cargo FROM eleitor, partido, cargo, candidato WHERE eleitor.id = candidato.id_pessoa AND partido.id = candidato.id_partido AND cargo.id = candidato.id_cargo";
      con.query(q, (err, row) => {
        if (err) throw err;
        res.json(row);
      });
    }, true)
  },
  getCandidato: function(req, res){
    connectDB.makeConnection((con) => {
      var q = "SELECT eleitor.nome AS nome, partido.nome AS partido, cargo.nome AS cargo FROM eleitor, partido, cargo, candidato WHERE candidato.id = " + req.param('id') + " AND eleitor.id = candidato.id_pessoa AND partido.id = candidato.id_partido AND cargo.id = candidato.id_cargo";
      con.query(q, (err, row) => {
        if (err) throw err;
        res.json(row);
      });
    }, true)
  },
  createCandidato: function(req, res){
    var q = "INSERT INTO candidato (id_pessoa, id_partido, id_cargo, id_chapa) VALUES (" +
      req.body.id_pessoa + ", " +
      req.body.id_partido + ", " +
      req.body.id_cargo + ", " +
      req.body.id_chapa + ")";

    connectDB.makeConnection((con) => {
      con.query(q, (err, row) => {
        if (err) {
          res.status(400)
          res.json({"error": "Houve um erro com a criação de candidato"})
        }
          res.status(200);
          res.json({"message": "Criado com sucesso"})
      });
    }, true)
  },

  deleteCandidato: function(req, res){
    connectDB.makeConnection((con) => {
      var q = "DELETE FROM candidato WHERE candidato.id = " + req.param("id");

      con.query(q, (err, row) => {
        if (err){
          res.status(400);
          res.json({"error": "Erro ao deletar o candidato"})
        }
        res.status(200)
        if(row.affectedRows == 0){
          res.json({"message": "Não existe tal candidato"});
        } else {
          res.json({"message": "Deletado com sucesso"});
        }
      });
    }, true)
  },

  updateCandidato: function(req, res){
    connectDB.makeConnection((con) => {
      var q = "UPDATE candidato SET id_pessoa = ?, id_partido = ?, id_cargo = ?, id_chapa = ? WHERE id = " + req.param('id');

      var values = [
        req.body.id_pessoa,
        req.body.id_partido,
        req.body.id_cargo,
        req.body.id_chapa
      ]

      con.query(q, values,(err, row) => {
        if (err){
          res.status(400);
          res.json({"error": "Não foi possível executar a atualização"})
        }
        res.status(200)
        res.json({"message": "Atualizado com sucesso"});
      });
    }, true)
  },

  addPhoto: function(req, res){
    connectDB.makeConnection((con) => {
      fs.readFile(`${process.cwd()}/db/fotos/dirceu.jpg`, (err, data) => {
        //error handle
        if (err){
          res.status(500);
          res.json({"error": "Não foi possível ler a foto"})
        }
        //get image file extension name
        let extensionName = path.extname(`${process.cwd()}/db/fotos/dirceu.png`);

        //convert image file to base64-encoded string
        let base64Image = new Buffer(data, 'binary').toString('base64');

        //combine all strings
        let imgSrcString = `data:image/${extensionName.split('.').pop()};base64,${base64Image}`;

        //send image src string into jade compiler
        var q = "UPDATE candidato SET candidato.foto = \"" + imgSrcString + "\" WHERE id = " + req.param("id");

        con.query(q, (err, row) => {
          if (err){
            res.status(400);
            res.json({"error": "Erro ao incluir foto em candidato"})
            res.json(err)
          }
          res.status(200)
          if(row.affectedRows == 0) {
            res.json({"message": "Não existe tal candidato"});
          } else {
            res.json({"message": "Foto incluida com sucesso"});
          }
        });
      })
    }, true)
  }

}
