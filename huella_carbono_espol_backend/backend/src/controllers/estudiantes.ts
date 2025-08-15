import { Router } from 'express';

const router = Router();

// Lógica para calcular la huella de carbono
async function calcularHuellas() {
    // Aquí se implementaría la lógica para calcular la huella de carbono
    // Por ahora, retornamos un ejemplo estático
    return [
        { estudianteId: 1, huella: 12.5 },
        { estudianteId: 2, huella: 10.3 },
        { estudianteId: 3, huella: 15.0 }
    ];
}

router.get('/', async (req, res) => {
    try {
        const huellas = await calcularHuellas();
        res.status(200).json(huellas);
    } catch (error) {
        res.status(500).json({ error: 'Error al obtener la huella de carbono' });
    }
});

export default router;