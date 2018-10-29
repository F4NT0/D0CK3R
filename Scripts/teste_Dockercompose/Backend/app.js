const express = require('express')
const restful = require('node-restful')
const server = express()
const mongoose = restful.mongoose
const bodyParser = require('body-parser')
const cors = require('cors')

//database
mongoose.Promise = global.Promise
mongoose.connect('mongodb://db/mydb')

//filtros necessários
server.use(bodyParser.urlencoded({extended:true}))
server.use(bodyParser.json())
server.use(cors())

//MAPEAMENTO OBJETO/DOCUMENTO DOM
const Client = restful.model('Client', {
    name: {type: String, required: true}
})

//Criação da API REST para teste, com os métodos necessários
Client.methods(['get', 'post', 'put', 'delete'])
//para rodar validadores
Client.updateOptions({new: true, runValidator: true})

//Criação das Rotas
Client.register(server,'/clients')

//iniciar server
server.listen(3000)