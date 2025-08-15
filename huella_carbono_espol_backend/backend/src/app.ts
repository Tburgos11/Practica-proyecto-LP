import express from 'express';
import bodyParser from 'body-parser';
import estudiantesRouter from './controllers/estudiantes';

const app = express();
const PORT = process.env.PORT || 3000;

// Middleware
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

// Routes
app.use('/api/estudiantes', estudiantesRouter);

// Endpoint raíz
app.get('/', (req, res) => {
    res.send('Bienvenido al API de Huella de Carbono ESPOL');
});

// Start the server
app.listen(PORT, () => {
    console.log(`Server is running on http://localhost:${PORT}`);
});