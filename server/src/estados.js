// var db = require('./dbconnection');
//
// db.connect((err) => {
//   if (err) throw err;
//   console.log("Conectado com Sucesso")
// })

const connectDB = require('../lib/connectDB');

module.exports = {
  getEstados: function(req, res){
    connectDB.makeConnection((con) => {
      con.query("select * from Estado", (err, row) => {
        if (err) throw err;
        res.json(row);
      });
    }, true)
  }
}
