import { Router } from 'express'

const usuario = new Router()

usuario.route("/")
    .get(async (req, res) => {

    })
    .post(async (req, res) => {

    })

usuario.route("/:id")
    .get(async (req, res) => {

    })
    .delete(async (req, res) => {

    })
    .post(async (req, res) => {

    })
    
export default usuario