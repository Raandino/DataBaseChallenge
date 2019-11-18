import { Router } from 'express'

const inventario = new Router()

inventario.route("/")
    .get(async (req, res) => {
        
    })
    .post(async (req, res) => {

    })

inventario.route("/:id")
    .get(async (req, res) => {

    })
    .delete(async (req, res) => {
        
    })
    .post(async (req, res) => {

    }) 

export default inventario