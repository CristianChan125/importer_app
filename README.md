# Importer App

Aplicación en **Ruby on Rails** para importar archivos delimitados por tabs, normalizar datos y calcular ingresos totales.

---

## Requisitos

Antes de empezar, asegúrate de tener instalados:

- Ruby >= 3.1
- Rails >= 7.0
- PostgreSQL
- Bundler
- Node.js y Yarn (para activos y frontend)

---

## Instalación y configuración

1. **Clonar el repositorio**

```bash
git clone <repo>
cd importer_app


2. **Instalar dependencias**

Instalamos desde la terminal las dependencias con los comandos

bundle install
yarn install # si tu proyecto usa JavaScript/Assets

3. **Configurar la base de datos**
 Configuramos el archivo config/database.yml para conectar nuestra base de datos postgres
  default: &default
  adapter: postgresql
  encoding: unicode
  username: postgres
  password: <tu_contraseña>
  host: localhost

  development:
    <<: *default
    database: importer_app_development

4. **Crear y migrar la base de datos**
    rails db:create
    rails db:migrate
