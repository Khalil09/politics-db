var fs = require('fs');

exports.read = (callback) => {
  var config;

  fs.readFile('config/dbconfig.json', (err, data) => {
    if (err) throw err;
    config = JSON.parse(data);

    if (typeof callback === 'function') {
      return callback(config);
    }
  });
}