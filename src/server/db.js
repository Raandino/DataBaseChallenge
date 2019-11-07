const sql = require('mssql')
require('dotenv').config()

const dbConfig = {
    server:  process.env.HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_NAME,
    encrypt: true
}

const pool = new sql.ConnectionPool(dbConfig)
    .connect()
    .then((pool) => {
        return pool
    })

module.exports = pool 