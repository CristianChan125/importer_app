# 🚀 Importer App

Aplicación en **Ruby on Rails** para **importar archivos delimitados por tabs**, normalizar datos y calcular ingresos totales.

---

## 🛠 Requisitos

Antes de empezar, asegúrate de tener instalados:

* 🐍 Ruby >= 3.1
* 🌈 Rails >= 7.0
* 🐘 PostgreSQL
* 📦 Bundler (`gem install bundler`)
* ⚡ Node.js y Yarn (para activos y frontend)

---

## ⚡ Instalación y Configuración

### 1️⃣ Clonar el repositorio

```bash
git clone <url-del-repositorio>
cd importer_app
```

### 2️⃣ Instalar dependencias

```bash
bundle install
yarn install # si el proyecto usa JavaScript/Assets
```

### 3️⃣ Configurar la base de datos

Edita `config/database.yml` para conectar con tu base de datos PostgreSQL:

```yaml
default: &default
  adapter: postgresql
  encoding: unicode
  username: postgres
  password: <tu_contraseña>
  host: localhost

development:
  <<: *default
  database: importer_app_development
```

### 4️⃣ Crear y migrar la base de datos

```bash
rails db:create
rails db:migrate
```

---

## 🚀 Uso

1. Ejecuta el servidor Rails:

```bash
rails server
```

2. Abre tu navegador en [http://localhost:3000](http://localhost:3000)
3. Sube tus archivos delimitados por tabs a través del formulario de importación
4. La aplicación procesará los datos y calculará los ingresos automáticamente ✅

---

## ✨ Contribuciones

Si quieres contribuir:

1. Haz un fork del proyecto 🍴
2. Crea tu branch:

```bash
git checkout -b feature/nueva-funcionalidad
```

3. Haz commit de tus cambios:

```bash
git commit -m "Agrega nueva funcionalidad"
```

4. Envía tu branch:

```bash
git push origin feature/nueva-funcionalidad
```

5. Abre un Pull Request 🔀

---

## 📄 Licencia

Este proyecto está bajo la licencia **MIT**.
