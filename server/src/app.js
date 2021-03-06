const express = require('express')
const bodyParser = require('body-parser')
const cors = require('cors')
const morgan = require('morgan')
const indexTable = require('./indexTable')
const eleitor = require('./eleitor')
const voto = require('./voto')
const endereco = require('./endereco')
const candidato = require('./candidato')

const app = express()
app.use(morgan('combined'))
app.use(bodyParser.json())
app.use(cors())
app.use(bodyParser.urlencoded({ extended: true }));

// Eleitor CRUD
app.get('/api/eleitor/completo/:id', (req, res) => {
  eleitor.getEleitor(req, res);
})

app.post('/api/eleitor/new', (req, res) => {
  eleitor.createEleitor(req, res);
})

app.delete('/api/eleitor/:id', (req, res) => {
  eleitor.deleteEleitor(req, res);
})

app.post('/api/eleitor/update/:id', (req, res) => {
  eleitor.updateEleitor(req, res);
})

app.get('/api/eleitor/checkSecao/:titulo_eleitor', (req, res) => {
  eleitor.checkSecao(req, res);
})

app.get('/api/voto/completo/:id_eleitor/:id_candidato', (req, res) => {
  voto.getVoto(req, res);
})

app.get('/api/votoseguro/completo/:id', (req, res) => {
  voto.getVotoSafe(req, res);
})

app.post('/api/voto/new', (req, res) => {
  voto.createVoto(req, res);
})

app.delete('/api/voto/:id_eleitor/:id_candidato', (req, res) => {
  voto.deleteVoto(req, res);
})

app.post('/api/voto/update/:id_eleitor/:id_candidato', (req, res) => {
  voto.updateVoto(req, res);
})

app.get('/api/endereco/completo/:id', (req, res) => {
  endereco.getEndereco(req, res);
})

app.post('/api/endereco/new', (req, res) => {
  endereco.createEndereco(req, res);
})

app.delete('/api/endereco/:id', (req, res) => {
  endereco.deleteEndereco(req, res);
})

app.post('/api/endereco/update/:id', (req, res) => {
  endereco.updateEndereco(req, res);
})

app.get('/api/candidato/completo/:id', (req, res) => {
  candidato.getCandidato(req, res);
})

app.get('/api/candidato/all', (req, res) => {
  candidato.getAllCandidato(req, res);
})

app.post('/api/candidato/new', (req, res) => {
  candidato.createCandidato(req, res);
})

app.delete('/api/candidato/:id', (req, res) => {
  candidato.deleteCandidato(req, res);
})

app.post('/api/candidato/update/:id', (req, res) => {
  candidato.updateCandidato(req, res);
})

app.post('/api/candidato/addphoto', (req, res) => {
  candidato.addPhoto(req, res);
})

app.get('/api/candidato/sendphoto/:id', (req, res) => {
  candidato.sendPhoto(req, res);
})

app.get('/api/tables', (req, res) => {
  indexTable.getTablesName(req, res);
})

app.get('/api/votoseguro', (req, res) => {
  voto.getAllVotos(req, res);
})

app.get('/api/:table', (req, res) => {
  indexTable.getAll(req, res);
})

app.get('/api/:table/:id', (req, res) => {
  indexTable.getById(req, res);
})

app.listen(process.env.PORT || 8081);


















