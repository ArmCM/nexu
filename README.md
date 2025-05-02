# Nexu API - REST

Este proyecto es una API REST desarrollada en Ruby on Rails. Permite la gestión de marcas (`brands`) y sus modelos (`models`) asociados.

## Instalación paso a paso

### 1. Clonar el repositorio

```bash
  git clone git@github.com:ArmCM/nexu.git
```
```bash
  cd nexu-api
```
### 2. Configurar base de datos

crear y modificar nombre de base de datos a usar. api_nexu

```
db/database.yml
```

### 3. Instalar gemas

```bash
  bundle install
```

### 4. Ejecutar migraciones

```bash
  rails db:migrate
```

### 5. Ejecutar seeder

```bash
  rails db:seed
```

### 6. Inicializar server

```bash
  rails s
```

### Run test

```sh
  bundle exec rspec
```

### . Requisitos

Asegúrate de tener instalado lo siguiente:

- Ruby 3.x
- Rails 7.x
- SQLite3 o Mysql

## Notas adicionales

la prueba esta incompleta, pero mi proceso sería el siguiente. 

- crear tests  para cada endpoint y poder aplicar las validaciones correspondientes en el modelo validando los tipos de datos esperados
- crear controladores que solo reciban información y retornes respuestas, separar cualquier otra lógica en otra clase _(en caso de aplicar)_ para separar responsabilidades
- crear tests para validar que la busqueda mediante query string en las url de listado se comporte como se espera al implementar los filtros
- los tests de cada endpoint seguirían el flujo **inicio _(entrada)_** `->` `proceso` `->`  **salida**  personalmente aplico este enfoque mis proyectos basado en la charla de **Sandi Metz** -> [como escribir mejores tests](https://www.youtube.com/watch?v=URSWYvyc42M&t=1820s&ab_channel=Confreaks)
- implementar autenticación por tokens en caso de ser necesario

## Endpoints

[127.0.0.1:3000/api/v1/brands](http://127.0.0.1:3000/api/v1/brands)

[127.0.0.1:3000/api/v1/models](http://127.0.0.1:3000/api/v1/models)

| Método | Ruta                | Descripción                                    | Estatus |
|--------|---------------------|------------------------------------------------|---------|
| GET    | `/brands`           | Lista todas las marcas  (index)                |         |
| POST   | `/brands`           | Crea una nueva marca    (create)               |         |
| GET    | `/models`           | Lista todos los modelos (index)                | WIP     |
| PATCH  | `/models/id`        | Actualiza un modelo     (update)               | WIP     |
| GET    | `/brands/:id/models`| Lista todos los modelos de una marca (index)   | WIP     |
| POST   | `/brands/:id/models`| agrega un nuevo modelo a una marca   (create)  | WIP     |
