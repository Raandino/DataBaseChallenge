
import mssql from'mssql'
require('dotenv').config()

const dbConfig = {
    server:  process.env.HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_NAME,
    encrypt: true
}

const pool = new mssql.ConnectionPool(dbConfig)

export default pool