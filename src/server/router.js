import { Router } from 'express'

const router = new Router()
router.use('/api', (req, res) => {
    res.send('API')
})


export default router