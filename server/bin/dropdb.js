#! /usr/bin/env node

const readConfig = require('../lib/readConfig');
const connectDB = require('../lib/connectDB');

readConfig.read((config) => {

  console.log('\x1b[33m%s\x1b[0m', "-> Dropping database...");
  connectDB.makeConnection((con) => {
    var createQuery = "DROP DATABASE " + config.config_database.database;

    con.query(createQuery, function (err, result) {
      if (err) throw err;
      console.log('\x1b[32m%s\x1b[0m', "-> Database Dropped");
      con.destroy();
    });
  });
});
