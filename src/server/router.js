import { Router } from 'express'
import routerFactura from './rutas/factura'
import routerInventario from './rutas/inventario'
import routerUsuario from './rutas/usuario'
import routerPlatillo from './rutas/platillo'
import routerPermiso from './rutas/permiso'
const router = new Router()
router.use('/facturas', routerFactura)
router.user('/inventarios',routerInventario)
router.user('/usuarios',routerUsuario)
router.user('/platillos',routerPlatillo)
router.user('/permisos',routerPermiso)
export default router