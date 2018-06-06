const readConfig = require('../lib/readConfig');
var mysql = require('mysql');

exports.makeConnection = (callback) => {

  readConfig.read((config) => {

    var con = mysql.createConnection({
      host: config.config_database.host,
      user: config.config_database.user,
      password: config.config_database.password
    });

    con.connect(function(err) {
      if (err) {
        console.error('-> Error connecting: ' + err.stack);
        return;
      }
      console.log('-> Connection Succeed');
    });

    if (typeof callback === 'function'){
      callback(con)
    }
  });
}