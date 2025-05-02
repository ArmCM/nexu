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

- para cada endpoint aplicar las validaciones correspondientes en el modelo validando los tipos de datos esperados
- crear controladores que solo reciban información y retornes respuestas, separar las responsabilidades en otra clase (en caso de aplicar)
- implementar filtros mediante query string en las url de listado, aplicando tests para validar que la busqueda se comporte como se espera
- crear test feature de cada endpoint **inicio _(entrada)_** `->` `proceso` `->`  **salida**  personalmente aplico en mis proyectos el enfoque de **Sandi Metz** -> [como escribir mejores tests](https://www.youtube.com/watch?v=URSWYvyc42M&t=1820s&ab_channel=Confreaks)

## Endpoints

| Método | Ruta                | Descripción                                    | Estatus |
|--------|---------------------|------------------------------------------------|---------|
| GET    | `/brands`           | Lista todas las marcas  (index)                |         |
| POST   | `/brands`           | Crea una nueva marca    (create)               |         |
| GET    | `/models`           | Lista todos los modelos (index)                | WIP     |
| PATCH  | `/models/id`        | Actualiza un modelo     (update)               | WIP     |
| GET    | `/brands/:id/models`| Lista todos los modelos de una marca (index)   | WIP     |
| POST   | `/brands/:id/models`| agrega un nuevo modelo a una marca   (create)  | WIP     |
