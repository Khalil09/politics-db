#! /usr/bin/env node

var mysql = require('mysql');
var fs = require('fs');

console.log("-> Reading config file")

fs.readFile('config/dbconfig.json', (err, data) => {
    if (err) throw err;
    var config = JSON.parse(data);
    console.log("-> Configurations readed:")

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

    var createQuery = "CREATE DATABASE IF NOT EXISTS " + config.config_database.database

    con.query(createQuery, function (err, result) {
      if (err) throw err;
      console.log("-> Database created");
      console.log(config);
      con.destroy();
    })
});