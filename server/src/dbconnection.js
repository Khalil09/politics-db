var mysql = require('mysql');
var connection = mysql.createConnection({

  host:'localhost',
  user:'root',
  password:'89562389',
  database:'teste'
});
module.exports = connection;