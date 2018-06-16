// var db = require('./dbconnection');
//
// db.connect((err) => {
//   if (err) throw err;
//   console.log("Conectado com Sucesso")
// })

module.exports = {
  getEstados: function(req, res, con) {
    query = con.query("select * from Estado", (err, row) => {
              if (err) throw err;
              res.json(row);
            });
  }
}
