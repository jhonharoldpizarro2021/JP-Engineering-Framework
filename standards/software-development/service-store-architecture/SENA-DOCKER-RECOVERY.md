# SENA Docker Recovery

## Fuente analizada

`proyecto_tps.zip`

Esta fuente se utiliza exclusivamente para recuperar patrones útiles de configuración Docker del antiguo proyecto del SENA.

No se adopta como fuente de verdad para:

- reglas de negocio;
- código Laravel;
- estructura funcional;
- versiones tecnológicas;
- credenciales;
- datos;
- paquetes PHP o JavaScript;
- arquitectura de interfaz.

## Patrones recuperados

### Dev Container

Se conserva el enfoque de:

- utilizar Docker Compose desde `.devcontainer/devcontainer.json`;
- conectar Visual Studio Code al servicio `app`;
- utilizar `/var/www/html` como espacio de trabajo;
- detener Compose al cerrar el Dev Container.

### Servicios Docker

Se conserva el concepto de servicios separados para:

- aplicación;
- base de datos;
- herramienta opcional de administración de base de datos.

Para el proyecto nuevo se amplía a:

- `app` con PHP-FPM;
- `web` con Nginx;
- `node` para Vite;
- `db` con MySQL;
- `mailpit`;
- `phpmyadmin` mediante perfil opcional;
- `redis` mediante perfil opcional.

### Volúmenes

Se recupera el uso de volúmenes nombrados para evitar reinstalaciones innecesarias y preservar datos locales:

- dependencias Composer;
- `node_modules`;
- storage de Laravel;
- caché de bootstrap;
- datos de base de datos.

### Inicialización

Se conserva la idea de automatizar:

- instalación de dependencias;
- creación de directorios;
- espera por la base de datos;
- migraciones opcionales;
- ejecución del proceso principal.

La implementación nueva no ignora errores críticos y no ejecuta seeders destructivos automáticamente.

## Elementos expresamente rechazados

### Secretos dentro de Compose

La fuente incluía claves y contraseñas directamente en `docker-compose.yml`.

Esto viola el GitIgnore Standard y el Docker Development Standard.

En la arquitectura nueva:

- los valores se cargan desde `.env`;
- `.env` nunca se versiona;
- `.env.example` solo contiene marcadores.

### Archivo `.dockerrc`

El archivo contenía identificadores concretos de contenedores locales.

No se recupera porque es específico de una máquina y no es reproducible.

### Usuario root en Dev Container

La fuente utilizaba `remoteUser: root`.

El nuevo proyecto utilizará un usuario de desarrollo no privilegiado.

### `network: host`

No se recupera porque reduce portabilidad, aislamiento y compatibilidad entre sistemas operativos.

### Versiones obsoletas

No se recuperan:

- PHP 8.0;
- Laravel 8;
- Node.js 18 como versión de referencia;
- paquetes antiguos del proyecto.

La fuente tecnológica principal exige PHP 8.2, Laravel 11, Bagisto 2.x y Node.js 20.

### Apache integrado con Node

La fuente instalaba PHP, Apache y Node en una sola imagen.

El nuevo proyecto separa responsabilidades:

- PHP-FPM en `app`;
- Nginx en `web`;
- Node/Vite en `node`.

### Migraciones y seeders ignorando errores

No se recuperan comandos como:

- `php artisan migrate --force || true`;
- `php artisan db:seed || true`.

Los errores de inicialización deberán detener el proceso y quedar visibles.

### Puerto de base de datos siempre publicado

MySQL no expondrá el puerto al host por defecto.

Solo podrá publicarse mediante un override o perfil de desarrollo documentado.

## Resultado

La configuración recuperada se adapta a las reglas actuales del JP Engineering Framework y no se copia literalmente.
