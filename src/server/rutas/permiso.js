import { Router } from 'express'

const permiso = new Router()

permiso.route("/")
    .get(async (req, res) => {

    })
    .post(async (req, res) => {

    })

permiso.route("/:id")
    .get(async (req, res) => {

    })
    .delete(async (req, res) => {

    })
    .post(async (req, res) => {

    })

export default permiso