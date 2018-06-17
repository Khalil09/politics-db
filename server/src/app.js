const express = require('express')
const bodyParser = require('body-parser')
const cors = require('cors')
const morgan = require('morgan')
const indexTable = require('./indexTable')

const app = express()
app.use(morgan('combined'))
app.use(bodyParser.json())
app.use(cors())

app.get('/api/tables', (req, res) => {
  indexTable.getTablesName(req, res);
})

app.get('/api/:table', (req, res) => {
  indexTable.getAll(req, res);
})

app.get('/api/:table/:id', (req, res) => {
  indexTable.getById(req, res);
})

app.listen(process.env.PORT || 8081)
