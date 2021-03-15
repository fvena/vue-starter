<!-- CABECERA DEL PROYECTO -->
<br />
<p align="right">
  ⭐ &nbsp;&nbsp;<strong>al proyecto si te ha gustado</strong> ↗️:
</p>

<p align="center">
  <a href="http://www.fvena.com">
    <p align='center'>
      <img src='https://raw.githubusercontent.com/gist/fvena/bc8ac90c951d117723075fbcc03eccf1/raw/1d53b40fef919464459f1c81fc3fdf97791d2d6f/didor_logo.svg' alt='Didor Starter - Plantilla de inicio con Vue 3 y Didor Template' width='640'/>
    </p>
  </a>

  <h2 align="center">Comienza a desarrollar tu librería Javascript en segundos</h2>
  <div align="center">Plantilla con todas las herramientas necesarias para un desarrollo y publicación rápido, robusto y con las mejores prácticas</div>
</p>

<br/>

<div align="center">

[![SemVer](https://img.shields.io/npm/v/javascript-library-starter1)]()
[![npm bundle size](https://img.shields.io/bundlephobia/min/javascript-library-starter1)]()
[![Status](https://img.shields.io/badge/status-active-success.svg)]()
[![Release](https://img.shields.io/github/workflow/status/fvena/javascript-library-starter1/Release/master)]()
[![Codecov](https://img.shields.io/codecov/c/github/fvena/javascript-library-starter1)](https://codecov.io/github/fvena/javascript-library-starter1)
[![didor](https://gist.githubusercontent.com/fvena/98e6372b6d98cfa1b357e21d8198db7c/raw/2bb398c74658f9c43cd827426ee5939e9cc330d8/didor_badge.svg)]()

</div>

<p align="center">
  <a href="#tutorial"><strong>Tutorial »</strong></a>
  <br />
  <br />
  <a href="#guia-de-inicio">Guía de Inicio</a>
  ·
  <a href="https://github.com/fvena/javascript-library-starter/issues">Reportar Error</a>
  ·
  <a href="https://github.com/fvena/javascript-library-starter/issues">Solicitar funcionalidad</a>
</p>

<br/>

<!-- TABLA DE CONTENIDOS -->
<details open="false">
  <summary><strong>Tabla de contenidos</strong></summary>
  <ol>
    <li>
      <a href="#motivación">Motivación</a>
    </li>
    <li>
      <a href="#características">Características</a>
    </li>
    <li>
      <a href="#guía-de-inicio">Guía de inicio</a>
      <ul>
        <li><a href="#instalación">Instalación</a></li>
        <li><a href="#uso">Uso</a></li>
        <li><a href="#desarrollo">Desarrollo</a></li>
        <li><a href="#publicación">Publicación</a></li>
      </ul>
    </li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#tutorial">Tutorial</a></li>
    <li><a href="#contribuciones">Contribuciones</a></li>
    <li><a href="#licencia">Licencia</a></li>
  </ol>
</details>

<!-- EL PROYECTO -->

## Motivación

- 🏎 Poder iniciar un proyecto rápidamente.
- ⚡️ Enfocar todo el tiempo y energía en desarrollar la librería.
- 👍 Forzar buenas prácticas.
- 🚀 Publicarla y compartirla.

## Características

Esta plantilla tiene pre-configuradas varias herramientas que te permitirán un desarrollo más rápido, robusto y de mayor calidad:

- [babel](https://babeljs.io) - Javascrit a la última
- [rollup](https://rollupjs.org) - Compila tu librería para compartirla
- [eslint](https://eslint.org) - Encuentra y corrige errores en tu código
- [eslint airbnb](https://github.com/airbnb/javascript) - Sigue una de las guías de estilo más populares
- [prettier](https://prettier.io) - Formatea tu código con las mejores prácticas
- [commitizen](http://commitizen.github.io/cz-cli/) - Estandariza tus mensajes Commit en Git
- [husky](https://typicode.github.io/husky/#/) - Mejora la calidad de tus commits automatizando tareas
- [lint-staged](https://github.com/okonet/lint-staged) - Ejecuta tus linters sobre los archivos que vas a comitear
- [commitlint](https://commitlint.js.org/#/) - Confirma que tus mensajes commit se ajustan a un estandar
- [semantic-release](https://semantic-release.gitbook.io/semantic-release/) - Gestión de versiones y publicación de paquetes totalmente automatizada
- [jest](https://jestjs.io) - Potente framework para realizar test
- [didor-docs]() - Documenta tu código con estilo rapidamente
- [plantillas github]() - Plantillas para reportar errores, mejoras, pull request, licencias, ... en Github
- [readme]() - Completa plantilla con las mejores prácticas
- [VSCode Workspace]() - Espacio de trabajo preconfigurado para VSCode

<!-- GUÍA DE INICIO -->

## Guía de inicio

### Instalación

1. Descarga el repositorio

   ```sh
   git clone https://github.com/fvena/javascript-library-starter.git <NOMBRE_DE_TU_PROYECTO>
   ```

2. Instala las dependencias y configura el proyecto

   ```sh
   cd <NOMBRE_DE_TU_PROYECTO>
   npm install
   ```

3. Comienza a desarrollar

> **Nota**: Como verás se ejecuta un script `post-install` que configura tus datos el proyecto y te limpia git para que partas con un repositorio limpio.

### Checklist

Cuando utilices esta plantilla, trata de realizar las siguientes tareas para configurarla con los datos de tu proyecto.

- [] Modifica los campos nombre, descripción y autor del proyecto en el package.json
- [] Inicializa la versión del proyecto en el package.json con la `0.0.0-dev`.
- [] Actualiza las rutas de tu repositorio, homepage y bugs de tu repositorio.
- [] Cambia el nombre del autor en el archivo LICENSE
- [] Sustituye este README.md por la plantilla en blanco README_TEMPLATE.md
- [] Elimina el archivo CHANGELOG.json

Disfruta :)

<!-- EJEMPLOS DE USO -->

### Uso

- `npm run dev`: Levanta una página de prueba en [http://localhost:3000](http://localhost:3000)
- `npm run dev`: Ejecuta nuestra librería con nodemon
- `npm run test`: Ejecuta los test una vez
- `npm run test:watch`: Ejecuta los test y vigila los cambios
- `npm run docs`: Levanta una página con la documentación
- `npm run build`: Compila la librería

### Desarrollo

La plantilla está preparada para publicar una nueva versión cada vez que modificas la rama `master` de tu repositorio, ya sea subiendo los cambios directamente o haciendo un `pull request`.

Mi consejo es que siempre trabajes en una rama `dev` y cuando quieras lanzar una nueva versión hagas un `pull-request` a la master directamente desde github. Es más, si quieres otro consejo, elimina tu rama `master` local.

```sh
# Crea y salta a una rama dev
git checkout -b dev

# Elimina la rama master
git branch -D master

# Sube los cambios a tu rama dev
git push
```

### Publicación

_**Requisito previo**: Necesitas tener cuenta en NPM_

Para publicar tu librería solo tienes que subir los cambios a tu rama `master` o hacer un `pull-request` desde github y automáticamente se realizarán las siguientes acciones:

- [x] Genera un número de versión que cumple el estándar SemVer.
- [x] Crear/Actualizar el archivo CHANGELOG.md con los cambios de la versión.
- [x] Compilar la librería
- [x] Publicar la librería en NPM y Github, añadiendo las notas con los cambios de la versión.
- [x] Generar y publicar tu documentación en GitPages

<!-- ROADMAP -->

## Roadmap

- [x] Configurar semantic-release y las acciones de github
- [x] Configurar test con `jest`, `coverage` y añadirlo a Git Actions
- [x] Añadir plantillas README.md, errores y pull-request de Git Hub
- [x] Completar el archivo README.md indicando como personalizar y utilizar la plantilla
- [x] Configurar herramientas para documentar el proyecto, y publicarla automáticamente con Git Actions
- [x] Documentar un flujo recomendado para utilizar GIT
- [x] Configurar `dependentabot` para comprobar si hay versiones nuevas de alguna librería que utilice el proyecto
- [x] Añadir licencia.
- [ ] Configurar el proyecto como plantilla
- [x] Modificar el código de ejemplo en la carpeta src
- [x] Añadir badgets
- [ ] Ejemplo para desarrollar para Node
- [ ] Ejemplo para desarrollar para el Navegador
- [ ] Añadir [script post-install](https://github.com/cklwblove/javascript-library-starter), [Opción sin librerías](https://github.com/lykmapipo/iso-lib-starter)

### Tutorial

Si quieres aprender más sobre las herramientas que utilizo en esta plantilla y como configurarlas, te recomiendo que sigas este tutorial donde explico paso a paso como he creado esta plantilla.

- [ ] Añadir imágenes (capturas)
- [ ] Añadir videos de algunos flujos
- [ ] Publicar el tutorial

<!-- CONTRIBUIDORES -->

## Contribuciones

Este proyecto es y será siempre de código abierto. Eres bienvenido si quieres contribuir a su desarrollo y mejorarlo cada vez más. Para ello, tienes varias posibilidades:

- [Remitiendo errores](.github/contributing.md#remitiendo-errores)
- [Solucionando errores](.github/contributing.md#solucionando-errores)
- [Añadiendo nueva funcionalidad](.github/contributing.md#añadiendo-nueva-funcionalidad)
- [Compartiendo en redes sociales](.github/contributing.md#compartiendo-en-redes-sociales-%EF%B8%8F)
- [Convirtiéndote en un colaborador oficial](.github/contributing.md#conviértete-en-un-colaborador-oficial)
- [Haciendo una pequeña donación](.github/contributing.md#haciendo-una-pequeña-donación)

<!-- LICENCIA -->

## Licencia

El código está disponible bajo la licencia MIT. Esto significa que puedes usarlo, modificarlo o hacer lo que quieras con él. Esto también significa que lo ofrezco de forma gratuita, así que si encuentras algún error no lo critiques, contribuye al proyecto y repórtalo o mejor aún, solucionalo, será un placer añadirte como colaborador.

<!-- CONTACTO -->

## Contacto

**<>** con ♥️ por [Francisco Vena](https://twitter.com/fvena)
