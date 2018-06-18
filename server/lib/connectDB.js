const readConfig = require('../lib/readConfig');
var mysql = require('mysql');

exports.makeConnection = (callback, db) => {

  readConfig.read((config) => {

    var defCon = {
      host: config.config_database.host,
      user: config.config_database.user,
      password: config.config_database.password
    }

    if(db != null){
      defCon.database = config.config_database.database;
    }

    var con = mysql.createConnection(defCon);

    con.connect(function(err) {
      if (err) {
        console.error('-> Error connecting: ' + err.stack);
        return;
      }
      console.log('-> Connection Succeed');

      if (typeof callback === 'function'){
        callback(con)
      }
    });
  });
}