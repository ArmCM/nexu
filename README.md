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

## Endpoints

| Método | Ruta                | Descripción                                    | Estatus |
|--------|---------------------|------------------------------------------------|---------|
| GET    | `/brands`           | Lista todas las marcas                         |         |
| POST   | `/brands`           | Crea una nueva marca                           |         |
| GET    | `/models`           | Lista todos los modelos                        | WIP     |
| PATCH  | `/models/id`        | Actualiza un modelo                            | WIP     |
| GET    | `/brands/id`        | Lista todos los modelos de una marca           | WIP     |
| POST   | `/brands/id/models` | Crea un nuevo modelo (relacionado a una marca) | WIP     |


### . Requisitos

Asegúrate de tener instalado lo siguiente:

- Ruby 3.x
- Rails 7.x
- SQLite3 o Mysql

## Notas adicionales

la prueba esta incompleta, pero mi proceso sería el siguiente. 

- para cada endpoint aplicar las validaciones correspondientes en el modelo validando los tipos de datos esperados
- crear controladores que solo reciban información y retornes respuestas, separar las responsabilidades en otra clase (en caso de aplicar)
- crear test feature de cada controlador **inicio _(entrada)_** `->` `proceso` `->`  **salida**  personalmente aplico en mis proyectos en enfoque de Sandi Metz https://www.youtube.com/watch?v=URSWYvyc42M&t=1820s&ab_channel=Confreaks

