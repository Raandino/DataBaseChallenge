import  * as express  from 'express'
const app = express()
//const sqlConnection = require('./db')

app.get('/',async (req, res) => {
    try {
     //   const pool = await sqlConnection
       // const request = pool.request()
       // console.log(request)
       // const result = await request.query('select * from Unidad')
       // console.log(JSON.stringify(result,null, 2))
        res.send('Hello')
    } catch (error) {
        console.log(error)
        res.send(error)
   }
})
app.listen(3000, () => console.log('Server escuchando en el puerto 3000'))
console.log('ay lmao')