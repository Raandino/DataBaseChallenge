import { Router } from 'express'

const platillo = new Router()

platillo.route("/")
    .get(async (req, res) => {

    })
    .post(async (req, res) => {

    })

platillo.route("/:id")
    .get(async (req, res) => {

    })
    .delete(async (req, res) => {

    })
    .post(async (req, res) => {

    })
    
export default platillo