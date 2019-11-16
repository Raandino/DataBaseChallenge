import express from 'express'
import router from './router'
import pool from './db'
const app = express()

app.use('/api', router)
app.get('/',async (req, res) => {
    try {
        await pool.connect()
         const request = pool.request()
       // console.log(request)
        const result = await request.query('select * from Unidad')
        console.log(JSON.stringify(result,null, 2))
        res.send('Hello')
    } catch (error) {
        console.log(error)
        res.send(error)
   }
})
app.listen(3000, () => console.log('Server escuchando en el puerto 3000'))
console.log('ay lmao')