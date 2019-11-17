import { Router } from 'express'

const factura = new Router()



factura.route("/")
    .get(async (req, res) => { //Devuelve toda las facturas con su detalle
        
    })
    .post(async(req, res) => { //Inserta una nueva factura

    })


factura.route("/:id")
    .get(async (req, res) => { // Selecciona la factura con ese Id
        
    })
    .delete(async (req, res) => {// Elimina esa factura
        
    })
    .post(async (req, res) => { //Actualiza la factura
        
    })

export default factura