const express = require('express')
const app = express()
const sqlConnection = require('./db')

app.get('/',async (req, res) => {
    try {
        const pool = await sqlConnection
        const request = pool.request()
        console.log(request)
        const result = await request.query('select * from Ingrediente')
        console.log(result)
        res.json( result.recordset)
    } catch (error) {
        console.log(error)
        res.send(error)
   }
})
app.listen(3000, () => console.log('Server escuchando en el puerto 3000'))
console.log('ay lmao')