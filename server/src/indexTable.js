const connectDB = require('../lib/connectDB');

module.exports = {
  getTablesName: function(req, res){
    connectDB.makeConnection((con) => {
      con.query("show tables", (err, row) => {
        if (err) throw err;
        res.json(row);
      });
    }, true);
  },

  getAll: function(req, res){
    connectDB.makeConnection((con) => {
      con.query("select * from " + req.param("table"), (err, row) => {
        if (err) throw err;
        res.json(row);
      });
    }, true);
  },

  getById: function(req, res){
    connectDB.makeConnection((con) => {
      con.query("select * from " + req.param("table") +
          " where id = " + req.param("id"),
      (err, row) => {
        if (err) throw err;
        res.json(row);
      });
    }, true);
  }
}
