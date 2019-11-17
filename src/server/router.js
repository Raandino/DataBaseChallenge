import { Router } from 'express'
import routerFactura from './rutas/factura'
import routerInventario from './rutas/inventario'
import routerUsuario from './rutas/usuario'
import routerPlatillo from './rutas/platillo'
import routerPermiso from './rutas/permiso'

const router = new Router()

router.use('/facturas', routerFactura)
router.use('/inventarios',routerInventario)
router.use('/usuarios',routerUsuario)
router.use('/platillos',routerPlatillo)
router.use('/permisos', routerPermiso)

export default router