const express = require('express')
const bodyParser = require('body-parser')
const cors = require('cors')
const morgan = require('morgan')
const connectDB = require('../lib/connectDB');
const estados = require('./estados')

const app = express()
app.use(morgan('combined'))
app.use(bodyParser.json())
app.use(cors())

connectDB.makeConnection((con) => {
  app.get('/', (req, res, con) => {
    estados.getEstados(req, res, con);
  })
});
  app.get('/', (req, res) => {
    estados.getEstados(req, res);
  })

app.listen(process.env.PORT || 8081)
