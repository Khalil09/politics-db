#! /usr/bin/env node

const importer = require('../lib/sql-importer');
const readConfig = require('../lib/readConfig');

readConfig.read((config) => {
  importer.config({
    "host": config.config_database.host,
    "user": config.config_database.user,
    "password": config.config_database.password,
    "database": config.config_database.database
  });

  importer.importSQL('db/schema.sql').then( () => {
    console.log('\x1b[32m%s\x1b[0m', '-> All statements have been executed');
  }).catch( err => {
    console.log(`-> error: ${err}`);
  });
});