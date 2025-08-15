# Huella de Carbono ESPOL

Este proyecto tiene como objetivo calcular la huella de carbono generada por cada estudiante de la Universidad de ESPOL. La aplicación está dividida en dos partes: un backend desarrollado en TypeScript y un frontend desarrollado en Dart.

## Estructura del Proyecto

```
huella-carbono-espol
├── backend
│   ├── src
│   │   ├── app.ts          # Punto de entrada del backend
│   │   └── controllers
│   │       └── estudiantes.ts # Controlador para manejar operaciones de estudiantes
│   ├── package.json        # Configuración de npm para el backend
│   ├── tsconfig.json       # Configuración de TypeScript
│   └── README.md           # Documentación del backend
├── frontend
│   ├── lib
│   │   ├── main.dart       # Punto de entrada del frontend
│   │   └── screens
│   │       └── home_screen.dart # Pantalla principal de la aplicación
│   ├── pubspec.yaml        # Configuración de Dart para el frontend
│   └── README.md           # Documentación del frontend
└── README.md               # Documentación general del proyecto
```

## Instalación

Para instalar y ejecutar el proyecto, sigue estos pasos:

### Backend

1. Navega al directorio del backend:
   ```
   cd backend
   ```

2. Instala las dependencias:
   ```
   npm install
   ```

3. Ejecuta la aplicación:
   ```
   npm start
   ```

### Frontend

1. Navega al directorio del frontend:
   ```
   cd frontend
   ```

2. Instala las dependencias:
   ```
   dart pub get
   ```

3. Ejecuta la aplicación:
   ```
   dart run
   ```

## Uso

Una vez que ambas partes de la aplicación estén en funcionamiento, podrás acceder a la interfaz del frontend para calcular y visualizar la huella de carbono de los estudiantes.

## Contribuciones

Las contribuciones son bienvenidas. Si deseas colaborar, por favor abre un issue o envía un pull request.