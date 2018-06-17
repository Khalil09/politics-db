const express = require('express')
const bodyParser = require('body-parser')
const cors = require('cors')
const morgan = require('morgan')
const indexTable = require('./indexTable')
const eleitor = require('./eleitor')

const app = express()
app.use(morgan('combined'))
app.use(bodyParser.json())
app.use(cors())
app.use(bodyParser.urlencoded({ extended: true }));

app.get('/api/tables', (req, res) => {
  indexTable.getTablesName(req, res);
})

app.get('/api/:table', (req, res) => {
  indexTable.getAll(req, res);
})

app.get('/api/:table/:id', (req, res) => {
  indexTable.getById(req, res);
})

app.get('/api/eleitor/completo/:id', (req, res) => {
  eleitor.getEleitor(req, res);
})

app.post('/api/eleitor/new', (req, res) => {
  eleitor.createEleitor(req, res);
})

app.listen(process.env.PORT || 8081)
